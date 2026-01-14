---
layout: single
author_profile: true
title: "Patents"
permalink: /patents
classes: wide
---

<style>
  /* --- 1. 顶部数据看板 (Dashboard) --- */
  .stat-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 15px;
    margin-bottom: 30px;
  }
  .stat-card {
    background: #f8f9fa;
    border: 1px solid #e9ecef;
    border-radius: 8px;
    padding: 12px; /* 稍微减小内边距 */
    text-align: center;
    transition: transform 0.2s;
  }
  .stat-card:hover { transform: translateY(-3px); box-shadow: 0 4px 12px rgba(0,0,0,0.05); }
  
  /* [优化]：看板数字字号从 1.8em 收敛到 1.6em */
  .stat-num {
    display: block;
    font-size: 1.6em; 
    font-weight: 800;
    color: #2c3e50;
    line-height: 1.2;
  }
  .stat-label {
    font-size: 0.8em;
    color: #666;
    text-transform: uppercase;
    letter-spacing: 0.5px;
    margin-top: 5px;
  }
  .hl-blue { color: #2980b9; }
  .hl-green { color: #27ae60; }
  .hl-purple { color: #8e44ad; }

  /* --- 2. 分区标题样式 --- */
  .section-header {
    display: flex;
    align-items: center;
    margin-top: 35px;
    margin-bottom: 15px;
    padding-bottom: 8px;
    border-bottom: 2px solid #f0f0f0;
  }
  .section-title {
    font-size: 1.3em;
    font-weight: 700;
    margin: 0;
    color: #333;
  }
  .section-badge {
    margin-left: 12px;
    font-size: 0.75em;
    background: #eee;
    padding: 2px 8px;
    border-radius: 12px;
    color: #555;
    vertical-align: middle;
  }

  /* --- 3. 专利条目卡片 (Item Card) --- */
  .pat-card {
    display: flex;
    align-items: flex-start;
    padding: 10px 15px;
    margin-bottom: 10px; /* 间距减小 */
    background: #fff;
    border: 1px solid #eee;
    border-radius: 6px;
    transition: background 0.2s;

    /* [优化核心]：基准字号微缩 */
    font-size: 0.95rem; 
    line-height: 1.5;
  }
  .pat-card:hover {
    background: #fafafa;
    border-color: #ddd;
  }

  /* 左侧：国旗图标 */
  .pat-flag {
    flex: 0 0 32px; /* 略微收窄 */
    font-size: 1.4em; /* 略微减小图标 */
    line-height: 1.3;
    padding-top: 2px; 
  }

  /* 右侧：内容 */
  .pat-content { flex: 1; }

  /* 第一行：标题 + Badge */
  .pat-header {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    gap: 8px;
    margin-bottom: 4px;
  }
  .pat-title {
    font-weight: 700;
    color: #2c3e50;
    font-size: 1em; /* 标题不再额外放大 */
  }

  /* 统一徽章样式 (Pure CSS) */
  .css-badge {
    display: inline-block;
    font-size: 0.75em; /* 保持小巧 */
    font-weight: 600;
    padding: 1px 6px;
    border-radius: 4px;
    line-height: 1.4;
    border: 1px solid transparent;
  }
  .badge-granted { background-color: #e6fffa; color: #276749; border-color: #b2f5ea; }
  .badge-pending { background-color: #ebf8ff; color: #2c5282; border-color: #bee3f8; }

  /* 第二行：元数据 */
  .pat-meta {
    font-size: 0.9em; /* 辅助文字缩小 */
    color: #666;
  }
  .pat-id {
    font-family: monospace;
    font-weight: 600;
    color: #555;
    background: #f5f5f5;
    padding: 0 4px;
    border-radius: 3px;
    margin-right: 8px;
    font-size: 0.9em;
  }
  .pat-author strong { color: #333; }

  @media (max-width: 600px) {
    .stat-grid { gap: 10px; }
    .stat-num { font-size: 1.4em; }
    .pat-card { padding: 10px; }
  }
</style>

<div class="stat-grid">
  <div class="stat-card">
    <span class="stat-num hl-blue">40+</span>
    <span class="stat-label">Total Filings</span>
  </div>
  <div class="stat-card">
    <span class="stat-num hl-green">20</span>
    <span class="stat-label">Granted Patents</span>
  </div>
  <div class="stat-card">
    <span class="stat-num hl-purple">17</span>
    <span class="stat-label">1st Inventor</span>
  </div>
</div>

<p style="color: #666; font-size: 0.95em; margin-bottom: 30px; line-height: 1.6;">
  I have 40+ patent filings, including 20 granted to date, spanning <strong>Recommendation Systems</strong>, <strong>GenAI/NLP</strong>, <strong>Spatio-Temporal Mining</strong>, and <strong>Bioinformatics</strong>. I am the first inventor on 17 of these filings.
</p>

<div class="section-header">
  <h3 class="section-title">🏆 Selected Granted Patents</h3>
  <span class="section-badge">11 Items</span>
</div>

<div class="pat-card">
  <div class="pat-flag">🇺🇸</div>
  <div class="pat-content">
    <div class="pat-header">
      <span class="pat-title">Method for identifying objects in a spatial region</span>
      <span class="css-badge badge-granted">2025</span>
    </div>
    <div class="pat-meta">
      <span class="pat-id">US 12,267,751</span> 
      <span class="pat-author">Meng Yi, Xu Jin, <strong>Jiandong Ding</strong></span>
    </div>
  </div>
</div>

<div class="pat-card">
  <div class="pat-flag">🇨🇳</div>
  <div class="pat-content">
    <div class="pat-header">
      <span class="pat-title">ETL task processing method and device</span>
      <span class="css-badge badge-granted">2025</span>
    </div>
    <div class="pat-meta">
      <span class="pat-id">CN 113806427 B</span>
      <span class="pat-author"><strong>Jiandong Ding</strong>, Dawei Sun, Qi Wang</span>
    </div>
  </div>
</div>

<div class="pat-card">
  <div class="pat-flag">🇨🇳</div>
  <div class="pat-content">
    <div class="pat-header">
      <span class="pat-title">Text creation method and computer program product</span>
      <span class="css-badge badge-granted">2024</span>
    </div>
    <div class="pat-meta">
      <span class="pat-id">CN 113590247 B</span>
      <span class="pat-author"><strong>Jiandong Ding</strong></span>
    </div>
  </div>
</div>

<div class="pat-card">
  <div class="pat-flag">🇺🇸</div>
  <div class="pat-content">
    <div class="pat-header">
      <span class="pat-title">Method and device for managing virtual streaming</span>
      <span class="css-badge badge-granted">2023</span>
    </div>
    <div class="pat-meta">
      <span class="pat-id">US 11,856,243</span>
      <span class="pat-author">Jin Xu, <strong>Jiandong Ding</strong></span>
    </div>
  </div>
</div>

<div class="pat-card">
  <div class="pat-flag">🇨🇳</div>
  <div class="pat-content">
    <div class="pat-header">
      <span class="pat-title">Live broadcast behavior control of virtual anchor</span>
      <span class="css-badge badge-granted">2023</span>
    </div>
    <div class="pat-meta">
      <span class="pat-id">CN 115379265 B</span>
      <span class="pat-author">Yan Sun, <strong>Jiandong Ding</strong></span>
    </div>
  </div>
</div>

<div class="pat-card">
  <div class="pat-flag">🇨🇳</div>
  <div class="pat-content">
    <div class="pat-header">
      <span class="pat-title">Resource allocation method and device</span>
      <span class="css-badge badge-granted">2023</span>
    </div>
    <div class="pat-meta">
      <span class="pat-id">CN 111353797 B</span>
      <span class="pat-author">Huamei Sun, <strong>Jiandong Ding</strong>, et al.</span>
    </div>
  </div>
</div>

<div class="pat-card">
  <div class="pat-flag">🇺🇸</div>
  <div class="pat-content">
    <div class="pat-header">
      <span class="pat-title">Road network generation</span>
      <span class="css-badge badge-granted">2022</span>
    </div>
    <div class="pat-meta">
      <span class="pat-id">US 11,270,039</span>
      <span class="pat-author">Guoqiang Hu, <strong>Jiandong Ding</strong>, et al.</span>
    </div>
  </div>
</div>

<div class="pat-card">
  <div class="pat-flag">🇨🇳</div>
  <div class="pat-content">
    <div class="pat-header">
      <span class="pat-title">Region clustering method and system</span>
      <span class="css-badge badge-granted">2022</span>
    </div>
    <div class="pat-meta">
      <span class="pat-id">CN 110689362 B</span>
      <span class="pat-author"><strong>Jiandong Ding</strong></span>
    </div>
  </div>
</div>

<div class="pat-card">
  <div class="pat-flag">🇨🇳</div>
  <div class="pat-content">
    <div class="pat-header">
      <span class="pat-title">Traffic analysis and management system</span>
      <span class="css-badge badge-granted">2021</span>
    </div>
    <div class="pat-meta">
      <span class="pat-id">CN 111047130 B</span>
      <span class="pat-author">Weiming Liu, <strong>Jiandong Ding</strong></span>
    </div>
  </div>
</div>

<div class="pat-card">
  <div class="pat-flag">🇨🇳</div>
  <div class="pat-content">
    <div class="pat-header">
      <span class="pat-title">Method for managing gene order</span>
      <span class="css-badge badge-granted">2018</span>
    </div>
    <div class="pat-meta">
      <span class="pat-id">CN 105631239 B</span>
      <span class="pat-author"><strong>Jiandong Ding</strong>, Jun Zhu, et al.</span>
    </div>
  </div>
</div>

<div class="pat-card">
  <div class="pat-flag">🇨🇳</div>
  <div class="pat-content">
    <div class="pat-header">
      <span class="pat-title">Property analysis of protein sequence</span>
      <span class="css-badge badge-granted">2018</span>
    </div>
    <div class="pat-meta">
      <span class="pat-id">CN 104951667 B</span>
      <span class="pat-author"><strong>Jiandong Ding</strong>, Yanan Zhang, et al.</span>
    </div>
  </div>
</div>


<div class="section-header">
  <h3 class="section-title">⏳ Selected Pending Applications</h3>
  <span class="section-badge">7 Items</span>
</div>

<div class="pat-card">
  <div class="pat-flag">🇺🇸</div>
  <div class="pat-content">
    <div class="pat-header">
      <span class="pat-title">Live Broadcast Interaction Method</span>
      <span class="css-badge badge-pending">Interactive Media</span>
    </div>
    <div class="pat-meta">
      <span class="pat-id">US 2022/0248066</span>
      <span class="pat-author">Shibo Liu, <strong>Jiandong Ding</strong>, Yongji He</span>
    </div>
  </div>
</div>

<div class="pat-card">
  <div class="pat-flag">🇺🇸</div>
  <div class="pat-content">
    <div class="pat-header">
      <span class="pat-title">Sound effect processing during live streaming</span>
      <span class="css-badge badge-pending">Audio Processing</span>
    </div>
    <div class="pat-meta">
      <span class="pat-id">US 2022/0248107</span>
      <span class="pat-author">Jin Xu, <strong>Jiandong Ding</strong></span>
    </div>
  </div>
</div>

<div class="pat-card">
  <div class="pat-flag">🇨🇳</div>
  <div class="pat-content">
    <div class="pat-header">
      <span class="pat-title">Recommending playing time for video platform</span>
      <span class="css-badge badge-pending">RecSys</span>
    </div>
    <div class="pat-meta">
      <span class="pat-id">CN 115080791</span>
      <span class="pat-author">Yue Ma, Qi Wang, <strong>Jiandong Ding</strong></span>
    </div>
  </div>
</div>

<div class="pat-card">
  <div class="pat-flag">🇨🇳</div>
  <div class="pat-content">
    <div class="pat-header">
      <span class="pat-title">Emotion recognition method and device</span>
      <span class="css-badge badge-pending">Affective Computing</span>
    </div>
    <div class="pat-meta">
      <span class="pat-id">CN 114064844</span>
      <span class="pat-author">Qicheng Yang, <strong>Jiandong Ding</strong></span>
    </div>
  </div>
</div>

<div class="pat-card">
  <div class="pat-flag">🇨🇳</div>
  <div class="pat-content">
    <div class="pat-header">
      <span class="pat-title">Grade prediction model training method</span>
      <span class="css-badge badge-pending">Deep Learning</span>
    </div>
    <div class="pat-meta">
      <span class="pat-id">CN 111680382</span>
      <span class="pat-author">Xianzhi Shi, <strong>Jiandong Ding</strong>, Yu Yang</span>
    </div>
  </div>
</div>

<div class="pat-card">
  <div class="pat-flag">🇨🇳</div>
  <div class="pat-content">
    <div class="pat-header">
      <span class="pat-title">Predicting whether user has vehicle</span>
      <span class="css-badge badge-pending">Mobility AI</span>
    </div>
    <div class="pat-meta">
      <span class="pat-id">CN 111091219</span>
      <span class="pat-author"><strong>Jiandong Ding</strong></span>
    </div>
  </div>
</div>

<div class="pat-card">
  <div class="pat-flag">🇩🇪</div>
  <div class="pat-content">
    <div class="pat-header">
      <span class="pat-title">Genome compression and decompression</span>
      <span class="css-badge badge-pending">Bioinformatics</span>
    </div>
    <div class="pat-meta">
      <span class="pat-id">DE 112014005580</span>
      <span class="pat-author"><strong>Jiandong Ding</strong>, Junchi Yan, et al.</span>
    </div>
  </div>
</div>
