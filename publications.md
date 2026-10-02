---
layout: research
author_profile: false
title: "Full Publications"
permalink: /publications/
classes: wide
description: "Publications by Jiandong Ding (丁建栋) across recommender systems, LLM agents, data mining, AI retrieval, and applied machine learning."
---

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
            {% if paper.venue_type != "journal" %}
              {% assign display_year = paper.venue_year | default: paper.year %}
              {% assign venue_markup = paper.venue_short | append: " " | append: display_year %}
            {% else %}
              {% assign venue_segments = paper.venue | split: "(" %}
              {% if venue_segments.size > 1 and paper.venue_short %}
                {% assign venue_candidate = venue_segments | last | split: ")" | first %}
                {% if venue_candidate contains paper.venue_short %}
                  {% assign plain_venue = "(" | append: venue_candidate | append: ")" %}
                  {% capture bold_venue %}(<strong class="venue-abbr">{{ venue_candidate }}</strong>){% endcapture %}
                  {% assign venue_markup = paper.venue | replace_first: plain_venue, bold_venue %}
                {% elsif paper.venue_short != paper.venue %}
                  {% capture venue_markup %}{{ paper.venue }} (<strong class="venue-abbr">{{ paper.venue_short }}</strong>){% endcapture %}
                {% endif %}
              {% endif %}
            {% endif %}
            <article id="publication-{{ paper.id }}" class="record-item" itemscope itemtype="https://schema.org/ScholarlyArticle">
              <div>
                <h3 itemprop="headline">
                  {% if paper.digest_url %}<a class="record-title-link" href="{{ paper.digest_url }}" itemprop="url">{{ paper.title }}</a>{% else %}{{ paper.title }}{% endif %}
                </h3>
                <div class="record-meta meta-lines">
                  <span itemprop="creditText">{{ paper.authors }}</span>
                  <span itemprop="author" itemscope itemtype="https://schema.org/Person" itemid="{{ site.url }}/#person">
                    <meta itemprop="name" content="Jiandong Ding (丁建栋)">
                  </span>
                  <span itemprop="isPartOf">{{ venue_markup }}</span>
                  <meta itemprop="datePublished" content="{{ paper.year }}">
                </div>
              </div>
              <div class="record-actions">
                {% if topic_label and topic %}<a class="pill topic" href="/topics/{{ topic.slug }}/">{{ topic_label }}</a>{% elsif topic_label %}<span class="pill topic">{{ topic_label }}</span>{% endif %}
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

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "CollectionPage",
  "@id": "{{ site.url }}/publications/#collection",
  "url": "{{ site.url }}/publications/",
  "name": "Full Publications",
  "description": {{ page.description | jsonify }},
  "about": { "@id": "{{ site.url }}/#person" },
  "mainEntity": {
    "@type": "ItemList",
    "numberOfItems": {{ publications | size }},
    "itemListOrder": "https://schema.org/ItemListOrderDescending",
    "itemListElement": [
      {% for paper in publications %}{
        "@type": "ListItem",
        "position": {{ forloop.index }},
        "name": {{ paper.title | jsonify }},
        "url": "{{ site.url }}{{ paper.digest_url }}"
      }{% unless forloop.last %},{% endunless %}{% endfor %}
    ]
  }
}
</script>
