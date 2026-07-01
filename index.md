---
layout: single
author_profile: true
title: "AI Architecture Expert & Senior Algorithm Expert"
description: "Jiandong Ding's academic profile on recommender systems, LLM serving architecture, trustworthy AI, and edge-cloud collaborative AI."
classes: wide home-page
---

{% assign profile = site.data.research.profile %}
{% assign metrics = site.data.research.publicationMetrics %}
{% assign grouped_projects = site.data.research.researchProjects | group_by: "focus" %}

<section class="home-hero" itemscope itemtype="https://schema.org/Person">
  <p class="home-hero__eyebrow">Academic and industrial AI research profile</p>
  <h1 itemprop="name">{{ profile.name }}</h1>
  <p class="home-hero__lead">
    <span itemprop="jobTitle">{{ profile.title }}</span> at
    <span itemprop="worksFor">{{ profile.organization }}</span>, working on
    billion-scale recommender systems, LLM serving architecture, trustworthy ranking,
    and edge-cloud collaborative AI.
  </p>

  <nav class="home-actions" aria-label="Primary profile links">
    <a class="home-button home-button--primary" href="{{ '/publications' | relative_url }}">Publications</a>
    <a class="home-button" href="{{ '/collaborations' | relative_url }}">Collaborations</a>
    <a class="home-button" href="{{ '/api/research.json' | relative_url }}">Research JSON</a>
    <a class="home-button" href="{{ '/llms.txt' | relative_url }}">LLM Summary</a>
  </nav>

  <div class="home-metrics" aria-label="Research profile metrics">
    <div class="metric">
      <span class="metric__value">{{ metrics.totalCitations }}</span>
      <span class="metric__label">Citations</span>
    </div>
    <div class="metric">
      <span class="metric__value">{{ metrics.totalPublications }}</span>
      <span class="metric__label">Publications</span>
    </div>
    <div class="metric">
      <span class="metric__value">{{ metrics.hIndex }}</span>
      <span class="metric__label">h-index</span>
    </div>
    <div class="metric">
      <span class="metric__value">{{ metrics.i10Index }}</span>
      <span class="metric__label">i10-index</span>
    </div>
  </div>
</section>

<section aria-labelledby="research-focus">
  <p class="section-kicker">Research Focus</p>
  <h2 id="research-focus">From biological sequences to user behaviors</h2>
  <p>
    My work connects representation learning, causal reasoning, and production-scale
    systems. The current focus is next-generation recommendation driven by generative AI,
    with a practical emphasis on serving efficiency and trustworthy user modeling.
  </p>

  <div class="focus-grid">
    <article class="focus-card">
      <h3>Generative & Trustworthy RecSys</h3>
      <p>LLM-driven recommendation, sequential modeling, causal inference, and unbiased learning for ranking systems.</p>
    </article>
    <article class="focus-card">
      <h3>Extreme Efficiency at Scale</h3>
      <p>Retrieval architecture, model compression, embedding efficiency, and edge-cloud collaboration for production workloads.</p>
    </article>
    <article class="focus-card">
      <h3>LLM Agents & Data Intelligence</h3>
      <p>Evaluation benchmarks and agentic data interfaces that turn business questions into reliable analytical workflows.</p>
    </article>
  </div>
</section>

<section aria-labelledby="news">
  <p class="section-kicker">Updates</p>
  <h2 id="news">News</h2>
  <ul class="news-list">
    {% for item in site.data.research.news %}
    <li>
      <span class="news-date">{{ item.date }}</span>
      {{ item.title }}
    </li>
    {% endfor %}
  </ul>
</section>

<section aria-labelledby="featured-research">
  <p class="section-kicker">Selected Work</p>
  <h2 id="featured-research">Research highlights</h2>
  <p>
    These projects summarize the current arc of my research: better recommendation
    objectives, faster serving paths, and AI systems that are easier to evaluate.
  </p>

  {% for group in grouped_projects %}
  <section class="research-cluster" aria-labelledby="cluster-{{ forloop.index }}">
    <h3 id="cluster-{{ forloop.index }}">{{ group.name }}</h3>
    <div class="research-grid">
      {% for project in group.items %}
      <article class="research-card" itemscope itemtype="https://schema.org/ScholarlyArticle">
        <a href="{{ project.url | relative_url }}" aria-label="{{ project.shortTitle }}">
          <img src="{{ project.image | relative_url }}" alt="{{ project.shortTitle }}" loading="lazy" itemprop="image">
        </a>
        <div class="research-card__body">
          <div class="research-card__meta">{{ project.venue }} · {{ project.year }}</div>
          <h4 itemprop="headline">{{ project.shortTitle }}</h4>
          <p><span class="hl-tag tag-prob">Problem</span> <span itemprop="abstract">{{ project.problem }}</span></p>
          <p><span class="hl-tag tag-sol">Contribution</span> <span itemprop="description">{{ project.breakthrough }}</span></p>
          <meta itemprop="publisher" content="{{ project.publisher }}">
          <meta itemprop="datePublished" content="{{ project.year }}">
          <link itemprop="url" href="{{ project.url | absolute_url }}">
          <ul class="tag-row" aria-label="Research tags">
            {% for tag in project.tags %}
            <li itemprop="about">{{ tag }}</li>
            {% endfor %}
          </ul>
        </div>
      </article>
      {% endfor %}
    </div>
  </section>
  {% endfor %}
</section>

<section class="geo-panel" aria-labelledby="machine-readable-profile">
  <p class="section-kicker">GEO</p>
  <h2 id="machine-readable-profile">Machine-readable research profile</h2>
  <p>
    Search engines, scholarly indexers, and AI assistants can use the structured
    endpoints below to resolve this profile, publications, collaborations, and research areas.
  </p>
  <ul class="resource-list">
    <li><a href="{{ '/api/research.json' | relative_url }}">Research JSON</a></li>
    <li><a href="{{ '/api/knowledge-graph.json' | relative_url }}">Knowledge graph</a></li>
    <li><a href="{{ '/sitemap-extended.xml' | relative_url }}">Extended sitemap</a></li>
    <li><a href="{{ '/faq/' | relative_url }}">FAQ page</a></li>
  </ul>
</section>

<section class="contact-panel" aria-labelledby="contact">
  <p class="section-kicker">Contact</p>
  <h2 id="contact">Get in touch</h2>
  <p>
    I am open to academic partnerships, collaborative research, grant applications,
    industry summits, and technical forums around recommender systems and AI infrastructure.
  </p>
  <p>For collaboration inquiries: <strong>jdding [at] fudan.edu.cn</strong></p>
</section>
