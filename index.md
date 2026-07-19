---
layout: single
author_profile: false
title: "Principal Algorithm Expert"
classes: wide
schema:
  "@context": "https://schema.org"
  "@type": "Person"
  "name": "Jiandong Ding (丁建栋)"
  "alternateName": "Jiandong Ding"
  "givenName": "Jiandong"
  "familyName": "Ding"
  "jobTitle": "Principal Algorithm Expert"
  "affiliation":
    "@type": "Organization"
    "name": "Huawei Technologies"
  "knowsAbout": ["Recommender Systems", "LLM Agents", "Data Mining"]
  "description": "Principal Algorithm Expert working on recommender systems, LLM agents, and data mining."
  "url": "https://jdding.github.io"
  "sameAs":
    - "https://www.linkedin.com/in/jiandong-ding-60498833/"
    - "https://github.com/jdding"
---

<link rel="stylesheet" href="/assets/css/research-system.css?v=phase2-20260705">
{% include research-nav.html %}

{% assign topics = site.data.topics | sort: "order" %}
{% assign projects = site.data.projects | sort: "order" %}
{% assign selected_papers = site.data.publications | where: "selected", true %}

<div class="research-site">
  <section class="research-hero">
    <div class="research-shell hero-layout">
      <div class="hero-copy">
        <h1>Jiandong Ding</h1>
        <p class="lede">I work on recommender systems, LLM agents, and data mining, with a focus on turning research ideas into reliable AI systems at production scale.</p>
        <div class="hero-focus" aria-label="Research areas">
          {% for topic in topics %}
          <a class="hero-focus-item" href="/topics/{{ topic.slug }}/">
            <span>0{{ forloop.index }}</span>
            <strong>{{ topic.title }}</strong>
            <em>{{ topic.short }}</em>
          </a>
          {% endfor %}
        </div>
        <div class="hero-actions" aria-label="Primary actions">
          <a class="button primary" href="#connect">Contact</a>
          <a class="button secondary" href="/publications/">Full publications</a>
        </div>
      </div>

      <aside class="identity-card" aria-label="Profile summary">
        <div class="identity-portrait">
          <img src="/assets/images/Profile.png" alt="Jiandong Ding portrait">
        </div>
        <div class="identity-body">
          <div>
            <div class="section-label">Principal Algorithm Expert</div>
            <strong>Researcher and engineer working between academic research and industrial AI systems.</strong>
          </div>
          <ul class="identity-facts">
            <li>Huawei Technologies, Shanghai, China</li>
          </ul>
        </div>
      </aside>
    </div>
  </section>

  <section id="research" class="research-section">
    <div class="research-shell">
      <div class="section-head">
        <h2>Research mainline</h2>
        <p>My work has moved from structured biological data, through robust learning and analytics, to recommendation and agent systems used at industrial scale.</p>
      </div>
      <div class="timeline" aria-label="Research trajectory">
        <div class="timeline-row">
          <time>2026</time>
          <p>Generative recommendation, dynamic retrieval, semantic-ID diagnostics, and agent skill retrieval.</p>
        </div>
        <div class="timeline-row">
          <time>2025-2024</time>
          <p>BI/NL2SQL evaluation, LLM serving, CTR model efficiency, and large-scale recommendation infrastructure.</p>
        </div>
        <div class="timeline-row">
          <time>2023-2021</time>
          <p>Continual graph learning, neural topic modeling, weak supervision, robust learning, and live-streaming field experiments.</p>
        </div>
        <div class="timeline-row">
          <time>2012-2010</time>
          <p>miRNA target prediction, genome-scale sequence signals, and early structured data mining.</p>
        </div>
      </div>
    </div>
  </section>

  <section id="selected" class="research-section">
    <div class="research-shell">
      <div class="section-head">
        <h2>Selected papers</h2>
        <p>Representative papers that mark the main research line across recommendation, LLM agents, and data mining.</p>
      </div>
      <div class="paper-grid">
        {% for paper in selected_papers %}
        {% assign topic = topics | where: "slug", paper.topic | first %}
        <article class="paper-card {% if forloop.first %}featured{% endif %}">
          {% if paper.image %}
          <div class="paper-image">
            <img src="{{ paper.image }}" alt="{{ paper.title }}" loading="lazy">
          </div>
          {% endif %}
          <div class="paper-body">
            <div class="paper-meta">
              <span>{{ paper.selected_label | default: paper.venue_short }}</span>
              <span>{{ topic.title }}</span>
            </div>
            <h3>{{ paper.title }}</h3>
            <p>{{ paper.selected_summary }}</p>
            <div class="record-actions">
              {% if paper.digest_url %}<a class="pill digest" href="{{ paper.digest_url }}">Digest</a>{% endif %}
            </div>
          </div>
        </article>
        {% endfor %}
      </div>
    </div>
  </section>

  <section id="projects" class="research-section">
    <div class="research-shell">
      <div class="section-head">
        <h2>Active projects</h2>
        <p>Current research directions are intentionally described at a high level; mature public outputs remain in Full publications and Patents.</p>
      </div>
      <div class="project-grid">
        {% for project in projects %}
        <article class="project-card">
          <span>{{ project.label }}</span>
          <h3>{{ project.title }}</h3>
          <p>{{ project.summary }}</p>
        </article>
        {% endfor %}
      </div>
    </div>
  </section>

  <section id="connect" class="research-section">
    <div class="research-shell">
      <div class="section-head">
        <h2>Collaboration and exchange</h2>
        <p>Open to university collaboration, research exchange, invited talks, and focused discussions around recommendation, agent systems, and data intelligence.</p>
      </div>
      <div class="contact-grid">
        <div class="contact-list">
          <article class="contact-card">
            <div class="contact-stat">Research</div>
            <div>
              <h3>Academic collaboration</h3>
              <p>University collaboration, joint research, resource building, benchmark design, and student or lab exchange.</p>
            </div>
          </article>
          <article class="contact-card">
            <div class="contact-stat">Industry</div>
            <div>
              <h3>Industrial research</h3>
              <p>Recommendation architecture, agent evaluation, retrieval systems, and data-intelligence problems at production scale.</p>
            </div>
          </article>
          <article class="contact-card">
            <div class="contact-stat">Talks</div>
            <div>
              <h3>Invited talks</h3>
              <p>Research talks and professional events on recommender systems, LLM agents, and data mining.</p>
            </div>
          </article>
        </div>

        <aside class="contact-panel">
          <div>
            <h3>Contact</h3>
            <p>For university collaboration, use my Huawei email. For other research exchange, invited talks, or focused technical contact, use my Fudan email.</p>
          </div>
          <div class="contact-links">
            <a href="mailto:dingjiandong2@huawei.com">dingjiandong2@huawei.com <span>University collaboration</span></a>
            <a href="mailto:jdding@fudan.edu.cn">jdding@fudan.edu.cn <span>General contact</span></a>
            <a href="https://github.com/jdding">GitHub <span>Code</span></a>
          </div>
        </aside>
      </div>
    </div>
  </section>
</div>
