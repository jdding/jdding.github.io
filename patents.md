---
layout: single
author_profile: false
title: "Patents"
permalink: /patents/
classes: wide
---

<link rel="stylesheet" href="/assets/css/research-system.css?v=content-qa-20260705">
{% include research-nav.html %}

{% assign patents = site.data.patents %}
{% assign granted = patents | where: "status", "Granted" %}
{% assign applications = patents | where: "status", "Application" %}

<div class="research-site">
  <section class="research-hero">
    <div class="research-shell hero-layout">
      <div>
        <h1>Patents</h1>
        <p class="lede">Applied inventions across recommendation, interactive media, mobility intelligence, data platforms, and earlier sequence analysis work.</p>
        <div class="hero-actions">
          <a class="button primary" href="#patent-record">View records</a>
        </div>
      </div>
      <aside class="summary-board" aria-label="Patent summary">
        <div class="summary-row"><strong>{{ patents.size }}</strong><span>patent records</span></div>
        <div class="summary-row"><strong>{{ granted.size }}</strong><span>granted patents</span></div>
        <div class="summary-row"><strong>{{ applications.size }}</strong><span>published applications</span></div>
      </aside>
    </div>
  </section>

  <section class="research-section">
    <div class="research-shell">
      <div class="section-head">
        <h2>Applied areas</h2>
        <p>The records fall into five applied areas, from current industrial AI systems to earlier sequence-analysis work.</p>
      </div>
      <div class="topic-overview">
        <article class="topic-card"><h3>Recommendation and user modeling</h3><p>Video play-time recommendation, user state prediction, information push, and behavior modeling.</p></article>
        <article class="topic-card"><h3>Interactive media</h3><p>Virtual streaming, live broadcast interaction, sound effects, video preview, and content generation.</p></article>
        <article class="topic-card"><h3>Mobility and spatial intelligence</h3><p>Road networks, traffic analysis, spatial-region modeling, route search, and trip-mode recommendation.</p></article>
        <article class="topic-card"><h3>Data and platform systems</h3><p>ETL processing, service registration, resource allocation, data visualization, and test-data expansion.</p></article>
        <article class="topic-card"><h3>Bioinformatics and sequence analysis</h3><p>Gene sequence management, genome compression, and protein-sequence analysis.</p></article>
      </div>
    </div>
  </section>

  <section id="patent-record" class="research-section">
    <div class="research-shell">
      <div class="section-head">
        <h2>Patent records</h2>
      </div>
      <div class="record-list">
        <section class="patent-group">
          <div class="group-label">Granted</div>
          <div class="record-stack">
            {% for patent in granted %}
            <article class="patent-card">
              <div>
                <h3>{{ patent.title }}</h3>
                <div class="patent-meta">
                  <a href="{{ patent.source_url }}">{{ patent.number }}</a><br>
                  {{ patent.inventors }}<br>
                  {{ patent.year }} / {{ patent.area }}
                </div>
              </div>
              <div class="patent-tags">
                <span class="pill link">{{ patent.status }}</span>
                <span class="pill">{{ patent.jurisdiction }}</span>
                {% if patent.role == "First Inventor" %}<span class="pill topic">First Inventor</span>{% endif %}
              </div>
            </article>
            {% endfor %}
          </div>
        </section>

        <section class="patent-group">
          <div class="group-label">Applications</div>
          <div class="record-stack">
            {% for patent in applications %}
            <article class="patent-card">
              <div>
                <h3>{{ patent.title }}</h3>
                <div class="patent-meta">
                  <a href="{{ patent.source_url }}">{{ patent.number }}</a><br>
                  {{ patent.inventors }}<br>
                  {{ patent.year }} / {{ patent.area }}
                </div>
              </div>
              <div class="patent-tags">
                <span class="pill digest">{{ patent.status }}</span>
                <span class="pill">{{ patent.jurisdiction }}</span>
                {% if patent.role == "First Inventor" %}<span class="pill topic">First Inventor</span>{% endif %}
              </div>
            </article>
            {% endfor %}
          </div>
        </section>
      </div>
    </div>
  </section>
</div>
