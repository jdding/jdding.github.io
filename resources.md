---
layout: research
title: "Open-source quickstarts"
permalink: /resources/
description: "Choose and run a small CPU example for DeltaGate, SIDInspector or SIDScope, with inputs, expected outputs and next steps."
---
<!-- Hallmark · pre-emit critique: P5 H4 E4 S5 R5 V4; existing research-site tokens retained. -->
<div class="research-site">
  <section class="research-hero">
    <div class="research-shell">
      <h1>Start with a small example</h1>
      <p class="lede">Try frozen-backbone recommendation or inspect Semantic-ID mappings. Each entry explains what you need, what the example produces, and where to go next.</p>
      <nav class="hero-actions" aria-label="Choose a resource">
        {% for artifact in site.data.open_source %}<a class="button secondary" href="#{{ artifact.id }}" data-scroll-ignore>{{ artifact.title }}</a>{% endfor %}
      </nav>
      <p>Commands below use macOS/Linux shells and a separate virtual environment for each repository. SIDInspector and SIDScope share a Python import name, so keep their environments separate. On Windows, activate with <code>.venv\Scripts\activate</code> instead.</p>
    </div>
  </section>
  {% for artifact in site.data.open_source %}
  {% assign start = artifact.onboarding %}
  {% assign paper = site.data.publications | where: "id", artifact.publication_id | first %}
  <section id="{{ artifact.id }}" class="research-section resource-quickstart">
    <div class="research-shell">
      <div class="section-head"><h2>{{ artifact.title }}</h2><p>{{ artifact.summary }}</p></div>
      <dl class="digest-record">
        <div><dt>Requirements</dt><dd>{{ start.requirements }}</dd></div>
        <div><dt>Example input</dt><dd>{{ start.input }}</dd></div>
        <div><dt>Expected output</dt><dd>{{ start.output }}</dd></div>
      </dl>
      <h3>Run the first check</h3>
      <pre class="quickstart-code"><code>{{ start.commands | escape }}</code></pre>
      <p>{{ start.interpretation }}</p>
      <div class="hero-actions">
        <a class="button primary" href="{{ start.guide_url }}">Use your own data</a>
        <a class="button secondary" href="{{ artifact.repository_url }}">Repository</a>
        <a class="button secondary" href="{{ paper.digest_url }}">Paper digest</a>
      </div>
      <p class="record-meta">Instructions checked against the <a href="{{ start.source_url }}">example source</a> on {{ start.reviewed_on }}. Commands pin that revision; expected outputs describe the bundled example, not a fresh reproduction of paper results.</p>
    </div>
  </section>
  {% endfor %}
</div>
