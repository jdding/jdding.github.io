---
layout: single
author_profile: true
title: "Academic Data API"
permalink: /api/
classes: wide site-page api-page
---

<section class="page-hero">
  <p class="page-hero__eyebrow">Machine-readable profile</p>
  <h1>Academic Data API</h1>
  <p class="page-hero__lead">
    Static JSON and text endpoints for academic search engines, AI assistants,
    collaboration platforms, and automated research-profile integration.
  </p>
  <nav class="page-actions" aria-label="API shortcuts">
    <a class="action-link action-link--primary" href="/api/research.json">Research JSON</a>
    <a class="action-link" href="/api/publications.json">Publications JSON</a>
    <a class="action-link" href="/api/knowledge-graph.json">Knowledge graph</a>
    <a class="action-link" href="/llms.txt">LLM summary</a>
  </nav>
</section>

<section aria-labelledby="endpoints">
  <div class="section-header">
    <h2 id="endpoints" class="section-title">Endpoints</h2>
    <span class="section-badge">Static files</span>
  </div>

  <div class="endpoint-grid">
    <article class="endpoint-card">
      <h3>Research profile</h3>
      <p><code>/api/research.json</code></p>
      <p>Profile, Scholar metrics, publications, news, selected projects, research areas, education, and collaborations.</p>
    </article>

    <article class="endpoint-card">
      <h3>Publications</h3>
      <p><code>/api/publications.json</code></p>
      <p>Scholar-aligned publication metrics and 20 publication records with Digest permalinks.</p>
    </article>

    <article class="endpoint-card">
      <h3>Knowledge graph</h3>
      <p><code>/api/knowledge-graph.json</code></p>
      <p>Data-driven person, organization, research-area, publication, and collaboration graph.</p>
    </article>

    <article class="endpoint-card">
      <h3>LLM summary</h3>
      <p><code>/llms.txt</code></p>
      <p>Concise text overview and curated links for text-first AI retrieval workflows.</p>
    </article>
  </div>
</section>

<section aria-labelledby="example-request">
  <div class="section-header">
    <h2 id="example-request" class="section-title">Example request</h2>
    <span class="section-badge">No auth</span>
  </div>

```text
GET https://jdding.github.io/api/research.json
```

```json
{
  "profile": {
    "name": "Jiandong Ding (丁建栋)",
    "title": "AI Architecture Expert & Senior Algorithm Expert",
    "organization": "Huawei Technologies"
  },
  "publicationMetrics": {
    "totalPublications": 20,
    "totalCitations": 493,
    "hIndex": 10,
    "i10Index": 11
  },
  "publications": [],
  "news": [],
  "researchProjects": [],
  "collaborations": []
}
```

```text
GET https://jdding.github.io/api/publications.json
```
</section>

<section aria-labelledby="use-cases">
  <div class="section-header">
    <h2 id="use-cases" class="section-title">Use cases</h2>
    <span class="section-badge">GEO</span>
  </div>

  <ul>
    <li>Academic search engines and scholarly indexers.</li>
    <li>AI assistants resolving research focus, selected work, and collaborations.</li>
    <li>Academic collaboration platforms and bibliometric tools.</li>
    <li>Structured profile previews in external knowledge systems.</li>
  </ul>
</section>

<section aria-labelledby="access-notes">
  <div class="section-header">
    <h2 id="access-notes" class="section-title">Access notes</h2>
    <span class="section-badge">Public</span>
  </div>
  <p>
    These are static GitHub Pages resources with no authentication or custom rate limiting.
    Please avoid excessive automated requests. For questions, contact jdding@fudan.edu.cn.
  </p>
</section>
