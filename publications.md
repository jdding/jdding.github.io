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
  "dateModified": "2026-08-14"
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
            {% assign topic_label = paper.topic_label | default: topic.title %}
            {% assign venue_markup = paper.venue %}
            {% assign venue_segments = paper.venue | split: "(" %}
            {% if venue_segments.size > 1 and paper.venue_short %}
              {% assign venue_candidate = venue_segments | last | split: ")" | first %}
              {% if venue_candidate contains paper.venue_short %}
                {% assign plain_venue = "(" | append: venue_candidate | append: ")" %}
                {% capture bold_venue %}(<strong class="venue-abbr">{{ venue_candidate }}</strong>){% endcapture %}
                {% assign venue_markup = paper.venue | replace_first: plain_venue, bold_venue %}
              {% endif %}
            {% endif %}
            <article class="record-item" itemscope itemtype="http://schema.org/ScholarlyArticle">
              <div>
                <h3 itemprop="headline">{{ paper.title }}</h3>
                <div class="record-meta meta-lines">
                  <span itemprop="author">{{ paper.authors }}</span>
                  <span itemprop="isPartOf">{{ venue_markup }}</span>
                  <meta itemprop="datePublished" content="{{ paper.year }}">
                </div>
              </div>
              <div class="record-actions">
                {% if topic_label %}<span class="pill topic">{{ topic_label }}</span>{% endif %}
                {% if paper.list_links %}
                {% for link in paper.list_links %}
                <a class="pill topic" href="{{ link.url }}">{{ link.label }}</a>
                {% endfor %}
                {% endif %}
                {% unless paper.hide_paper_action %}
                {% if paper.paper_url %}<a class="pill link" href="{{ paper.paper_url }}">{{ paper.paper_label | default: "Paper" }}</a>{% endif %}
                {% endunless %}
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
