---
layout: research
author_profile: false
title: "Full Publications"
permalink: /publications/
classes: wide
description: "Publications by Jiandong Ding (丁建栋) across recommender systems, LLM agents, data mining, AI retrieval, and applied machine learning."
---

{% assign publications = site.data.publications | where_exp: "item", "item.hidden != true" %}
{% assign topics = site.data.topics | sort: "order" %}
{% assign years = publications | map: "year" | uniq | sort | reverse %}

<div class="research-site">
  <section class="research-hero">
    <div class="research-shell">
      <h1>Full publications</h1>
      <p class="lede">Research papers, accepted articles, and public preprints. Status is shown separately from the venue.</p>
      <nav class="year-navigation" aria-label="Publication years">{% for year in years %}<a href="#{{ year }}" data-scroll-ignore>{{ year }}</a>{% endfor %}</nav>
    </div>
  </section>

  <section id="all-publications" class="research-section">
    <div class="research-shell">
      <div class="record-list">
        {% for year in years %}
        {% assign year_papers = publications | where: "year", year %}
        <section id="{{ year }}" class="year-block">
          <h2 class="year-label">{{ year }}</h2>
          <div class="record-stack">
            {% for paper in year_papers %}
            {% assign topic = topics | where: "slug", paper.topic | first %}
            {% assign topic_label = paper.topic_label | default: topic.title %}
            {% capture published_date %}{% include publication-date.html paper=paper %}{% endcapture %}
            {% assign published_date = published_date | strip %}
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
                  <span><span itemprop="isPartOf">{% include publication-venue.html paper=paper %}</span> {% include publication-status.html paper=paper %}</span>
                  {% if paper.program %}{% assign paper_program = site.data.research_programs | where: "id", paper.program | first %}<a href="/#program-{{ paper.program }}">{{ paper_program.hero_title }}</a>{% endif %}
                  {% if published_date != empty %}<meta itemprop="datePublished" content="{{ published_date }}">{% endif %}
                  <meta itemprop="creativeWorkStatus" content="{{ paper.status }}">
                </div>
              </div>
              <div class="record-actions">
                {% if topic_label and topic %}<a class="pill topic" href="/topics/{{ topic.slug }}/">{{ topic_label }}</a>{% elsif topic_label %}<span class="pill topic">{{ topic_label }}</span>{% endif %}
                {% if paper.list_links %}
                {% for link in paper.list_links %}
                <a class="pill topic" href="{{ link.url }}">{{ link.label }}</a>
                {% endfor %}
                {% endif %}
                {% include publication-links.html paper=paper digest=true %}
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
