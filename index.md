---
layout: default
author_profile: false
title: "Jiandong Ding (丁建栋) | Principal Algorithm Expert at Huawei"
description: "Jiandong Ding (丁建栋) is a Principal Algorithm Expert at Huawei working on recommender systems, LLM agents, data mining, and reliable AI retrieval."
classes: wide
---

<link rel="stylesheet" href="/assets/css/research-system.css?v=seo-20260912">
{% include research-nav.html %}

{% assign topics = site.data.topics | sort: "order" %}
{% assign programs = site.data.research_programs | sort: "order" %}
{% assign public_artifacts = site.data.open_source | sort: "order" %}
{% assign selected_papers = site.data.publications | where: "selected", true %}
{% assign recent_papers = site.data.publications | slice: 0, 6 %}

<main id="main" class="research-site">
  <section class="research-hero">
    <div class="research-shell hero-layout">
      <div class="hero-copy">
        <h1>Jiandong Ding <span class="identity-native-name">(丁建栋)</span></h1>
        <p class="hero-role">Principal Algorithm Expert · Huawei</p>
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

  <section id="recent-publications" class="research-section">
    <div class="research-shell">
      <div class="section-head section-head-row">
        <div>
          <span class="section-label">Recent work</span>
          <h2>Recent publications</h2>
        </div>
        <a class="text-link" href="/publications/">Full publication record</a>
      </div>
      <div class="record-list">
        <section class="year-block">
          <div class="year-label">Recent</div>
          <div class="record-stack">
            {% for paper in recent_papers %}
            {% assign topic = topics | where: "slug", paper.topic | first %}
            <article id="recent-{{ paper.id }}" class="record-item">
              <div>
                <h3><a class="record-title-link" href="{{ paper.digest_url }}">{{ paper.title }}</a></h3>
                <div class="record-meta meta-lines">
                  <span>{{ paper.authors }}</span>
                  <span>{{ paper.venue_short }} {{ paper.year }}</span>
                </div>
              </div>
              <div class="record-actions">
                {% if topic %}<a class="pill topic" href="/topics/{{ topic.slug }}/">{{ topic.title }}</a>{% endif %}
                {% if paper.paper_url %}<a class="pill link" href="{{ paper.paper_url }}">{{ paper.paper_label | default: "Paper" }}</a>{% endif %}
              </div>
            </article>
            {% endfor %}
          </div>
        </section>
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
          <span class="section-label">Contact</span>
          <h2>Collaboration and exchange</h2>
          <p>I welcome focused conversations around recommender systems, LLM agents, data mining, shared benchmarks, and applied research problems. I am also recruiting student research interns; please get in touch if your interests align with these areas.</p>
          <a class="text-link" href="/collaborations/">Collaboration record</a>
        </div>
        <div class="contact-links contact-links-primary">
          <a href="mailto:dingjiandong2@huawei.com?subject=Research%20collaboration%20or%20internship">
            <span>Research collaboration, internships, and invited talks</span>
            <strong>dingjiandong2@huawei.com</strong>
          </a>
          <a rel="me" href="https://scholar.google.com/citations?user=5-e7wi4AAAAJ">
            <span>Publication and citation profile</span>
            <strong>Google Scholar</strong>
          </a>
          <a rel="me" href="https://github.com/jdding">
            <span>Open-source research artifacts</span>
            <strong>GitHub</strong>
          </a>
          <a rel="me" href="https://www.linkedin.com/in/jiandong-ding-60498833/">
            <span>Professional profile</span>
            <strong>LinkedIn</strong>
          </a>
        </div>
      </div>
    </div>
  </section>
</main>
