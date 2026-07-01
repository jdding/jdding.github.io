# Paper Digest & Highlights Module - Maintenance Guide

> Last updated: 2026-07-02 | Maintainer: Jiandong Ding

---

## 1. Overview

This module encompasses two core upgrades to the personal academic homepage (jdding.github.io):

### a) Paper Digest Pages

Replaced traditional bare PDF links with Digest pages for all 20 Google Scholar aligned publication records. Each page is now a small front-matter entry using `_layouts/digest.html`; page copy lives in `_data/digests.json`, and publication metadata lives in `_data/research.json`.

**Current coverage (20 papers):**

| File | Venue | Permalink |
|---|---|---|
| `skillresolve-bench.md` | arXiv 2026 | `/skillresolve-bench` |
| `sidinspector.md` | arXiv 2026 | `/sidinspector` |
| `hpgr.md` | WWW 2026 | `/hpgr` |
| `aaai-difl.md` | AAAI 2026 | `/aaai-difl` |
| `rpe4rec.md` | WSDM 2026 | `/rpe4rec` |
| `dygraph.md` | arXiv 2025 | `/dygraph` |
| `bis-nl2sql.md` | ICSOC 2024 | `/bis-nl2sql` |
| `kdd-ctr.md` | KDD 2024 | `/kdd-ctr` |
| `pd-serve.md` | arXiv 2024 | `/pd-serve` |
| `acl-topic.md` | ACL 2023 | `/acl-topic` |
| `continual-gcn.md` | AAAI 2023 | `/continual-gcn` |
| `naacl-epida.md` | NAACL 2022 | `/naacl-epida` |
| `neurips-dpssl.md` | NeurIPS 2021 | `/neurips-dpssl` |
| `emnlp-keygraph.md` | EMNLP 2021 | `/emnlp-keygraph` |
| `ai-assistance-live-streaming.md` | ICIS 2021 | `/ai-assistance-live-streaming` |
| `sales-data-live-streaming.md` | ICIS 2021 | `/sales-data-live-streaming` |
| `large-scale-mirna-clustering.md` | BMC Genomics 2012 | `/large-scale-mirna-clustering` |
| `finding-microrna-targets-plants.md` | GPB 2012 | `/finding-microrna-targets-plants` |
| `genome-wide-mirna-target-interactions.md` | BMC Genomics 2012 | `/genome-wide-mirna-target-interactions` |
| `imirtp.md` | BIBM 2011 | `/imirtp` |

### b) Highlights Infographic Upgrade

The `index.md` Research Highlights section's paper thumbnails have been fully replaced with **AI-generated high-resolution infographics** (produced via NotebookLM). These are stored as descriptive-name PNGs under `assets/images/`.

| Paper | Image File |
|---|---|
| WWW 2026 HPGR | `Beyond-the-Flat-Sequence.png` |
| AAAI 2026 DIFL | `Invariant-Feature-Learning.png` |
| WSDM 2026 RPE4Rec | `RPE4Rec.png` |
| KDD 2024 CTR | `Unified-Low-rank-Compression.png` |
| ICSOC 2024 BIS | `BIS-NL2SQL.png` |
| NeurIPS 2021 DP-SSL | `DP-SSL.png` |

---

## 2. Architecture & SEO Specifications

### CSS Component Library

All Digest pages share `_layouts/digest.html` and CSS from `assets/css/site.css`:

| Class | Purpose |
|---|---|
| `.digest-page .page__title` | Hides Jekyll's default duplicate title |
| `.digest-lite` | Root grid wrapper for generated digest content |
| `.digest-facts` | Compact metadata grid for venue, authors, area, and citations |
| `.digest-panel` | Shared section card for problem, contribution, impact, and structured access |

### Responsive Behavior

Digest layout responsiveness is centralized in `assets/css/site.css`; individual digest pages should not contain page-level CSS.

### GEO (Generative Engine Optimization)

Every Digest page must include:

**1. YAML Front Matter** with `layout: digest`, `digest_id`, and `description`:

```yaml
---
layout: digest
author_profile: true
title: "Paper Digest: Short Title"
permalink: /slug
classes: wide site-page digest-page
digest_id: publication-id
description: "[TL;DR plain text, no HTML]"
---
```

**2. Matching structured data** in `_data/research.json` and `_data/digests.json`.

`_layouts/digest.html` generates the visible page and `ScholarlyArticle` JSON-LD automatically.

---

## 3. SOP: Adding a New Paper Digest

### Step 1 - Add publication metadata

Add or update the publication in `_data/research.json`. Every publication must include a unique `id` and a `digestUrl`.

### Step 2 - Add Digest copy

Add a matching object to `_data/digests.json` with the same `id`. Required fields: `tagline`, `area`, `problem`, `contribution`, and `impact`.

### Step 3 - Create the Markdown entry

Create `[slug].md` in the project root with only front matter:

```yaml
---
layout: digest
author_profile: true
title: "Paper Digest: Short Name"
permalink: /slug
classes: wide site-page digest-page
digest_id: publication-id
description: "One-sentence digest description."
---
```

### Step 4 - Validate

```bash
bundle exec jekyll build
python3 scripts/validate_site.py
```

### Step 5 - (If Highlight paper) Update index.md infographic

1. Generate a NotebookLM infographic for the paper.
2. Save it as a descriptive-name PNG (e.g., `Paper-Short-Name.png`).
3. Copy to `assets/images/`.
4. Update the `<img src="...">` path in the corresponding `<article class="paper-card">` block in `index.md`.

---

## 4. TODOs & Future Improvements

### CSS Decoupling

Complete. Digest styling is centralized in `assets/css/site.css`, and page rendering is centralized in `_layouts/digest.html`.

- **Image optimization**: The 6 Highlight PNGs average ~5.5 MB each. Consider converting to WebP or adding responsive `srcset` attributes for faster page loads.
- **Automated testing**: `scripts/validate_site.py` and `.github/workflows/validate-site.yml` validate Digest permalinks, JSON endpoints, JSON-LD blocks, banned stale copy, and internal links.
- **Template extraction**: Complete. All Digest pages use `_layouts/digest.html`.
