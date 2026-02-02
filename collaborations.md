---
layout: single
author_profile: true
title: "Collaborations"
permalink: /collaborations
classes: wide
---

<style>
  /* 机构网格 - 与其他页面保持一致的样式 */
  .institution-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
    gap: 20px;
    margin-top: 30px;
  }
  
  .institution-card {
    background: #fff;
    border: 1px solid #eee;
    border-radius: 6px;
    transition: all 0.2s;
    font-size: 0.95rem;
    line-height: 1.5;
    padding: 15px;
  }
  
  .institution-card:hover {
    background: #fafafa;
    border-color: #ddd;
    box-shadow: 0 2px 8px rgba(0,0,0,0.03);
  }
  
  .institution-header {
    display: flex;
    align-items: center;
    gap: 10px;
    margin-bottom: 10px;
    padding-bottom: 8px;
    border-bottom: 1px solid #eee;
  }
  
  .institution-logo {
    width: 40px;
    height: 40px;
    border-radius: 4px;
    object-fit: cover;
  }
  
  .institution-text {
    flex: 1;
  }
  
  .institution-name {
    margin: 0;
    font-size: 1em;
    font-weight: 700;
    color: #2d3748;
    line-height: 1.3;
  }
  
  .institution-location {
    margin: 5px 0 0 0;
    font-size: 0.9em;
    color: #666;
  }
  
  .institution-content {
    padding-top: 10px;
  }
  
  .institution-details {
    margin-bottom: 10px;
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    font-size: 0.9em;
    color: #666;
  }
  
  .publication-count {
    display: inline-block;
    background: #f8f9fa;
    color: #4a5568;
    padding: 2px 8px;
    border-radius: 3px;
    font-size: 0.85em;
    margin-right: 8px;
  }
  
  .collaboration-type {
    display: inline-block;
    background: #ebf8ff;
    color: #2b6cb0;
    padding: 2px 8px;
    border-radius: 3px;
    font-size: 0.85em;
    border: 1px solid #bee3f8;
  }
  
  /* 地图可视化预留区域 */
  .world-map-section {
    margin: 40px 0;
    text-align: center;
  }
  
  .map-placeholder {
    background: #f8f9fa;
    border: 2px dashed #dee2e6;
    border-radius: 8px;
    padding: 40px;
    margin: 20px auto;
    max-width: 800px;
  }
  
  .map-title {
    color: #495057;
    margin-bottom: 15px;
  }
  
  /* 响应式设计 */
  @media (max-width: 768px) {
    .institution-grid {
      grid-template-columns: 1fr;
    }
  }
</style>

<div class="world-map-section">
  <h2>Global Collaboration Map</h2>
  <div class="map-placeholder">
    <p class="map-title">Interactive map showing collaboration locations</p>
    <p>This section will display an interactive world map highlighting our global research partnerships</p>
    <p><em>(Map visualization to be implemented)</em></p>
  </div>
</div>

<div class="institution-grid">
  <!-- Fudan University -->
  <div class="institution-card">
    <div class="institution-header">
      <img src="/assets/images/fudan-university-logo.png" alt="Fudan University Logo" class="institution-logo" onerror="this.style.display='none';">
      <div class="institution-text">
        <h3 class="institution-name">Fudan University</h3>
        <p class="institution-location">Shanghai, China</p>
      </div>
    </div>
    <div class="institution-content">
      <div class="institution-details">
        <span class="publication-count">Academic</span>
      </div>
      <p><strong>Focus:</strong> AI Research and Academic Collaboration</p>
      <p><strong>Period:</strong> Ongoing collaboration</p>
    </div>
  </div>
  
  <!-- Tongji University -->
  <div class="institution-card">
    <div class="institution-header">
      <img src="/assets/images/tongji-university-logo.png" alt="Tongji University Logo" class="institution-logo" onerror="this.style.display='none';">
      <div class="institution-text">
        <h3 class="institution-name">Tongji University</h3>
        <p class="institution-location">Shanghai, China</p>
      </div>
    </div>
    <div class="institution-content">
      <div class="institution-details">
        <span class="publication-count">Academic</span>
      </div>
      <p><strong>Focus:</strong> Computer Science and AI Research</p>
      <p><strong>Period:</strong> Ongoing</p>
    </div>
  </div>
  
  <!-- Duke University -->
  <div class="institution-card">
    <div class="institution-header">
      <img src="/assets/images/duke-university-logo.png" alt="Duke University Logo" class="institution-logo" onerror="this.style.display='none';">
      <div class="institution-text">
        <h3 class="institution-name">Duke University</h3>
        <p class="institution-location">Durham, NC, USA</p>
      </div>
    </div>
    <div class="institution-content">
      <div class="institution-details">
        <span class="publication-count">International</span>
      </div>
      <p><strong>Focus:</strong> Advanced AI Research</p>
      <p><strong>Period:</strong> Past collaboration</p>
    </div>
  </div>
  
  <!-- Tsinghua University -->
  <div class="institution-card">
    <div class="institution-header">
      <img src="/assets/images/tsinghua-university-logo.png" alt="Tsinghua University Logo" class="institution-logo" onerror="this.style.display='none';">
      <div class="institution-text">
        <h3 class="institution-name">Tsinghua University</h3>
        <p class="institution-location">Beijing, China</p>
      </div>
    </div>
    <div class="institution-content">
      <div class="institution-details">
        <span class="publication-count">Academic</span>
      </div>
      <p><strong>Focus:</strong> AI Research Collaboration</p>
      <p><strong>Period:</strong> Past collaboration</p>
    </div>
  </div>
  
  <!-- Nanjing University -->
  <div class="institution-card">
    <div class="institution-header">
      <img src="/assets/images/nanjing-university-logo.png" alt="Nanjing University Logo" class="institution-logo" onerror="this.style.display='none';">
      <div class="institution-text">
        <h3 class="institution-name">Nanjing University</h3>
        <p class="institution-location">Nanjing, China</p>
      </div>
    </div>
    <div class="institution-content">
      <div class="institution-details">
        <span class="publication-count">Academic</span>
      </div>
      <p><strong>Focus:</strong> Computer Science Research</p>
      <p><strong>Period:</strong> Past collaboration</p>
    </div>
  </div>
  
  <!-- Trinity College Dublin -->
  <div class="institution-card">
    <div class="institution-header">
      <img src="/assets/images/trinity-college-dublin-logo.png" alt="Trinity College Dublin Logo" class="institution-logo" onerror="this.style.display='none';">
      <div class="institution-text">
        <h3 class="institution-name">Trinity College Dublin</h3>
        <p class="institution-location">Dublin, Ireland</p>
      </div>
    </div>
    <div class="institution-content">
      <div class="institution-details">
        <span class="publication-count">International</span>
      </div>
      <p><strong>Focus:</strong> European AI Research Collaboration</p>
      <p><strong>Period:</strong> Past collaboration</p>
    </div>
  </div>
</div>
