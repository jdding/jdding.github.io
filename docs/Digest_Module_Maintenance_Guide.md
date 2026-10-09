# Publication Data & Digest Module — Maintenance Guide

> Updated: 2026-10-02 | Maintainer: Jiandong Ding

## 1. How the module works

All publication content lives in ONE data file: `_data/publications.yml`. There are no per-paper content pages to edit — each Digest page is a thin shell in the repo root (e.g. `deltagate.md`) whose front matter only sets `permalink`, `publication_id`, and `description`. The shared include `_includes/paper-digest.html` renders everything else.

One entry drives every surface:

| Surface | Rendered from |
|---|---|
| Homepage recent list + selected cards | `index.md` (reads `publications.yml`) |
| Homepage news items | `index.md`, hand-written dated entries — update manually; they are not derived from `publications.yml` |
| Full publications list | `publications.md` |
| Digest page body | `_includes/paper-digest.html` via the shell page |
| Topic pages | `_includes/research-topic.html` |
| `citation_*` meta tags | `_includes/head/custom.html` |
| Digest JSON-LD | `_includes/paper-digest.html` |
| `/api/publications.json`, `/api/knowledge-graph.json` | Jekyll data rendering at build time |

Derived values you must NOT hardcode anywhere: paper counts (FAQ, Summary), author lists in metadata, date/year displays (`venue_year | default: year`), author arrays in the API graph.

## 2. Field reference (`_data/publications.yml`)

- `id` — stable entity ID and digest shell filename. Never rename an existing `permalink`.
- `title`, `authors` — authors are one comma-separated string of FULL names in the published order; every metadata surface derives from it. Do not add a second author list.
- `year` — grouping year (Full list sections, machine-readable records). `venue_year` — conference year when it differs from the proceedings year (e.g. ICSOC '24 conference, 2025 proceedings).
- `venue_type: journal` — venue renders as full name (abbreviation), no year; conferences render as `venue_short year`. Accepted is expressed via `selected_label` containing "(Accepted)", never by changing the venue string.
- `publication_date` — set ONLY when verified: the arXiv posting date for preprints, or the registered proceedings date. Do not use an arXiv date as a formal conference publication date.
- `acceptance_date` — the date acceptance was received, for entries whose acceptance is the latest event and which have no public version dated after it (e.g. a journal paper under review-publication). Record-keeping; it does not enter the News/Recent date ordering, and machine publication dates stay omitted for these entries. Replace with `publication_date` once the formal version is live.
- `paper_url` / `paper_label` — the reading entry. The label must match the target: real PDF → "PDF", arXiv abstract → "arXiv", publisher landing page → "Publisher", DOI → "DOI". Verify what the URL actually serves before labeling.
- `doi_url` — publisher or DataCite DOI only; add after confirming it resolves. CIKM 2026 proceedings DOIs are NOT yet registered — the TDG DOI (`10.1145/3799682.3839876`) is forthcoming, and the SIDInspector DOI (`10.1145/3799682.3840174`) should be added once it resolves.
- `digest_blocks` — list of `{title, text}` rendered as the digest body. Ground every claim in public evidence; state data/conditions; never present offline results as verified online gains.
- `image` / `card_image` / `image_webp` / `digest_image` — homepage card and digest visuals. Use WebP variants for large graphics (`-card.webp` ≈ 800px for cards, `.webp` ≈ 1600px for digest bodies) and keep the original in the repo.
- `selected: true` — homepage Selected papers. Exactly 6 members; changes require the site owner's decision.

## 3. SOP: add or update a paper

1. Add or modify the entry in `_data/publications.yml` — full author names, verified links, correct status.
2. Create the digest shell `[id].md` in the repo root (`permalink`, `publication_id`, `description`); the template does the rest.
3. Write `digest_blocks`: problem → approach → evidence (with data, baselines, conditions) → takeaway. If there is no public result, say less rather than fill.
4. `bundle exec jekyll build`, then check the RENDERED HTML — list row, digest page, `citation_*` tags, JSON-LD — not just the YAML diff.
5. Checklist: title ✓ authors and order ✓ status ✓ reading links and labels ✓ year / `venue_year` ✓ counts ✓ selected members untouched ✓ `/api/knowledge-graph.json` ✓ sitemap contains the page ✓.
6. Release through the staged process in the README: local build + diff → push → Pages build → live HTTP → Search Console. No step substitutes for the next.

## 4. Known pending items

- CIKM 2026 proceedings DOIs pending registration (see field reference).
- `_data/knowledge-graph.json` (manual FOAF copy) is retained until external consumers are confirmed; the live graph is `/api/knowledge-graph.json`.
- Search Console sitemap status should read "Success" after the resubmission; track the key-URL indexing list separately.
