---
layout: research
author_profile: false
title: "Collaborations"
permalink: /collaborations/
classes: wide
description: "Research collaboration, student research internship, invited talk, and applied AI exchange opportunities with Jiandong Ding at Huawei."
---

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

  <section id="research-intern" class="research-section">
    <div class="research-shell">
      <div class="section-head">
        <h2>Research internships</h2>
        <p>I recruit student research interns into the research directions on this site. Logistics such as location, working mode, and duration are discussed individually during the first conversation.</p>
      </div>
      <div class="topic-page-grid">
        <article class="topic-card">
          <h3>Research themes</h3>
          <p>Reliable recommendation under changing users, catalogs, and deployment constraints; auditable AI retrieval, including AI search, agent skill retrieval, and Semantic-ID interface diagnostics; and data-mining methods for weak and noisy evidence.</p>
        </article>
        <article class="topic-card">
          <h3>Background and skills</h3>
          <p>Solid machine-learning fundamentals and hands-on Python experience. Interest in recommendation, retrieval, or LLM systems matters more than a specific prior topic; published research or engineering work on large-scale systems is a plus.</p>
        </article>
        <article class="topic-card">
          <h3>How to apply</h3>
          <p>Email dingjiandong2@huawei.com with the subject starting "Research Intern Application". Include your CV, the period you are available, one or two research or code samples (links are fine), and the direction you want to work on.</p>
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
                <div class="record-meta meta-lines">
                  <span>{{ item.location }}</span>
                  <span>{{ item.focus }}</span>
                </div>
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
