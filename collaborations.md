---
layout: single
author_profile: true
title: "Research Collaborations"
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
  
  .publication-count.Current {
    background: #e6fffa;
    color: #276749;
    border: 1px solid #b2f5ea;
  }
  
  .publication-count.Past {
    background: #f3f4f6;
    color: #4b5563;
    border: 1px solid #d1d5db;
  }
  
  /* 地图可视化区域 */
  .world-map-section {
    margin: 40px 0;
    text-align: center;
  }
  
  .map-container {
    height: 500px;
    width: 100%;
    max-width: 1000px;
    margin: 0 auto 20px;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
  }
  
  #institution-map {
    height: 100%;
    width: 100%;
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
    
    .map-container {
      height: 400px;
    }
  }
  
  /* 弹窗样式 */
  .institution-popup h3 {
    margin-top: 0;
    color: #2c3e50;
  }
  
  .institution-popup p {
    margin: 5px 0;
  }
</style>

<!-- 引入Leaflet CSS和JS -->
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>

<div class="world-map-section">
  <h2>Global Collaboration Map</h2>
  <div class="map-container">
    <div id="institution-map"></div>
  </div>
  <p class="map-title">Click on markers to learn more about our global research partnerships</p>
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
        <span class="publication-count">Current</span>
      </div>
      <p><strong>Focus:</strong> AI Research and Academic Collaboration</p>
      <p><strong>Period:</strong> Ongoing collaboration</p>
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
        <span class="publication-count">Current</span>
      </div>
      <p><strong>Focus:</strong> Computer Science Research</p>
      <p><strong>Period:</strong> Ongoing collaboration</p>
    </div>
  </div>
  
  <!-- Shanghai Jiao Tong University -->
  <div class="institution-card">
    <div class="institution-header">
      <img src="/assets/images/shanghai-jiao-tong-university-logo.png" alt="Shanghai Jiao Tong University Logo" class="institution-logo" onerror="this.style.display='none';">
      <div class="institution-text">
        <h3 class="institution-name">Shanghai Jiao Tong University</h3>
        <p class="institution-location">Shanghai, China</p>
      </div>
    </div>
    <div class="institution-content">
      <div class="institution-details">
        <span class="publication-count">Current</span>
      </div>
      <p><strong>Focus:</strong> AI and Computer Science Research</p>
      <p><strong>Period:</strong> Ongoing collaboration</p>
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
        <span class="publication-count">Past</span>
      </div>
      <p><strong>Focus:</strong> Advanced AI Research</p>
      <p><strong>Period:</strong> Past collaboration</p>
    </div>
  </div>
  
  <!-- Hong Kong Baptist University -->
  <div class="institution-card">
    <div class="institution-header">
      <img src="/assets/images/hong-kong-baptist-university-logo.png" alt="Hong Kong Baptist University Logo" class="institution-logo" onerror="this.style.display='none';">
      <div class="institution-text">
        <h3 class="institution-name">Hong Kong Baptist University</h3>
        <p class="institution-location">Hong Kong SAR</p>
      </div>
    </div>
    <div class="institution-content">
      <div class="institution-details">
        <span class="publication-count">Past</span>
      </div>
      <p><strong>Focus:</strong> Applied AI Research</p>
      <p><strong>Period:</strong> Past collaboration</p>
    </div>
  </div>
  
  <!-- Southeast University -->
  <div class="institution-card">
    <div class="institution-header">
      <img src="/assets/images/southeast-university-logo.png" alt="Southeast University Logo" class="institution-logo" onerror="this.style.display='none';">
      <div class="institution-text">
        <h3 class="institution-name">Southeast University</h3>
        <p class="institution-location">Nanjing, China</p>
      </div>
    </div>
    <div class="institution-content">
      <div class="institution-details">
        <span class="publication-count">Past</span>
      </div>
      <p><strong>Focus:</strong> AI Research Collaboration</p>
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
        <span class="publication-count">Past</span>
      </div>
      <p><strong>Focus:</strong> European AI Research Collaboration</p>
      <p><strong>Period:</strong> Past collaboration</p>
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
        <span class="publication-count">Past</span>
      </div>
      <p><strong>Focus:</strong> Computer Science and AI Research</p>
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
        <span class="publication-count">Past</span>
      </div>
      <p><strong>Focus:</strong> AI Research Collaboration</p>
      <p><strong>Period:</strong> Past collaboration</p>
    </div>
  </div>
  
  <!-- University of Houston -->
  <div class="institution-card">
    <div class="institution-header">
      <img src="/assets/images/university-of-houston-logo.png" alt="University of Houston Logo" class="institution-logo" onerror="this.style.display='none';">
      <div class="institution-text">
        <h3 class="institution-name">University of Houston</h3>
        <p class="institution-location">Houston, TX, USA</p>
      </div>
    </div>
    <div class="institution-content">
      <div class="institution-details">
        <span class="publication-count">Past</span>
      </div>
      <p><strong>Focus:</strong> Advanced AI Research</p>
      <p><strong>Period:</strong> Past collaboration</p>
    </div>
  </div>
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
    // 初始化地图，以中国为中心
    var map = L.map('institution-map').setView([30, 105], 3);

    // 添加OpenStreetMap瓦片层
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    // 定义机构数据和坐标
    var institutions = [
        {
            name: "Fudan University",
            location: "Shanghai, China",
            coords: [31.2989, 121.5087],
            focus: "AI Research and Academic Collaboration",
            period: "Ongoing collaboration",
            type: "Current"
        },
        {
            name: "Nanjing University",
            location: "Nanjing, China",
            coords: [32.0432, 118.7732],
            focus: "Computer Science Research",
            period: "Ongoing collaboration",
            type: "Current"
        },
        {
            name: "Shanghai Jiao Tong University",
            location: "Shanghai, China",
            coords: [31.0225, 121.4622],
            focus: "AI and Computer Science Research",
            period: "Ongoing collaboration",
            type: "Current"
        },
        {
            name: "Duke University",
            location: "Durham, NC, USA",
            coords: [35.9974, -78.9452],
            focus: "Advanced AI Research",
            period: "Past collaboration",
            type: "Past"
        },
        {
            name: "Hong Kong Baptist University",
            location: "Hong Kong SAR",
            coords: [22.3361, 114.1867],
            focus: "Applied AI Research",
            period: "Past collaboration",
            type: "Past"
        },
        {
            name: "Southeast University",
            location: "Nanjing, China",
            coords: [32.0392, 118.8013],
            focus: "AI Research Collaboration",
            period: "Past collaboration",
            type: "Past"
        },
        {
            name: "Trinity College Dublin",
            location: "Dublin, Ireland",
            coords: [53.3438, -6.2545],
            focus: "European AI Research Collaboration",
            period: "Past collaboration",
            type: "Past"
        },
        {
            name: "Tongji University",
            location: "Shanghai, China",
            coords: [31.2785, 121.4997],
            focus: "Computer Science and AI Research",
            period: "Past collaboration",
            type: "Past"
        },
        {
            name: "Tsinghua University",
            location: "Beijing, China",
            coords: [39.9994, 116.3282],
            focus: "AI Research Collaboration",
            period: "Past collaboration",
            type: "Past"
        },
        {
            name: "University of Houston",
            location: "Houston, TX, USA",
            coords: [29.7209, -95.3428],
            focus: "Advanced AI Research",
            period: "Past collaboration",
            type: "Past"
        }
    ];

    // 为每个机构添加标记
    institutions.forEach(function(inst) {
        var marker = L.marker(inst.coords).addTo(map);
        
        // 创建弹出窗口内容
        var popupContent = `
            <div class="institution-popup">
                <h3>${inst.name}</h3>
                <p><strong>Location:</strong> ${inst.location}</p>
                <p><strong>Focus:</strong> ${inst.focus}</p>
                <p><strong>Period:</strong> ${inst.period}</p>
                <p><strong>Type:</strong> ${inst.type}</p>
            </div>
        `;
        
        marker.bindPopup(popupContent);
    });

    // 添加地图控制
    map.zoomControl.setPosition('topright');
});
</script>