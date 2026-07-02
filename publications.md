---
layout: single
author_profile: true
title: "Publications"
permalink: /publications
classes: wide
schema:
  "@context": "https://schema.org"
  "@type": "CollectionPage"
  "headline": "Academic Publications"
  "author":
    "@type": "Person"
    "name": "Jiandong Ding (丁建栋)"
    "url": "https://jdding.github.io"
  "dateModified": "2026-07-02"
  "description": "Academic publications by Jiandong Ding, spanning recommender systems, LLM agents, and data mining"
---

<style>
  .page__title { display: none; }
  .publication-intro {
    margin-bottom: 24px;
    padding-bottom: 18px;
    border-bottom: 1px solid #edf2f7;
  }
  .publication-intro h1 {
    margin: 0 0 8px;
    font-size: 1.65rem;
    color: #1a202c;
  }
  .publication-intro p {
    margin: 0;
    max-width: 760px;
    color: #4a5568;
  }
  .stat-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 12px;
    margin: 18px 0 26px;
  }
  .stat-card {
    background: #f8fafc;
    border: 1px solid #e2e8f0;
    border-radius: 6px;
    padding: 12px;
    text-align: center;
  }
  .stat-num {
    display: block;
    font-size: 1.55em;
    font-weight: 800;
    color: #2d3748;
    line-height: 1.2;
  }
  .stat-label {
    display: block;
    margin-top: 4px;
    color: #667085;
    font-size: 0.78em;
    font-weight: 700;
    letter-spacing: 0.04em;
    text-transform: uppercase;
  }
  .pub-filter-note {
    color: #667085;
    font-size: 0.9rem;
    margin-bottom: 18px;
  }
  .year-header {
    color: #1a202c;
    font-size: 1.18em;
    font-weight: 800;
    margin: 26px 0 10px;
    padding-bottom: 6px;
    border-bottom: 2px solid #edf2f7;
  }
  .pub-item {
    background: #fff;
    border: 1px solid #e9eef5;
    border-left-width: 4px;
    border-radius: 6px;
    margin-bottom: 10px;
    padding: 11px 14px;
    line-height: 1.5;
  }
  .level-a { border-left-color: #c0392b; }
  .level-b { border-left-color: #2980b9; }
  .level-c { border-left-color: #7f8c8d; }
  .pub-title {
    display: block;
    color: #263238;
    font-size: 1em;
    font-weight: 750;
    margin-bottom: 5px;
  }
  .pub-meta {
    display: flex;
    flex-wrap: wrap;
    gap: 6px;
    align-items: center;
    color: #59636e;
    font-size: 0.9em;
  }
  .venue-tag,
  .pillar-tag {
    display: inline-block;
    border-radius: 3px;
    font-size: 0.78em;
    font-weight: 800;
    line-height: 1.35;
    padding: 1px 6px;
  }
  .venue-a { background: #fff5f5; border: 1px solid #fed7d7; color: #b42318; }
  .venue-b { background: #eff8ff; border: 1px solid #b2ddff; color: #175cd3; }
  .venue-c { background: #f8fafc; border: 1px solid #cbd5e1; color: #475569; }
  .pillar-tag { background: #f7f7f2; border: 1px solid #deded2; color: #4a4f45; }
  .pub-authors strong { color: #1a202c; }
  .pub-link {
    color: #1f6feb;
    font-size: 0.86em;
    font-weight: 700;
    text-decoration: none;
  }
  .pub-link:hover { text-decoration: underline; }
  .digest-link {
    background: #fff8db;
    border: 1px solid #f3d675;
    border-radius: 3px;
    color: #8a5b00;
    padding: 0 5px;
  }
  .citation-count { color: #667085; }
  @media (max-width: 640px) {
    .stat-grid { grid-template-columns: 1fr; }
    .publication-intro h1 { font-size: 1.35rem; }
  }
</style>

<section class="publication-intro">
  <h1>Publications</h1>
  <p>Research contributions organized around three durable lines: <strong>Recommender Systems</strong>, <strong>LLM Agents</strong>, and <strong>Data Mining</strong>.</p>
</section>

<div class="stat-grid" aria-label="Publication summary">
  <div class="stat-card">
    <span class="stat-num">{{ site.data.publications.size }}</span>
    <span class="stat-label">Publications</span>
  </div>
  <div class="stat-card">
    <span class="stat-num">493</span>
    <span class="stat-label">Citations</span>
  </div>
  <div class="stat-card">
    <span class="stat-num">10</span>
    <span class="stat-label">h-index</span>
  </div>
</div>

<p class="pub-filter-note">Each entry links to its full digest where available. The machine-readable publication list is available at <a href="/api/publications.json">/api/publications.json</a>.</p>

{% assign current_year = "" %}
{% for pub in site.data.publications %}
  {% assign pub_year = pub.year | append: "" %}
  {% if pub_year != current_year %}
    <h3 class="year-header">{{ pub.year }}</h3>
    {% assign current_year = pub_year %}
  {% endif %}

<div class="pub-item level-{{ pub.level }}" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <span class="pub-title" itemprop="headline">{{ pub.title }}.</span>
  <div class="pub-meta">
    <span class="venue-tag venue-{{ pub.level }}" itemprop="isPartOf">{{ pub.venue }}</span>
    <span class="pillar-tag">{{ pub.pillar }}</span>
    <span class="pub-authors" itemprop="author">{{ pub.authors | replace: "J Ding", "<strong property='name'>J Ding</strong>" }}</span>
    {% if pub.citations %}
      <span class="citation-count">{{ pub.citations }} citation{% if pub.citations != 1 %}s{% endif %}</span>
    {% endif %}
    {% if pub.paper_url %}
      <a href="{{ pub.paper_url }}" class="pub-link">{{ pub.paper_label | default: "Paper" }}</a>
    {% endif %}
    {% if pub.digest_url %}
      <a href="{{ pub.digest_url }}" class="pub-link digest-link">Digest (ZH)</a>
    {% endif %}
    <meta itemprop="datePublished" content="{{ pub.year }}">
  </div>
</div>
{% endfor %}
