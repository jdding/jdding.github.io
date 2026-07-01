---
layout: single
author_profile: true
title: "Publications"
permalink: /publications
classes: wide site-page publications-page
schema:
  "@context": "https://schema.org"
  "@type": "CollectionPage"
  "headline": "Academic Publications"
  "author":
    "@type": "Person"
    "name": "Jiandong Ding (丁建栋)"
    "url": "https://jdding.github.io"
  "dateModified": "2026-07-01"
  "description": "A comprehensive list of academic publications by Jiandong Ding"
---

{% assign metrics = site.data.research.publicationMetrics %}
{% assign publications = site.data.research.publications %}
{% assign grouped_publications = publications | group_by: "year" %}

<section class="page-hero">
  <p class="page-hero__eyebrow">Research output</p>
  <h1>Publications</h1>
  <p class="page-hero__lead">
    A Google Scholar aligned publication record spanning recommender systems,
    LLM agents, AI infrastructure, data intelligence, text mining, and earlier
    bioinformatics work.
  </p>
  <nav class="page-actions" aria-label="Publication shortcuts">
    <a class="action-link action-link--primary" href="#year-2026">Latest papers</a>
    <a class="action-link" href="#year-2024">Recent systems</a>
    <a class="action-link" href="#year-2021">Core ML/NLP</a>
    <a class="action-link" href="/api/research.json">Research JSON</a>
  </nav>
</section>

<div class="stat-grid">
  <div class="stat-card">
    <span class="stat-num hl-red">{{ metrics.totalCitations }}</span>
    <span class="stat-label">Citations</span>
  </div>
  <div class="stat-card">
    <span class="stat-num hl-blue">{{ metrics.hIndex }}</span>
    <span class="stat-label">h-index</span>
  </div>
  <div class="stat-card">
    <span class="stat-num hl-orange">{{ metrics.i10Index }}</span>
    <span class="stat-label">i10-index</span>
  </div>
  <div class="stat-card">
    <span class="stat-num">{{ metrics.totalPublications }}</span>
    <span class="stat-label">Scholar Records</span>
  </div>
</div>

{% for group in grouped_publications %}
<h3 id="year-{{ group.name }}" class="year-header">{{ group.name }}</h3>

{% for pub in group.items %}
<div class="pub-item {{ pub.level }}" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <span class="pub-title" itemprop="headline">{{ pub.title }}</span>
  <div class="pub-meta">
    <span class="venue-tag {{ pub.venueClass }}" itemprop="isPartOf">{{ pub.venueTag }}</span>
    <span class="pub-authors" itemprop="author">{{ pub.authors | replace: 'J Ding', '<strong property="name">J Ding</strong>' }}</span>
    <span class="pub-source">{{ pub.venue }}</span>
    {% if pub.citations %}
    <span class="pub-citations">{{ pub.citations }} citation{% unless pub.citations == 1 %}s{% endunless %}</span>
    {% endif %}
    <a href="{{ pub.digestUrl | relative_url }}" class="pub-link pub-link--digest">DIGEST</a>
    {% if pub.url %}
      {% if pub.url contains '://' %}
    <a href="{{ pub.url }}" class="pub-link" target="_blank" rel="noopener">{{ pub.linkLabel }}</a>
      {% else %}
    <a href="{{ pub.url | relative_url }}" class="pub-link">{{ pub.linkLabel }}</a>
      {% endif %}
    {% endif %}
    <meta itemprop="datePublished" content="{{ pub.year }}">
    <meta itemprop="publicationType" content="{{ pub.type }}">
  </div>
</div>
{% endfor %}
{% endfor %}

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "ItemList",
  "@id": "{{ '/publications' | absolute_url }}#scholar-publications",
  "name": "Google Scholar aligned publications by Jiandong Ding",
  "numberOfItems": {{ publications | size }},
  "itemListElement": [
    {% for pub in publications %}
    {
      "@type": "ListItem",
      "position": {{ forloop.index }},
      "item": {
        "@type": "ScholarlyArticle",
        "@id": "{{ '/publication/' | append: pub.id | absolute_url }}",
        "headline": {{ pub.title | jsonify }},
        "name": {{ pub.title | jsonify }},
        "author": {{ pub.authors | jsonify }},
        "isPartOf": {{ pub.venue | jsonify }},
        "datePublished": "{{ pub.year }}",
        {% assign canonical_url = pub.url | default: pub.digestUrl | default: '/publications' %}
        {% if canonical_url contains '://' %}
        "url": {{ canonical_url | jsonify }}
        {% else %}
        "url": "{{ canonical_url | absolute_url }}"
        {% endif %}
      }
    }{% unless forloop.last %},{% endunless %}
    {% endfor %}
  ]
}
</script>
