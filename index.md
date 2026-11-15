---
layout: default
author_profile: false
title: "Jiandong Ding (丁建栋) | Principal Algorithm Expert at Huawei"
description: "Jiandong Ding (丁建栋) is a Principal Algorithm Expert at Huawei working on recommender systems, LLM agents, data mining, and reliable AI retrieval."
classes: wide
---

<link rel="stylesheet" href="/assets/css/research-system.css?v=simplify-20261115">
{% include research-nav.html %}

{% assign topics = site.data.topics | sort: "order" %}
{% assign programs = site.data.research_programs | sort: "order" %}
{% assign selected_papers = site.data.publications | where_exp: "item", "item.hidden != true" | where: "selected", true %}
{% assign publications = site.data.publications | where_exp: "item", "item.hidden != true" %}

<main id="main" class="research-site homepage">
  <section class="research-hero">
    <div class="research-shell hero-layout">
      <div class="hero-copy">
        <h1>Jiandong Ding <span class="identity-native-name">(丁建栋)</span></h1>
        <p class="hero-role">Principal Algorithm Expert · Huawei</p>
        <a class="mobile-selected-link" href="#selected" data-scroll-ignore>Selected papers →</a>
        <p class="lede">Since 2012, I have worked on applied AI and data systems across IBM, Bosch, Alibaba DAMO Academy, and Huawei. My current research asks how recommendation and AI retrieval systems can remain reliable as users, catalogs, tasks, and interfaces change.</p>
        <div class="identity-facts" aria-label="Professional profile">
          <div>
            <span>Current focus</span>
            <p>Adaptive recommendation · Auditable AI retrieval</p>
          </div>
        </div>
        <div class="hero-actions" aria-label="Primary actions">
          <a class="button primary" href="#research" data-scroll-ignore>Explore research</a>
          <a class="text-link" href="/publications/">Publications</a>
          <a class="text-link" href="/collaborations/#research-intern">Research internships</a>
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
      <div class="section-head section-head-row">
        <h2>Research</h2>
        <a class="text-link" href="/resources/">Open-source examples →</a>
      </div>
      <div class="research-program-stack">
        {% for program in programs %}
        <article id="program-{{ program.id }}" class="research-program-block">
          <div class="program-overview">
            <h3>{{ program.title }}</h3>
            <p>{{ program.summary }}</p>
          </div>
          <ul class="program-examples">
            {% for paper_id in program.representative_publication_ids %}
            {% assign paper = publications | where: "id", paper_id | first %}
            {% if paper %}
            <li data-publication-id="{{ paper.id }}">
              <a class="program-paper-link" href="{{ paper.digest_url }}">{{ paper.contribution.label }}</a> {% include publication-status.html paper=paper %}
              <p>{{ paper.contribution.mechanism }} <span class="program-evidence">{{ paper.contribution.evidence }}</span></p>
            </li>
            {% endif %}
            {% endfor %}
          </ul>
        </article>
        {% endfor %}
      </div>
      <p id="trajectory" class="research-history">My earlier work spans biological sequence analysis, weak supervision, text classification, and graph learning. Alongside recommendation and retrieval, I also study AI systems in operation, including disaggregated LLM serving.</p>
    </div>
  </section>

  <section id="selected" class="research-section">
    <div class="research-shell">
      <span id="updates" class="anchor-alias" aria-hidden="true"></span>
      <span id="recent-publications" class="anchor-alias" aria-hidden="true"></span>
      <div class="section-head section-head-row">
        <div>
          <h2>Selected papers</h2>
        </div>
        <a class="text-link" href="/publications/">All publications</a>
      </div>
      <div class="paper-grid">
        {% for paper in selected_papers %}
        {% assign topic = topics | where: "slug", paper.topic | first %}
        {% if paper.program %}{% assign program = programs | where: "id", paper.program | first %}{% else %}{% assign program = nil %}{% endif %}
        <article class="paper-card {% if forloop.first %}featured{% endif %}">
          {% if paper.image %}
          <div class="paper-image">
            <img src="{% if paper.card_image %}{{ paper.card_image }}{% else %}{{ paper.image }}{% endif %}" alt="{{ paper.title }}" loading="lazy">
          </div>
          {% endif %}
          <div class="paper-body">
            <div class="paper-meta">
              <span>{% include publication-venue.html paper=paper %} {% include publication-status.html paper=paper %}</span>
              <span>{{ program.hero_title | default: paper.research_context | default: topic.title }}</span>
            </div>
            <h3><a class="paper-title-link" href="{{ paper.digest_url }}">{{ paper.title }}</a></h3>
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
          <h2>Collaboration and internships</h2>
          <p>{{ site.data.internships.status }} at Huawei.</p>
          <a class="text-link" href="/collaborations/#research-intern">Requirements and application →</a>
        </div>
        <div class="contact-actions">
          <a href="mailto:dingjiandong2@huawei.com?subject=Research%20collaboration%20or%20internship">dingjiandong2@huawei.com</a>
          <nav class="profile-links" aria-label="Professional profiles">
            <a rel="me" href="https://scholar.google.com/citations?user=5-e7wi4AAAAJ">Google Scholar</a>
            <a rel="me" href="https://github.com/jdding">GitHub</a>
            <a rel="me" href="https://www.linkedin.com/in/jiandong-ding-60498833/">LinkedIn</a>
          </nav>
        </div>
      </div>
    </div>
  </section>
</main>
