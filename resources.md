---
layout: research
title: "Open-source quickstarts"
permalink: /resources/
description: "Run a small CPU example for DeltaGate, SIDInspector, SIDScope, or FocalSwap, with inputs, expected outputs, and next steps."
---
<!-- Hallmark · pre-emit critique: P5 H4 E4 S5 R5 V4; existing research-site tokens retained. -->
<div class="research-site">
  <section class="research-hero">
    <div class="research-shell">
      <h1>Start with a small example</h1>
      <p class="lede">Adapt a frozen recommender, inspect Semantic-ID mappings, or test how search episodes affect rankings. Each quickstart explains what you need, what the example produces, and how to use it with your own data.</p>
      <h2 id="choose-a-resource">Choose a resource</h2>
      <table class="resource-picker" aria-labelledby="choose-a-resource">
        <thead><tr><th scope="col">Resource</th><th scope="col">Use it to</th><th scope="col">When</th></tr></thead>
        <tbody>
          {% for artifact in site.data.open_source %}
          <tr>
            <th scope="row"><a class="text-link" href="#{{ artifact.id }}" data-scroll-ignore>{{ artifact.title }}</a></th>
            {% case artifact.id %}
            {% when 'deltagate' %}<td>Adapt a frozen recommender for users returning without new activity.</td><td>After training the backbone</td>
            {% when 'sidinspector' %}<td>Check exported Semantic-ID mappings for collisions, code usage, and alignment.</td><td>Before training a recommender</td>
            {% when 'sidscope' %}<td>Check what a mapping exposes to retrieval or generation, including after a refresh.</td><td>When testing or refreshing an interface</td>
            {% when 'focalswap' %}<td>Compare the latest search episode against controls with the same scorer and candidates.</td><td>During ranking evaluation</td>
            {% else %}<td>{{ artifact.summary }}</td><td>See quickstart</td>
            {% endcase %}
          </tr>
          {% endfor %}
          <tr><th scope="row"><a class="text-link" href="https://jdding.github.io/recarch/">RecArch</a></th><td>Explore a reference architecture for recommender systems.</td><td>During system design</td></tr>
        </tbody>
      </table>
      <h2 id="project-updates">Project updates</h2>
      <ul aria-labelledby="project-updates">
        <li><time datetime="2026-11-23">Nov 23, 2026</time> · <strong>RecArch</strong> — Added a bilingual <a class="text-link" href="https://jdding.github.io/recarch/en/topics/semantic-id-tokenization/">Semantic IDs and item tokenization comparison</a> covering 16 systems.</li>
        <li><time datetime="2026-11-09">Nov 9, 2026</time> · <strong>SIDInspector</strong> — Clarified the README and citation guidance. The pinned Quickstart is unchanged. <a class="text-link" href="https://github.com/jdding/sidinspector/compare/5a55f8c9002b62663ace07b72334f08225eadb03...cc1de55b9cb78bf69407a0a6112c113b10c1c6b3">See changes on GitHub</a>.</li>
      </ul>
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
      <p class="record-meta">Instructions checked against the <a class="text-link" href="{{ start.source_url }}">example source</a> on {{ start.reviewed_on }}. Commands pin that revision; expected outputs describe the bundled example, not a fresh reproduction of paper results.</p>
    </div>
  </section>
  {% endfor %}
</div>
