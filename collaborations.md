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
    <div class="research-shell">
      <h1>Collaborations</h1>
      <p class="lede">Research internships, joint research, and invited talks.</p>
      <div class="hero-actions">
        <a class="text-link" href="mailto:dingjiandong2@huawei.com?subject=Research%20collaboration">Discuss a collaboration</a>
      </div>
    </div>
  </section>

  <section id="research-intern" class="research-section">
    <div class="research-shell">
      <div class="section-head">
        <h2>Research internships</h2>
        <p><strong>{{ internship.status }}.</strong> Work with me on recommendation and auditable AI retrieval at Huawei.</p>
      </div>
      <h3>Background and availability</h3>
      <p>Solid machine-learning fundamentals and hands-on Python experience.</p>
      <ul>
        <li>{{ internship.logistics }}</li>
        <li>{{ internship.preference }}</li>
      </ul>
      <h3>Apply by email</h3>
      <ol>
        <li>Choose a direction and describe one question you would like to explore.</li>
        <li>Attach your CV and include one or two research or code links.</li>
        <li>Include your available dates, duration (at least 6 months), days per week and ability to work onsite.</li>
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
      <h3 class="internship-directions">Find a research question</h3>
      <p>Possible starting points for a conversation; the project scope is agreed together.</p>
      <ul>
        <li><strong>Adaptive recommendation:</strong> how should models use stale user histories or adapt under limited computation? Explore <a href="/deltagate/">DeltaGate</a>.</li>
        <li><strong>Semantic-ID diagnostics:</strong> what do mapping collisions and prefix structure reveal before training a generator? Explore <a href="/sidinspector/">SIDInspector</a> and <a href="/sidscope/">SIDScope</a>.</li>
        <li><strong>Agent skill retrieval:</strong> how can retrieval distinguish similar skills with different conditions of use? Explore <a href="/skillcontrast/">SkillContrast</a>.</li>
      </ul>
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
