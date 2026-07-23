---
layout: single
author_profile: false
title: "Full Publications"
permalink: /publications/
classes: wide
schema:
  "@context": "https://schema.org"
  "@type": "CollectionPage"
  "headline": "Full Publications"
  "author":
    "@type": "Person"
    "name": "Jiandong Ding (丁建栋)"
    "url": "https://jdding.github.io"
  "dateModified": "2026-07-23"
  "description": "Full publications by Jiandong Ding, ordered by year."
---

<link rel="stylesheet" href="/assets/css/research-system.css?v=phase2-20260705">
{% include research-nav.html %}

{% assign publications = site.data.publications %}
{% assign topics = site.data.topics | sort: "order" %}
{% assign years = publications | map: "year" | uniq %}

<div class="research-site">
  <section class="research-hero">
    <div class="research-shell">
      <h1>Full publications</h1>
      <p class="lede">{{ publications | size }} papers across recommender systems, LLM agents, data mining, and earlier sequence-analysis work, ordered from newest to oldest.</p>
    </div>
  </section>

  <section id="all-publications" class="research-section">
    <div class="research-shell">
      <div class="record-list">
        {% for year in years %}
        {% assign year_papers = publications | where: "year", year %}
        <section id="{{ year }}" class="year-block">
          <div class="year-label">{{ year }}</div>
          <div class="record-stack">
            {% for paper in year_papers %}
            {% assign topic = topics | where: "slug", paper.topic | first %}
            <article class="record-item" itemscope itemtype="http://schema.org/ScholarlyArticle">
              <div>
                <h3 itemprop="headline">{{ paper.title }}</h3>
                <div class="record-meta meta-lines">
                  <span itemprop="author">{{ paper.authors }}</span>
                  <span itemprop="isPartOf">{{ paper.venue }}</span>
                  <meta itemprop="datePublished" content="{{ paper.year }}">
                </div>
              </div>
              <div class="record-actions">
                {% if topic %}<span class="pill topic">{{ topic.title }}</span>{% endif %}
                {% if paper.paper_url %}<a class="pill link" href="{{ paper.paper_url }}">{{ paper.paper_label | default: "Paper" }}</a>{% endif %}
                {% if paper.digest_url %}<a class="pill digest" href="{{ paper.digest_url }}">{{ paper.digest_label | default: "Digest" }}</a>{% endif %}
                {% if paper.code_url %}<a class="pill link" href="{{ paper.code_url }}">{{ paper.code_label | default: "Code" }}</a>{% endif %}
              </div>
            </article>
            {% endfor %}
          </div>
        </section>
        {% endfor %}
      </div>
    </div>
  </section>
</div>
