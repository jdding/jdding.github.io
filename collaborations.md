---
layout: single
author_profile: true
title: "Research Collaborations"
permalink: /collaborations
classes: wide
---

<style>
  /* 合作机构地图样式 */
  .collab-header {
    text-align: center;
    margin-bottom: 30px;
    padding: 20px;
    background: linear-gradient(135deg, #f5f7fa 0%, #e4edf9 100%);
    border-radius: 8px;
  }
  
  .collab-stats {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 15px;
    margin: 20px 0;
  }
  
  .stat-card {
    background: white;
    padding: 15px;
    border-radius: 6px;
    text-align: center;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    border-left: 4px solid #3498db;
  }
  
  .stat-number {
    font-size: 2em;
    font-weight: bold;
    color: #2c3e50;
  }
  
  .stat-label {
    font-size: 0.9em;
    color: #7f8c8d;
  }
  
  /* 机构网格 */
  .institution-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
    gap: 20px;
    margin-top: 30px;
  }
  
  .institution-card {
    background: white;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 4px 15px rgba(0,0,0,0.08);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    border: 1px solid #eee;
    display: flex;
    flex-direction: column;
    height: 100%;
  }
  
  .institution-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 25px rgba(0,0,0,0.15);
  }
  
  .institution-header {
    background: linear-gradient(135deg, #3498db 0%, #2c3e50 100%);
    color: white;
    padding: 15px;
    display: flex;
    align-items: center;
    gap: 10px;
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
    font-size: 1.2em;
    font-weight: 600;
  }
  
  .institution-location {
    margin: 5px 0 0 0;
    font-size: 0.9em;
    opacity: 0.9;
  }
  
  .institution-content {
    padding: 20px;
    flex: 1;
    display: flex;
    flex-direction: column;
  }
  
  .institution-details {
    margin-bottom: 15px;
  }
  
  .publication-count {
    display: inline-block;
    background: #e1f0fa;
    color: #2980b9;
    padding: 5px 10px;
    border-radius: 20px;
    font-weight: 600;
    font-size: 0.9em;
  }
  
  .collaboration-type {
    display: inline-block;
    background: #f1c40f;
    color: #7d6608;
    padding: 3px 8px;
    border-radius: 12px;
    font-weight: 600;
    font-size: 0.8em;
    margin-left: 10px;
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
    
    .collab-stats {
      grid-template-columns: repeat(2, 1fr);
    }
  }
</style>

<div class="collab-header">
  <h1>Research Collaborations</h1>
  <p>Global academic partnerships driving innovation in AI systems</p>
  
  <div class="collab-stats">
    <div class="stat-card">
      <div class="stat-number">9</div>
      <div class="stat-label">Partner Institutions</div>
    </div>
    <div class="stat-card">
      <div class="stat-number">27</div>
      <div class="stat-label">Joint Publications</div>
    </div>
    <div class="stat-card">
      <div class="stat-number">4</div>
      <div class="stat-label">Countries/Regions</div>
    </div>
    <div class="stat-card">
      <div class="stat-number">10+</div>
      <div class="stat-label">Years of Collaboration</div>
    </div>
  </div>
</div>

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
        <span class="publication-count">10 papers</span>
        <span class="collaboration-type">Academic</span>
      </div>
      <p><strong>Focus:</strong> AI Research and Academic Collaboration</p>
      <p><strong>Period:</strong> Ongoing collaboration</p>
    </div>
  </div>
  
  <!-- 请在此处添加其他机构信息 -->
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
        <span class="publication-count">6 papers</span>
        <span class="collaboration-type">Academic</span>
      </div>
      <p><strong>Focus:</strong> Computer Science and AI Research</p>
      <p><strong>Period:</strong> Ongoing</p>
    </div>
  </div>
  
  <!-- Huawei -->
  <div class="institution-card">
    <div class="institution-header">
      <img src="/assets/images/huawei-logo.png" alt="Huawei Logo" class="institution-logo" onerror="this.style.display='none';">
      <div class="institution-text">
        <h3 class="institution-name">Huawei Technologies</h3>
        <p class="institution-location">Shenzhen, China</p>
      </div>
    </div>
    <div class="institution-content">
      <div class="institution-details">
        <span class="publication-count">3 papers</span>
        <span class="collaboration-type">Industry</span>
      </div>
      <p><strong>Focus:</strong> Industrial-scale AI Systems</p>
      <p><strong>Period:</strong> Current (Principal Algorithm Expert)</p>
    </div>
  </div>
  
  <!-- Alibaba Group -->
  <div class="institution-card">
    <div class="institution-header">
      <img src="/assets/images/alibaba-logo.png" alt="Alibaba Group Logo" class="institution-logo" onerror="this.style.display='none';">
      <div class="institution-text">
        <h3 class="institution-name">Alibaba Group Inc.</h3>
        <p class="institution-location">Hangzhou, China</p>
      </div>
    </div>
    <div class="institution-content">
      <div class="institution-details">
        <span class="publication-count">3 papers</span>
        <span class="collaboration-type">Industry</span>
      </div>
      <p><strong>Focus:</strong> E-commerce AI and DAMO Academy</p>
      <p><strong>Period:</strong>Past collaboration</p>
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
        <span class="publication-count">2 papers</span>
        <span class="collaboration-type">International</span>
      </div>
      <p><strong>Focus:</strong> Advanced AI Research</p>
      <p><strong>Period:</strong> Past collaboration</p>
    </div>
  </div>
  
  <!-- Remaining institutions -->
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
        <span class="publication-count">1 paper</span>
        <span class="collaboration-type">Academic</span>
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
        <span class="publication-count">1 paper</span>
        <span class="collaboration-type">Academic</span>
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
        <span class="publication-count">1 paper</span>
        <span class="collaboration-type">International</span>
      </div>
      <p><strong>Focus:</strong> European AI Research Collaboration</p>
      <p><strong>Period:</strong> Past collaboration</p>
    </div>
  </div>
</div>

<div style="margin-top: 40px; padding: 20px; background: #f8f9fa; border-radius: 8px;">
  <h3>Collaboration Impact</h3>
  <p>These partnerships have enabled breakthrough research in trustworthy and scalable AI systems, 
  advancing the state-of-the-art in recommendation systems, causal inference, and LLM agents.</p>
  
  <div class="impact-stats">
    <p><strong>Research Areas Enhanced Through Collaboration:</strong></p>
    <ul>
      <li>Generative RecSys: LLM-driven Recommendation, Sequential Modeling, and User Representation</li>
      <li>Trustworthy AI: Causal Inference, Unbiased Learning, and Fairness in Ranking</li>
      <li>System Efficiency: Edge-Cloud Collaboration, Retrieval Architecture, and Model Compression</li>
      <li>LLM Agents and Data Intelligence for business applications</li>
    </ul>
  </div>
  
  <div style="margin-top: 20px;">
    <p><strong>Geographic Reach:</strong> Our collaborative research spans multiple continents, 
    connecting leading institutions in Asia, North America, and Europe to drive innovation in AI systems.</p>
  </div>
</div>