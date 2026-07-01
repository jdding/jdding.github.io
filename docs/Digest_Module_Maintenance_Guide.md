# Paper Digest & Highlights Module - Maintenance Guide

> Last updated: 2026-03-16 | Maintainer: Jiandong Ding

---

## 1. Overview

This module encompasses two core upgrades to the personal academic homepage (jdding.github.io):

### a) Paper Digest Pages

Replaced traditional bare PDF links with **rich, four-section deep-dive pages** ("Pain Point - Breakthrough - Impact - Reflection") for 12 core publications. Each page is a standalone `.md` file in the project root with a dedicated permalink (e.g., `/hpgr`, `/rpe4rec`).

**Current coverage (12 papers):**

| File | Venue | Permalink |
|---|---|---|
| `hpgr.md` | WWW 2026 | `/hpgr` |
| `aaai-difl.md` | AAAI 2026 | `/aaai-difl` |
| `rpe4rec.md` | WSDM 2026 | `/rpe4rec` |
| `kdd-ctr.md` | KDD 2024 | `/kdd-ctr` |
| `bis-nl2sql.md` | ICSOC 2025 | `/bis-nl2sql` |
| `dygraph.md` | arXiv 2025 | `/dygraph` |
| `pd-serve.md` | arXiv 2024 | `/pd-serve` |
| `continual-gcn.md` | AAAI 2023 | `/continual-gcn` |
| `acl-topic.md` | ACL 2023 | `/acl-topic` |
| `naacl-epida.md` | NAACL 2022 | `/naacl-epida` |
| `emnlp-keygraph.md` | EMNLP 2021 | `/emnlp-keygraph` |
| `neurips-dpssl.md` | NeurIPS 2021 | `/neurips-dpssl` |

### b) Highlights Infographic Upgrade

The `index.md` Research Highlights section's paper thumbnails have been fully replaced with **AI-generated high-resolution infographics** (produced via NotebookLM). These are stored as descriptive-name PNGs under `assets/images/`.

| Paper | Image File |
|---|---|
| WWW 2026 HPGR | `Beyond-the-Flat-Sequence.png` |
| AAAI 2026 DIFL | `Invariant-Feature-Learning.png` |
| WSDM 2026 RPE4Rec | `RPE4Rec.png` |
| KDD 2024 CTR | `Unified-Low-rank-Compression.png` |
| ICSOC 2025 BIS | `BIS-NL2SQL.png` |
| NeurIPS 2021 DP-SSL | `DP-SSL.png` |

---

## 2. Architecture & SEO Specifications

### CSS Component Library

All Digest pages share a common set of atomic CSS classes, currently **inlined** within each `.md` file's `<style>` block:

| Class | Purpose |
|---|---|
| `.page__title` | Hidden via `display: none !important` to suppress Jekyll's default title |
| `.digest-container` | Root wrapper. `font-size: 0.9rem`, system font stack |
| `.digest-hero` | Top card with left accent border. Contains title, meta, and TL;DR |
| `.hero-title` | Paper full title. `font-size: 1.3em`, `font-weight: 800` |
| `.hero-meta` | Venue tag + author line |
| `.hero-tldr` | One-line summary block with light background |
| `.digest-section` | Each of the four content sections |
| `.section-title` | Section heading with bottom border |
| `.callout` | Highlighted block base class |
| `.callout-red` | Red-tinted callout for pain points / problems |
| `.callout-green` | Green-tinted callout for breakthroughs / gains |
| `.tag` | Inline badge (e.g., venue). Variants: `.tag-red`, `.tag-blue`, `.tag-gray`, `.tag-arxiv` |

### Responsive Breakpoint

All pages include the following media query:

```css
@media (max-width: 768px) {
  .digest-hero { padding: 15px; margin-bottom: 25px; }
  .hero-title { font-size: 1.15em; }
  .section-title { font-size: 1.05em; }
  .callout { padding: 12px 15px; }
}
```

### GEO (Generative Engine Optimization)

Every Digest page **must** include:

**1. YAML Front Matter** with `description` and `keywords`:

```yaml
---
layout: single
author_profile: true
title: "Paper Digest: [Short Title]"
permalink: /[slug]
classes: wide
description: "[TL;DR plain text, no HTML]"
keywords: "Jiandong Ding, Recommender Systems, Huawei, [2-3 core technical keywords]"
---
```

**2. JSON-LD structured data** appended at the very bottom of the file:

```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "ScholarlyArticle",
  "headline": "[Full paper title]",
  "author": [{
    "@type": "Person",
    "name": "Jiandong Ding",
    "affiliation": {
      "@type": "Organization",
      "name": "Huawei Technologies / Fudan University"
    }
  }],
  "description": "[TL;DR plain text]",
  "about": {
    "@type": "Thing",
    "name": "[Research domain, e.g., Recommender Systems and Graph Neural Networks]"
  }
}
</script>
```

---

## 3. SOP: Adding a New Paper Digest

### Step 1 - Create the Markdown file

Create `[slug].md` in the **project root**. Configure YAML Front Matter with all GEO fields (`layout`, `author_profile`, `title`, `permalink`, `classes`, `description`, `keywords`).

### Step 2 - Copy the CSS block

Copy the `<style>...</style>` block from any existing Digest file (e.g., `hpgr.md`). It includes `.page__title` hiding, all component classes, and the `768px` media query. Do not modify it.

### Step 3 - Write the four-section HTML body

Follow the established structure:

```
<div class="digest-container">
  <div class="digest-hero">         <!-- Title + Meta + TL;DR -->
  <div class="digest-section">      <!-- Section 1: Pain Point -->
  <div class="digest-section">      <!-- Section 2: Breakthrough -->
  <div class="digest-section">      <!-- Section 3: Impact / Results -->
  <div class="digest-section">      <!-- Section 4: Reflection / Takeaway -->
</div>
```

Append the `<script type="application/ld+json">` block after the closing `</div>`.

### Step 4 - Link from publications.md

Insert the gold Digest button in the corresponding paper's `<div class="pub-meta">`:

```html
<a href="/[slug]" class="pub-link" style="background:#fefcbf; color:#b7791f; border:1px solid #f6e05e; margin-left:6px;">[Digest]</a>
```

### Step 5 - (If Highlight paper) Update index.md infographic

1. Generate a NotebookLM infographic for the paper.
2. Save it as a descriptive-name PNG (e.g., `Paper-Short-Name.png`).
3. Copy to `assets/images/`.
4. Update the `<img src="...">` path in the corresponding `<article class="paper-card">` block in `index.md`.

---

## 4. TODOs & Future Improvements

### CSS Decoupling (Priority: Medium)

The current `<style>` block is **duplicated across all 12 Digest files**. During a future site refactor, extract the shared CSS into `assets/css/main.scss` (or a dedicated `_sass/_digest.scss` partial) and remove the inline blocks. This will:

- Eliminate ~90 lines of duplicated CSS per file
- Enable global style updates from a single source
- Reduce total repository size

### Other Considerations

- **Image optimization**: The 6 Highlight PNGs average ~5.5 MB each. Consider converting to WebP or adding responsive `srcset` attributes for faster page loads.
- **Automated testing**: Consider a CI script that validates all Digest permalinks resolve correctly and all JSON-LD blocks pass schema.org validation.
- **Template extraction**: If the number of Digest pages grows beyond 20, consider creating a Jekyll `_layouts/digest.html` layout to further reduce per-file boilerplate.
