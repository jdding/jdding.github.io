---
layout: research
author_profile: false
title: "Collaborations"
permalink: /collaborations/
classes: wide
description: "Research collaboration, student research internship, invited talk, and applied AI exchange opportunities with Jiandong Ding at Huawei."
---

{% assign collaborations = site.data.research.collaborations %}
{% assign internship = site.data.internships %}

<div class="research-site">
  <section class="research-hero">
    <div class="research-shell hero-layout">
      <div>
        <h1>Collaborations</h1>
        <p class="lede">Research partnerships, industrial research discussions, invited talks, and focused academic exchange.</p>
        <div class="hero-actions">
          <a class="button primary" href="#research-intern" data-scroll-ignore>Research internships</a>
          <a class="button secondary" href="mailto:dingjiandong2@huawei.com?subject=University%20collaboration">Joint research</a>
          <a class="button secondary" href="/#connect">Contact section</a>
        </div>
      </div>
      <aside class="summary-board" aria-label="Collaboration summary">
        <div class="summary-row"><strong>{{ collaborations.size }}</strong><span>institutional collaborations</span></div>
        <div class="summary-row"><strong>{{ site.data.research_programs.size }}</strong><span>current research programs</span></div>
        <div class="summary-row"><strong>Email</strong><span>use Huawei email for university collaboration</span></div>
      </aside>
    </div>
  </section>

  <section id="research-intern" class="research-section">
    <div class="research-shell">
      <div class="section-head">
        <h2>Research internships</h2>
        <p><strong>{{ internship.status }}.</strong> Work with me on recommendation and auditable AI retrieval at Huawei.</p>
      </div>
      <h3>Find a research question</h3>
      <p>Possible starting points for a conversation; the project scope is agreed together.</p>
      <ul>
        <li><strong>Adaptive recommendation:</strong> how should models use stale user histories or adapt under limited computation? Explore <a href="/deltagate/">DeltaGate</a>.</li>
        <li><strong>Semantic-ID diagnostics:</strong> what do mapping collisions and prefix structure reveal before training a generator? Explore <a href="/sidinspector/">SIDInspector</a> and <a href="/sidscope/">SIDScope</a>.</li>
        <li><strong>Agent skill retrieval:</strong> how can retrieval distinguish similar skills with different conditions of use? Explore <a href="/skillcontrast/">SkillContrast</a>.</li>
      </ul>
      <h3>Background and availability</h3>
      <p>Solid machine-learning fundamentals and hands-on Python experience. Relevant research or engineering work is a plus. {{ internship.logistics }}</p>
      <h3>Apply by email</h3>
      <ol>
        <li>Choose a direction and describe one question you would like to explore.</li>
        <li>Attach your CV and include one or two research or code links.</li>
        <li>Include your available dates, duration, days per week and location preferences.</li>
      </ol>
      <div class="hero-actions">
        <a class="button primary" href="mailto:{{ internship.email }}?subject={{ internship.subject | uri_escape }}&amp;body={{ internship.email_body | uri_escape }}">Draft application</a>
        <a class="button secondary" href="/resources/">Explore the code</a>
      </div>
      <p>The button opens an editable draft in your email app. Attach your CV before sending. You can also email <a href="mailto:{{ internship.email }}">{{ internship.email }}</a> directly.</p>
      <details class="program-more">
        <summary>Application email template</summary>
        <p><strong>Subject:</strong> {{ internship.subject }}</p>
        <pre class="application-template">{{ internship.email_body | escape }}</pre>
      </details>
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
