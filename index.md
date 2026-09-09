---
layout: default
author_profile: false
title: "Jiandong Ding | Principal Algorithm Expert"
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
    "name": "Huawei Technologies Co. Ltd."
  "knowsAbout": ["Recommender Systems", "LLM Agents", "Data Mining", "Zero-Observation User Reactivation", "AI Retrieval", "Semantic-ID Diagnostics", "Agent Skill Retrieval"]
  "description": "Principal Algorithm Expert at Huawei Technologies Co. Ltd., working on reliable recommendation and AI retrieval systems."
  "url": "https://jdding.github.io"
  "sameAs":
    - "https://www.linkedin.com/in/jiandong-ding-60498833/"
    - "https://github.com/jdding"
---

<link rel="stylesheet" href="/assets/css/research-system.css?v=homepage-20260830">
{% include research-nav.html %}

{% assign topics = site.data.topics | sort: "order" %}
{% assign programs = site.data.research_programs | sort: "order" %}
{% assign public_artifacts = site.data.open_source | sort: "order" %}
{% assign selected_papers = site.data.publications | where: "selected", true %}

<main id="main" class="research-site">
  <section class="research-hero">
    <div class="research-shell hero-layout">
      <div class="hero-copy">
        <h1>Jiandong Ding</h1>
        <p class="hero-role">Principal Algorithm Expert · Huawei Technologies Co. Ltd.</p>
        <p class="lede">Since 2012, I have worked on applied AI and data systems across IBM, Bosch, Alibaba DAMO Academy, and Huawei. My current research asks how recommendation and AI retrieval systems can remain reliable as users, catalogs, tasks, and interfaces change.</p>
        <div class="identity-facts" aria-label="Professional profile">
          <div>
            <span>Research fields</span>
            <p>
              <a href="/topics/recommender-systems/">Recommender Systems</a>
              <a href="/topics/llm-agents/">LLM Agents</a>
              <a href="/topics/data-mining/">Data Mining</a>
            </p>
          </div>
          <div>
            <span>Current focus</span>
            <p>Adaptive recommendation · Auditable AI retrieval</p>
          </div>
        </div>
        <div class="hero-actions" aria-label="Primary actions">
          <a class="button primary" href="#research">Explore research</a>
          <a class="text-link" href="#connect">Get in touch</a>
        </div>
      </div>

      <figure class="identity-card" aria-label="Portrait of Jiandong Ding">
        <div class="identity-portrait">
          <img src="/assets/images/Profile.png" alt="Jiandong Ding portrait">
        </div>
      </figure>
    </div>
  </section>

  <section id="research" class="research-section">
    <div class="research-shell">
      <div class="section-head">
        <span class="section-label">Research</span>
        <h2>What I study</h2>
        <p>I study how learning and retrieval systems remain dependable when the evidence they rely on changes.</p>
      </div>
      <div class="research-program-stack">
        {% for program in programs %}
        {% assign program_artifacts = public_artifacts | where: "program", program.id %}
        <article id="program-{{ program.id }}" class="research-program-block">
          <div class="research-program-head">
            <div class="program-index">{{ program.number }}</div>
            <div class="program-intro">
              <h3>{{ program.title }}</h3>
              <p>{{ program.summary }}</p>
            </div>
            <div class="program-detail">
              <ul>
                {% for theme in program.themes %}<li>{{ theme }}</li>{% endfor %}
              </ul>
              <div class="program-topics" aria-label="Related topics">
                {% for topic in program.topics %}
                <a href="/topics/{{ topic.slug }}/">{{ topic.label }}</a>
                {% endfor %}
              </div>
            </div>
          </div>

          <div class="artifact-group">
            <div class="artifact-group-label">Public code and resources</div>
            <div class="artifact-list">
              {% for artifact in program_artifacts %}
              {% assign related_paper = site.data.publications | where: "id", artifact.publication_id | first %}
              <article class="artifact-row">
                <div class="artifact-kind">
                  <span>{{ artifact.kind }}</span>
                  <strong>{{ artifact.record }}</strong>
                </div>
                <div class="artifact-copy">
                  <h4>{{ artifact.title }}</h4>
                  <p>{{ artifact.summary }}</p>
                  <span class="artifact-stack">{{ artifact.stack }}</span>
                </div>
                <div class="artifact-actions">
                  <a href="{{ artifact.repository_url }}">Repository</a>
                  {% if related_paper.digest_url %}<a href="{{ related_paper.digest_url }}">Digest</a>{% endif %}
                </div>
              </article>
              {% endfor %}
            </div>
          </div>
        </article>
        {% endfor %}
      </div>
    </div>
  </section>

  <section id="selected" class="research-section">
    <div class="research-shell">
      <div class="section-head section-head-row">
        <div>
          <span class="section-label">Research record</span>
          <h2>Selected papers</h2>
        </div>
        <a class="text-link" href="/publications/">All publications</a>
      </div>
      <div class="paper-grid">
        {% for paper in selected_papers %}
        {% assign topic = topics | where: "slug", paper.topic | first %}
        {% assign program = programs | where: "id", paper.program | first %}
        <article class="paper-card {% if forloop.first %}featured{% endif %}">
          {% if paper.image %}
          <div class="paper-image">
            <img src="{{ paper.image }}" alt="{{ paper.title }}" loading="lazy">
          </div>
          {% endif %}
          <div class="paper-body">
            <div class="paper-meta">
              <span>{{ paper.selected_label | default: paper.venue_short }}</span>
              <span>{{ program.hero_title | default: topic.title }}</span>
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

  <section id="connect" class="research-section">
    <div class="research-shell">
      <div class="contact-closing">
        <div class="contact-intro">
          <span class="section-label">Contact</span>
          <h2>Collaboration and exchange</h2>
          <p>I welcome focused conversations around recommender systems, LLM agents, data mining, shared benchmarks, and applied research problems. I am also recruiting student research interns; please get in touch if your interests align with these areas.</p>
          <a class="text-link" href="/collaborations/">Collaboration record</a>
        </div>
        <div class="contact-links contact-links-primary">
          <a href="mailto:dingjiandong2@huawei.com">
            <span>University collaboration</span>
            <strong>dingjiandong2@huawei.com</strong>
          </a>
          <a href="mailto:jdding@fudan.edu.cn">
            <span>Research exchange and invited talks</span>
            <strong>jdding@fudan.edu.cn</strong>
          </a>
        </div>
      </div>
    </div>
  </section>
</main>
