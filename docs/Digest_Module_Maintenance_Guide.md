# Publication Data & Digest Module — Maintenance Guide

Updated: 2026-10-28

## Data ownership

- `_data/publications.yml` owns paper facts, status, version dates, ordered author text, contribution summaries, resources, Digest bodies, sources, and explicit connected-work links.
- `_data/research_programs.yml` owns the two research questions and representative paper IDs. The homepage reads the representative contributions from the paper records.
- `_data/research_trajectory.yml` connects public work into research strands. It is an editorial interpretation, not a claim that every paper is a descendant of one algorithm.
- `_data/news.yml` owns dated events, each with a paper ID and a type. Paper status today must not rewrite the meaning of a historical event.
- `_data/open_source.yml` owns resource-specific descriptions. The homepage resolves its program through publication_id; the validator checks the retained program field for consistency.

The homepage order is identity → research questions/contributions → six selected papers → three compact updates → research connections → contact. More papers and repositories are available inside each program's disclosure. The old `/#recent-publications` anchor still reaches updates.

The root paper Markdown files are stable route shells. Keep their existing permalinks.

## Status and date contract

| Field | Meaning |
|---|---|
| status | preprint, accepted, or published; requires evidence |
| year | Bibliographic grouping year; not evidence of an exact publication date |
| venue_year | Conference year when different from the proceedings citation year |
| preprint_date | First public preprint date |
| acceptance_date | Verified acceptance date; independent of public availability |
| published_date | Verified formal/first-online publication date |
| news.type + news.date | A specific event matching the corresponding date field |

Do not use the former ambiguous `publication_date` field. An accepted paper may have a preprint date without a formal publication date.

`published_date` preserves source precision: use `YYYY-MM-DD` when the publisher gives a day, or `YYYY-MM` when only a month is supplied. Never invent the first day of a month. DOI registration dates are not publication dates. Once a formal reading URL is verified, prefer it over arXiv for `paper_url`.

`publication-date.html` supplies one policy to citation tags, Digest JSON-LD, list microdata, and the graph API:

- Published: published_date, falling back to the bibliographic year when no exact date is known.
- Preprint: preprint_date, falling back to its year.
- Accepted: omit datePublished/citation_publication_date, even when a preprint exists. The human page and raw JSON still expose its explicitly labeled preprint/acceptance dates.

Journal venue labels use full name (abbreviation), with no appended year. Conferences use abbreviation + venue_year/year. `publication-status.html` adds Accepted or Preprint separately. Do not encode state in selected_label or a venue name.

BIS intentionally retains proceedings grouping year 2025 and conference year 2024; its publisher gives first-online date 2024-12-07. These fields answer different questions.

## Research content

- `program`: one current primary research line. Historical foundations and serving systems need not be forced into it.
- `representative_publication_ids`: a small set per program, independent of Selected papers.
- `contribution`: problem, mechanism, evidence, boundary; each is grounded in the public work. These describe the paper, not an inferred personal role.
- `related_work`: publication_id and a short relationship explaining complementarity or extension. Do not substitute arbitrary same-topic neighbors.
- `digest_blocks`: ordered title/text blocks; show the research explanation before bibliographic details.
- `digest_sources`: primary URLs plus version/section labels for new or substantially revised Digests.
- A page without digest_blocks is labeled **Paper record**, not Digest. Keep its existing URL.

Do not infer personal leadership or contribution allocation from author order. No private project, submission status, unpublished method, or internal metric should enter these files.

## Resource links and images

`publication-links.html` keeps action labels consistent and avoids an identical Paper/DOI URL appearing twice. Actual PDF URLs use PDF; arXiv abstract pages use arXiv; publisher pages use Publisher or DOI.

Preserve the six selected IDs: igpo-ai-search, deltagate, hpgr, invariant-feature-learning, rpe4rec, pd-serve. Membership changes require the owner's decision.

Keep the existing chosen graphics. Large images use their WebP variants; Digest figures link to the full-size original. Images supplement text rather than carry the only explanation.

## Update and release

1. Update the canonical paper data and its source/version evidence.
2. Add current-line and connected-work associations where meaningful. Check sources before writing claims.
3. Add a news event only for a verified date and event type.
4. Build with `bundle exec jekyll build`.
5. Run `bundle exec ruby scripts/verify_site.rb _site`. It checks source and rendered status/date consistency, representative associations, the selected set, content ordering, JSON, canonical, and internal links/fragments.
6. Inspect desktop plus 320/375/414/768px. Check menu, program disclosures, long titles, and a representative Digest.
7. Inspect the diff, commit, push, verify the Pages workflow, and read back changed online pages. Local success does not replace deployed verification.
8. Search Console indexing is a separate check; a successful build does not prove indexing.

## Retained compatibility and pending material

The old manual `_data/knowledge-graph.json` copy remains pending an external-consumer audit; the live graph is `/api/knowledge-graph.json`. Do not use the manual copy to update website facts.

Eleven historical paper records still lack extended Digest bodies after the four priority additions. They are labeled honestly and can be expanded from primary evidence later. Personal role descriptions remain absent until the author supplies or confirms them.

CIKM DOI availability must be checked against current publisher records before changing status or removing an identifier; an old pending-registration note is not current verification.
