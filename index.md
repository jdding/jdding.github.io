---
layout: single
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
  "description": "Researcher and engineer studying reliable recommendation and AI retrieval systems under changing users, catalogs, tasks, and interfaces."
  "url": "https://jdding.github.io"
  "sameAs":
    - "https://www.linkedin.com/in/jiandong-ding-60498833/"
    - "https://github.com/jdding"
---

<link rel="stylesheet" href="/assets/css/research-system.css?v=homepage-20260823">
{% include research-nav.html %}

{% assign topics = site.data.topics | sort: "order" %}
{% assign programs = site.data.research_programs | sort: "order" %}
{% assign projects = site.data.projects | sort: "order" %}
{% assign selected_papers = site.data.publications | where: "selected", true %}

<div class="research-site">
  <section class="research-hero">
    <div class="research-shell hero-layout">
      <div class="hero-copy">
        <h1>Jiandong Ding</h1>
        <p class="hero-role">Principal Algorithm Expert · Huawei Technologies Co. Ltd.</p>
        <p class="lede">I study reliable recommendation and AI retrieval systems under changing users, catalogs, tasks, and interfaces. My work focuses on adaptive recommendation, evidence validity, and deployment-safe optimization.</p>
        <div class="hero-programs" aria-label="Research programs">
          {% for program in programs %}
          <a class="hero-program-link" href="#program-{{ program.id }}">
            <span>{{ program.number }}</span>
            <span>
              <strong>{{ program.hero_title }}</strong>
              <em>{{ program.hero_short }}</em>
            </span>
          </a>
          {% endfor %}
        </div>
        <div class="hero-actions" aria-label="Primary actions">
          <a class="button primary" href="/publications/">Publications</a>
          <a class="text-link" href="#connect">Contact</a>
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
        <h2>Research programs</h2>
      </div>
      <div class="program-list">
        {% for program in programs %}
        <article id="program-{{ program.id }}" class="program-row">
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
        </article>
        {% endfor %}
      </div>
    </div>
  </section>

  <section id="selected" class="research-section">
    <div class="research-shell">
      <div class="section-head section-head-row">
        <div>
          <span class="section-label">Public record</span>
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

  <section id="current-work" class="research-section">
    <div class="research-shell">
      <div class="section-head">
        <span class="section-label">In progress</span>
        <h2>Current work</h2>
      </div>
      <div class="project-program-grid">
        {% for program in programs %}
        {% assign program_projects = projects | where: "program", program.id %}
        <section class="project-program" aria-label="{{ program.hero_title }} current work">
          <div class="project-program-head">
            <span>{{ program.number }}</span>
            <h3>{{ program.hero_title }}</h3>
          </div>
          <div class="project-stack">
            {% for project in program_projects %}
            <article id="project-{{ project.id }}" class="project-card">
              <span>{{ project.label }}</span>
              <h3>{{ project.title }}</h3>
              <p>{{ project.summary }}</p>
            </article>
            {% endfor %}
          </div>
        </section>
        {% endfor %}
      </div>
    </div>
  </section>

  <section id="trajectory" class="research-section">
    <div class="research-shell">
      <div class="section-head">
        <span class="section-label">Background</span>
        <h2>Research trajectory</h2>
      </div>
      <div class="timeline" aria-label="Research trajectory">
        <div class="timeline-row">
          <time>2026</time>
          <p>Zero-observation user reactivation, generative recommendation, AI retrieval, Semantic-ID diagnostics, and agent skill retrieval.</p>
        </div>
        <div class="timeline-row">
          <time>2025-2024</time>
          <p>Dynamic graph recommendation, NL2SQL evaluation, LLM serving, and efficient recommendation models.</p>
        </div>
        <div class="timeline-row">
          <time>2023-2021</time>
          <p>Continual graph learning, neural topic modeling, weak supervision, robust learning, and live-streaming field experiments.</p>
        </div>
        <div class="timeline-row">
          <time>2012-2010</time>
          <p>miRNA target prediction, genome-scale sequence analysis, and structured data mining.</p>
        </div>
      </div>
    </div>
  </section>

  <section id="connect" class="research-section">
    <div class="research-shell">
      <div class="section-head">
        <span class="section-label">Contact</span>
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
