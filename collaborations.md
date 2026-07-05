---
layout: single
author_profile: false
title: "Collaborations"
permalink: /collaborations/
classes: wide
schema:
  "@context": "https://schema.org"
  "@type": "Article"
  "headline": "Research Collaborations"
  "author":
    "@type": "Person"
    "name": "Jiandong Ding (丁建栋)"
    "url": "https://jdding.github.io"
  "dateModified": "2026-07-04"
  "description": "Research collaboration routes and institutional collaboration history."
---

<link rel="stylesheet" href="/assets/css/research-system.css?v=typography-20260705">
{% include research-nav.html %}

{% assign collaborations = site.data.research.collaborations %}

<div class="research-site">
  <section class="research-hero">
    <div class="research-shell hero-layout">
      <div>
        <h1>Collaborations</h1>
        <p class="lede">Research partnerships, industrial research discussions, invited talks, and focused academic exchange.</p>
        <div class="hero-actions">
          <a class="button primary" href="mailto:dingjiandong2@huawei.com?subject=University%20collaboration">University collaboration</a>
          <a class="button secondary" href="/#connect">Contact section</a>
        </div>
      </div>
      <aside class="summary-board" aria-label="Collaboration summary">
        <div class="summary-row"><strong>{{ collaborations.size }}</strong><span>institutional collaborations</span></div>
        <div class="summary-row"><strong>3</strong><span>current research directions</span></div>
        <div class="summary-row"><strong>Email</strong><span>use Huawei email for university collaboration</span></div>
      </aside>
    </div>
  </section>

  <section class="research-section">
    <div class="research-shell">
      <div class="section-head">
        <h2>Collaboration routes</h2>
        <p>The best exchanges start from a concrete research problem, benchmark, system question, or publication direction.</p>
      </div>
      <div class="contact-list">
        <article class="contact-card">
          <div class="contact-stat">Academic</div>
          <div>
            <h3>Joint research and resources</h3>
            <p>Paper collaboration, benchmark design, resource building, and student or lab exchange. Use dingjiandong2@huawei.com for university collaboration.</p>
          </div>
        </article>
        <article class="contact-card">
          <div class="contact-stat">Industry</div>
          <div>
            <h3>Production-scale research problems</h3>
            <p>Recommendation architecture, agent evaluation, retrieval systems, and data-intelligence problems at scale.</p>
          </div>
        </article>
        <article class="contact-card">
          <div class="contact-stat">Talks</div>
          <div>
            <h3>Invited talks and professional events</h3>
            <p>Focused talks on recommender systems, LLM agents, data mining, and applied AI systems.</p>
          </div>
        </article>
      </div>
    </div>
  </section>

  <section class="research-section">
    <div class="research-shell">
      <div class="section-head">
        <h2>Institutional collaboration history</h2>
        <p>Current and past institutional collaborations.</p>
      </div>
      <div class="record-list">
        <section class="year-block">
          <div class="year-label">Institutions</div>
          <div class="record-stack">
            {% for item in collaborations %}
            <article class="record-item">
              <div>
                <h3>{{ item.name }}</h3>
                <div class="record-meta">{{ item.location }}<br>{{ item.focus }}</div>
              </div>
              <div class="record-actions">
                <span class="pill link">{{ item.status }}</span>
                <span class="pill">{{ item.period }}</span>
              </div>
            </article>
            {% endfor %}
          </div>
        </section>
      </div>
    </div>
  </section>
</div>
