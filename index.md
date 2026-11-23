---
layout: default
author_profile: false
title: "Jiandong Ding (丁建栋) | Principal Algorithm Expert at Huawei"
description: "Jiandong Ding (丁建栋) is a Principal Algorithm Expert at Huawei working on recommender systems, LLM agents, data mining, and reliable AI retrieval."
classes: wide
---

{% include research-nav.html %}

{% assign topics = site.data.topics | sort: "order" %}
{% assign programs = site.data.research_programs | sort: "order" %}
{% assign selected_papers = site.data.publications | where_exp: "item", "item.hidden != true" | where: "selected", true %}
{% assign publications = site.data.publications | where_exp: "item", "item.hidden != true" %}

<main id="main" class="research-site homepage">
  <section class="research-hero">
    <div class="research-shell hero-layout hero-copy">
      <header class="hero-identity">
        <h1>Jiandong Ding <span class="identity-native-name">(丁建栋)</span></h1>
        <p class="hero-role">Principal Algorithm Expert · Huawei</p>
      </header>
      <img class="identity-portrait" src="/assets/images/Profile.webp" width="500" height="494" alt="Portrait of Jiandong Ding" fetchpriority="high">
      <div class="hero-details">
        <nav class="profile-links" aria-label="Contact and professional profiles">
          <a href="mailto:{{ site.data.internships.email }}">Email</a>
          {% assign profile_names = 'Google Scholar,GitHub,LinkedIn' | split: ',' %}
          {% for profile_name in profile_names %}
            {% assign profile = site.social_media | where: 'name', profile_name | first %}
            {% if profile %}<a rel="me" href="{{ profile.url }}">{{ profile.name }}</a>{% endif %}
          {% endfor %}
        </nav>
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
          <a class="mobile-selected-link" href="#selected" data-scroll-ignore>Selected papers →</a>
        </div>
      </div>
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
            <h3><a class="paper-title-link" href="{{ program.url }}">{{ program.title }}</a></h3>
            <p>{{ program.summary }}</p>
            <a class="text-link program-detail-link" href="{{ program.url }}">Research line &amp; papers →</a>
          </div>
          <ul class="program-examples">
            {% for paper_id in program.representative_publication_ids %}
            {% assign paper = publications | where: "id", paper_id | first %}
            {% if paper %}
            <li data-publication-id="{{ paper.id }}">
              <div class="program-paper-meta">
                <a class="program-paper-link" href="{{ paper.digest_url }}">{{ paper.contribution.label }}</a>
                <span class="paper-venue">{% include publication-venue.html paper=paper %}</span>
                {% include publication-status.html paper=paper %}
                {% if paper.contribution.author_role %}<span class="paper-context">{{ paper.contribution.author_role | escape }}</span>{% endif %}
              </div>
              <p>{{ paper.contribution.mechanism }} <span class="program-evidence">{{ paper.contribution.evidence }}</span></p>
            </li>
            {% endif %}
            {% endfor %}
          </ul>
        </article>
        {% endfor %}
      </div>
      <p id="trajectory" class="research-history">My earlier work spans biological sequence analysis, weak supervision, text classification, and graph learning. Alongside recommendation and retrieval, I also study AI systems in operation, including disaggregated LLM serving, and maintain <a class="text-link" href="https://jdding.github.io/recarch/">RecArch</a>, a bilingual atlas of production recommender architectures for humans and AI agents.</p>
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
        <article class="paper-card">
          <div class="paper-body">
            <div class="paper-meta">
              <span class="paper-venue">{% include publication-venue.html paper=paper %}</span>
              {% include publication-status.html paper=paper %}
              <span class="paper-context">{{ program.hero_title | default: paper.research_context | default: topic.title }}</span>
            </div>
            <h3><a class="paper-title-link" href="{{ paper.digest_url }}">{{ paper.title }}</a></h3>
            <div class="paper-description">
              <p>{{ paper.selected_summary }}</p>
              {% if paper.selected_evidence %}<p class="paper-evidence">{{ paper.selected_evidence | escape }}</p>{% endif %}
            </div>
            <div class="record-actions">
              {% if paper.digest_url %}<a class="pill digest" href="{{ paper.digest_url }}">Digest</a>{% endif %}
              {% include publication-links.html paper=paper prefer_paper=true %}
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
          <a href="mailto:{{ site.data.internships.email }}?subject=Research%20collaboration%20or%20internship">{{ site.data.internships.email }}</a>
        </div>
      </div>
    </div>
  </section>
</main>
