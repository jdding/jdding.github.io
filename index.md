---
layout: default
author_profile: false
title: "Jiandong Ding (丁建栋) | Principal Algorithm Expert at Huawei"
description: "Jiandong Ding (丁建栋) is a Principal Algorithm Expert at Huawei working on recommender systems, LLM agents, data mining, and reliable AI retrieval."
classes: wide
---

<link rel="stylesheet" href="/assets/css/research-system.css?v=research-20261028">
{% include research-nav.html %}

{% assign topics = site.data.topics | sort: "order" %}
{% assign programs = site.data.research_programs | sort: "order" %}
{% assign public_artifacts = site.data.open_source | where_exp: "item", "item.hidden != true" | sort: "order" %}
{% assign selected_papers = site.data.publications | where_exp: "item", "item.hidden != true" | where: "selected", true %}
{% assign publications = site.data.publications | where_exp: "item", "item.hidden != true" %}
{% assign news_events = site.data.news | sort: "date" | reverse %}

<main id="main" class="research-site homepage">
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
      <div class="section-head">
        <h2>Two questions guide my research</h2>
        <p>How should a recommender adapt when its evidence changes? How can we inspect the interfaces on which AI retrieval depends?</p>
        <a class="text-link" href="/resources/">Try the open-source examples →</a>
      </div>
      <div class="research-program-stack">
        {% for program in programs %}
        <article id="program-{{ program.id }}" class="research-program-block">
          <div class="program-overview">
            <span class="program-index">{{ program.number }}</span>
            <div>
              <h3>{{ program.title }}</h3>
              <p>{{ program.summary }}</p>
            </div>
          </div>
          <div class="contribution-list">
            {% for paper_id in program.representative_publication_ids %}
            {% assign paper = publications | where: "id", paper_id | first %}
            {% if paper %}
            <article class="contribution-item" data-publication-id="{{ paper.id }}">
              <h4><a href="{{ paper.digest_url }}">{{ paper.contribution.label }}</a></h4>
              <div class="record-meta">{% include publication-venue.html paper=paper %} {% include publication-status.html paper=paper %}</div>
              <p>{{ paper.contribution.problem }} {{ paper.contribution.mechanism }}</p>
              <p class="contribution-evidence"><strong>Evidence.</strong> {{ paper.contribution.evidence }} <span>{{ paper.contribution.boundary }}</span></p>
              <div class="record-actions">{% include publication-links.html paper=paper digest=true %}</div>
            </article>
            {% endif %}
            {% endfor %}
          </div>
          <details class="program-more">
            <summary>More work and resources</summary>
            <ul>
              {% assign program_papers = publications | where: "program", program.id %}
              {% for paper in program_papers %}
              {% unless program.representative_publication_ids contains paper.id %}
              <li><a href="{{ paper.digest_url }}">{{ paper.title }}</a> <span class="record-meta">{% include publication-venue.html paper=paper %} {% include publication-status.html paper=paper %}</span></li>
              {% endunless %}
              {% endfor %}
            </ul>
            <div class="program-resources">
              {% for artifact in public_artifacts %}
              {% assign resource_paper = publications | where: "id", artifact.publication_id | first %}
              {% if resource_paper.program == program.id %}
              <a href="/resources/#{{ artifact.id }}">{{ artifact.title }} · Quickstart</a>
              {% endif %}
              {% endfor %}
            </div>
          </details>
        </article>
        {% endfor %}
      </div>
    </div>
  </section>

  <section id="selected" class="research-section">
    <div class="research-shell">
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

  <section id="updates" class="research-section compact-section">
    <div class="research-shell">
      <span id="recent-publications" class="anchor-alias" aria-hidden="true"></span>
      <div class="section-head section-head-row">
        <h2>Latest updates</h2>
        <a class="text-link" href="/publications/">Full publication record</a>
      </div>
      <ul class="news-list">
        <li>
          <time datetime="2026-10-31">2026-10-31</time>
          <div>
            <span>Project launched</span>
            <a href="https://jdding.github.io/recarch/">RecArch: The atlas of recommender system architecture</a>
          </div>
        </li>
        {% assign rendered_news = 1 %}
        {% for event in news_events %}
        {% assign paper = publications | where: "id", event.publication_id | first %}
        {% if paper and rendered_news < 3 %}
        <li>
          <time datetime="{{ event.date }}">{{ event.date }}</time>
          <div>
            <span>{% if event.type == "accepted" %}Accepted in {% include publication-venue.html paper=paper %}{% elsif event.type == "published" %}Published in {% include publication-venue.html paper=paper %}{% else %}Preprint released{% endif %}</span>
            <a href="{{ paper.digest_url }}">{{ paper.title }}</a>
          </div>
        </li>
        {% assign rendered_news = rendered_news | plus: 1 %}
        {% endif %}
        {% endfor %}
      </ul>
    </div>
  </section>

  <section id="trajectory" class="research-section">
    <div class="research-shell">
      <div class="section-head">
        <h2>Research foundations and connections</h2>
        <p>These strands connect my earlier learning methods, current recommendation and retrieval work, and experience with operating AI systems.</p>
      </div>
      <div class="research-trajectory">
        {% for strand in site.data.research_trajectory %}
        <article>
          <h3>{{ strand.title }}</h3>
          <p>{{ strand.text }}</p>
          <ul>
            {% for paper_id in strand.publication_ids %}
            {% assign paper = publications | where: "id", paper_id | first %}
            {% if paper %}<li><a href="{{ paper.digest_url }}">{{ paper.title }}</a></li>{% endif %}
            {% endfor %}
          </ul>
          {% if strand.id == "systems" %}<a class="text-link" href="/patents/">Public patent record</a>{% endif %}
        </article>
        {% endfor %}
      </div>
    </div>
  </section>

  <section id="connect" class="research-section">
    <div class="research-shell">
      <div class="contact-closing">
        <div class="contact-intro">
          <h2>Collaboration and exchange</h2>
          <p>I welcome focused conversations around recommender systems, LLM agents, data mining, shared benchmarks, and applied research problems. I am also recruiting student research interns; see the <a href="/collaborations/#research-intern">Research Intern section</a> for how to apply.</p>
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
          <a href="https://jdding.github.io/recarch/">
            <span>Recommender architecture atlas</span>
            <strong>RecArch</strong>
          </a>
        </div>
      </div>
    </div>
  </section>
</main>
