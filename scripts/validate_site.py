#!/usr/bin/env python3
"""Validate the generated academic site.

Run after `bundle exec jekyll build`.
"""

from __future__ import annotations

import json
import re
import sys
from html.parser import HTMLParser
from pathlib import Path
from urllib.parse import urldefrag


ROOT = Path(__file__).resolve().parents[1]
SITE = ROOT / "_site"
DIGEST_COUNT = 20
BANNED_TEXT = [
    "ACM TOIS",
    "Mitigating Popularity Bias",
    "Source: Google Scholar profile snapshot",
    "Recent citation metrics since 2021",
    "ICSOC 2025",
]


class ValidationError(Exception):
    pass


class LinkParser(HTMLParser):
    def __init__(self) -> None:
        super().__init__()
        self.links: list[str] = []

    def handle_starttag(self, tag: str, attrs: list[tuple[str, str | None]]) -> None:
        if tag != "a":
            return
        href = dict(attrs).get("href")
        if href:
            self.links.append(href)


class DigestLinkParser(HTMLParser):
    def __init__(self) -> None:
        super().__init__()
        self.links: list[str] = []
        self._in_script = False

    def handle_starttag(self, tag: str, attrs: list[tuple[str, str | None]]) -> None:
        if tag == "script":
            self._in_script = True
            return
        if tag != "a" or self._in_script:
            return
        values = dict(attrs)
        if "pub-link--digest" in values.get("class", ""):
            href = values.get("href")
            if href:
                self.links.append(href)

    def handle_endtag(self, tag: str) -> None:
        if tag == "script":
            self._in_script = False


def require(condition: bool, message: str) -> None:
    if not condition:
        raise ValidationError(message)


def load_json(path: Path):
    with path.open(encoding="utf-8") as handle:
        return json.load(handle)


def read(path: Path) -> str:
    return path.read_text(encoding="utf-8", errors="ignore")


def validate_source_data() -> tuple[list[dict], dict[str, dict]]:
    research = load_json(ROOT / "_data" / "research.json")
    digests = load_json(ROOT / "_data" / "digests.json")
    publications = research["publications"]
    digest_map = {item["id"]: item for item in digests}

    require(len(publications) == DIGEST_COUNT, f"expected {DIGEST_COUNT} publications")
    require(len({pub["id"] for pub in publications}) == len(publications), "publication ids must be unique")
    require(len(digest_map) == len(digests), "digest ids must be unique")

    for pub in publications:
        pub_id = pub["id"]
        digest_url = pub.get("digestUrl")
        require(digest_url, f"{pub_id} missing digestUrl")
        require(pub_id in digest_map, f"{pub_id} missing _data/digests.json entry")
        digest_path = ROOT / f"{digest_url.strip('/')}.md"
        require(digest_path.exists(), f"{pub_id} digest page missing at {digest_path}")
        page = read(digest_path)
        require("layout: digest" in page, f"{digest_path} must use layout: digest")
        require(f"digest_id: {pub_id}" in page, f"{digest_path} digest_id mismatch")
        require("<style" not in page.lower(), f"{digest_path} should not include inline style")

    permalink_map: dict[str, Path] = {}
    for md in ROOT.glob("*.md"):
        match = re.search(r"^permalink:\s*(\S+)\s*$", read(md), flags=re.MULTILINE)
        if not match:
            continue
        permalink = match.group(1)
        if permalink in permalink_map:
            raise ValidationError(f"duplicate permalink {permalink}: {md} and {permalink_map[permalink]}")
        permalink_map[permalink] = md

    kg_source = read(ROOT / "api" / "knowledge-graph.json")
    require('site.data["knowledge-graph"]' not in kg_source, "knowledge graph endpoint must be data-driven")
    require((ROOT / "api" / "publications.json").exists(), "missing /api/publications.json source")

    return publications, digest_map


def validate_banned_text() -> None:
    targets = [
        ROOT / "_data" / "research.json",
        ROOT / "publications.md",
        ROOT / "faq" / "index.md",
        ROOT / "llms.txt",
        ROOT / "api" / "research.json",
        ROOT / "api" / "publications.json",
        ROOT / "api" / "knowledge-graph.json",
    ]
    if SITE.exists():
        targets.extend(
            [
                SITE / "publications.html",
                SITE / "api" / "research.json",
                SITE / "api" / "publications.json",
                SITE / "api" / "knowledge-graph.json",
                SITE / "llms.txt",
            ]
        )
    for path in targets:
        if not path.exists():
            continue
        text = read(path)
        for banned in BANNED_TEXT:
            require(banned not in text, f"banned text {banned!r} found in {path}")


def validate_generated(publications: list[dict]) -> None:
    require(SITE.exists(), "_site missing; run bundle exec jekyll build first")

    research_api = load_json(SITE / "api" / "research.json")
    publications_api = load_json(SITE / "api" / "publications.json")
    knowledge_graph = load_json(SITE / "api" / "knowledge-graph.json")

    require(len(research_api["publications"]) == len(publications), "research API publication count mismatch")
    require(publications_api["count"] == len(publications), "publications API count mismatch")
    require(len(publications_api["publications"]) == len(publications), "publications API records mismatch")

    kg_text = json.dumps(knowledge_graph, ensure_ascii=False)
    for pub in publications:
        require(f"/publication/{pub['id']}" in kg_text, f"knowledge graph missing {pub['id']}")

    publications_html = read(SITE / "publications.html")
    parser = DigestLinkParser()
    parser.feed(publications_html)
    require(len(parser.links) == len(publications), "publication page digest link count mismatch")
    require(len(set(parser.links)) == len(publications), "publication page digest links must be unique")

    for pub in publications:
        expected = pub["digestUrl"]
        require(expected in parser.links, f"publication page missing digest link {expected}")

    for html in SITE.rglob("*.html"):
        text = read(html)
        for block in re.findall(r'<script type="application/ld\+json">(.*?)</script>', text, flags=re.S):
            json.loads(block)

    missing_links: list[tuple[str, str, str]] = []
    checked = 0
    for html in SITE.rglob("*.html"):
        parser = LinkParser()
        parser.feed(read(html))
        for href in parser.links:
            if href.startswith(("http://", "https://", "mailto:", "javascript:", "#")):
                continue
            path, _ = urldefrag(href)
            if not path or path.startswith("//"):
                continue
            checked += 1
            if path.endswith("/"):
                target = SITE / path.lstrip("/") / "index.html"
            elif Path(path).suffix:
                target = SITE / path.lstrip("/")
            else:
                target = SITE / path.lstrip("/") / "index.html"
                if not target.exists():
                    target = SITE / f"{path.lstrip('/')}.html"
            if not target.exists():
                missing_links.append((str(html), href, str(target)))
    require(not missing_links, f"missing internal links: {missing_links[:10]}")
    print(f"checked internal links: {checked}")


def main() -> int:
    try:
        publications, _ = validate_source_data()
        validate_banned_text()
        validate_generated(publications)
    except ValidationError as exc:
        print(f"validation failed: {exc}", file=sys.stderr)
        return 1
    except json.JSONDecodeError as exc:
        print(f"invalid json: {exc}", file=sys.stderr)
        return 1
    print("site validation ok")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
