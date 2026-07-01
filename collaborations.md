---
layout: single
author_profile: true
title: "Collaborations"
permalink: /collaborations
classes: wide site-page collaborations-page
schema:
  "@context": "https://schema.org"
  "@type": "Article"
  "headline": "Research Collaborations"
  "author":
    "@type": "Person"
    "name": "Jiandong Ding (丁建栋)"
    "url": "https://jdding.github.io"
  "dateModified": "2026-02-04"
  "description": "An overview of academic collaborations with universities and research institutions worldwide"
---

{% assign current_collabs = site.data.research.collaborations | where: "status", "Current" %}
{% assign past_collabs = site.data.research.collaborations | where: "status", "Past" %}

<section class="page-hero">
  <p class="page-hero__eyebrow">Research network</p>
  <h1>Collaborations</h1>
  <p class="page-hero__lead">
    Academic collaboration network across China, the United States, Europe, and Hong Kong SAR,
    covering trustworthy AI, generative recommendation, system efficiency, and bioinformatics.
  </p>
  <nav class="page-actions" aria-label="Collaboration shortcuts">
    <a class="action-link action-link--primary" href="#institution-map">Map</a>
    <a class="action-link" href="#current-collaborations">Current</a>
    <a class="action-link" href="#all-institutions">All institutions</a>
  </nav>
</section>

<div class="stat-grid">
  <div class="stat-card">
    <span class="stat-num hl-blue">{{ site.data.research.collaborations | size }}</span>
    <span class="stat-label">Institutions</span>
  </div>
  <div class="stat-card">
    <span class="stat-num hl-green">{{ current_collabs | size }}</span>
    <span class="stat-label">Current</span>
  </div>
  <div class="stat-card">
    <span class="stat-num hl-purple">4</span>
    <span class="stat-label">Regions</span>
  </div>
</div>

<link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css">
<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>

<section aria-labelledby="collaboration-map-title">
  <div class="section-header">
    <h2 id="collaboration-map-title" class="section-title">Collaboration map</h2>
    <span class="section-badge">Interactive</span>
  </div>
  <div class="map-container">
    <div id="institution-map" aria-label="Map of collaboration institutions"></div>
  </div>
  <p id="map-fallback" class="map-fallback">
    If the interactive map is unavailable, the institution list below contains the same collaboration data.
  </p>
</section>

<section id="current-collaborations" aria-labelledby="current-collaborations-title">
  <div class="section-header">
    <h2 id="current-collaborations-title" class="section-title">Current collaborations</h2>
    <span class="section-badge">{{ current_collabs | size }} active</span>
  </div>
  <div class="institution-grid">
    {% for inst in current_collabs %}
    <article class="institution-card">
      <div class="institution-header">
        <img src="{{ inst.logo | relative_url }}" alt="{{ inst.name }} logo" class="institution-logo" loading="lazy">
        <div>
          <h3 class="institution-name">{{ inst.name }}</h3>
          <p class="institution-location">{{ inst.location }}</p>
        </div>
      </div>
      <span class="publication-count {{ inst.status }}">{{ inst.status }}</span>
      <p><strong>Focus:</strong> {{ inst.focus }}</p>
      <p><strong>Period:</strong> {{ inst.period }}</p>
    </article>
    {% endfor %}
  </div>
</section>

<section id="all-institutions" aria-labelledby="all-institutions-title">
  <div class="section-header">
    <h2 id="all-institutions-title" class="section-title">All institutions</h2>
    <span class="section-badge">{{ site.data.research.collaborations | size }} total</span>
  </div>
  <div class="institution-grid">
    {% for inst in site.data.research.collaborations %}
    <article class="institution-card">
      <div class="institution-header">
        <img src="{{ inst.logo | relative_url }}" alt="{{ inst.name }} logo" class="institution-logo" loading="lazy">
        <div>
          <h3 class="institution-name">{{ inst.name }}</h3>
          <p class="institution-location">{{ inst.location }}</p>
        </div>
      </div>
      <span class="publication-count {{ inst.status }}">{{ inst.status }}</span>
      <p><strong>Focus:</strong> {{ inst.focus }}</p>
      <p><strong>Period:</strong> {{ inst.period }}</p>
    </article>
    {% endfor %}
  </div>
</section>

<script>
document.addEventListener('DOMContentLoaded', function() {
  var mapElement = document.getElementById('institution-map');
  var fallback = document.getElementById('map-fallback');
  var institutions = {{ site.data.research.collaborations | jsonify }};

  if (!mapElement || !window.L) {
    if (fallback) fallback.textContent = 'The map library did not load; use the institution cards below.';
    return;
  }

  var map = L.map('institution-map').setView([30, 105], 3);
  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
  }).addTo(map);

  institutions.forEach(function(inst) {
    if (!inst.coords) return;
    var marker = L.circleMarker(inst.coords, {
      radius: 7,
      color: inst.status === 'Current' ? '#0f766e' : '#6b7280',
      fillColor: inst.status === 'Current' ? '#0f766e' : '#6b7280',
      fillOpacity: 0.85,
      weight: 2
    }).addTo(map);

    marker.bindPopup(
      '<strong>' + inst.name + '</strong><br>' +
      inst.location + '<br>' +
      '<strong>Focus:</strong> ' + inst.focus + '<br>' +
      '<strong>Status:</strong> ' + inst.status
    );
  });

  map.zoomControl.setPosition('topright');
});
</script>
