---
layout: single
author_profile: true
title: "Publications"
permalink: /publications
classes: wide
---

<style>
  /* --- 1. 顶部数据看板 (复用 Patents 风格) --- */
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
    padding: 12px;
    text-align: center;
    transition: transform 0.2s;
  }
  .stat-card:hover { transform: translateY(-3px); box-shadow: 0 4px 12px rgba(0,0,0,0.05); }
  
  .stat-num {
    display: block;
    font-size: 1.6em; /* 与 Patents 保持一致 */
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
  /* 重点数字颜色 */
  .hl-blue { color: #2980b9; }
  .hl-red  { color: #c0392b; } /* 论文 Top-tier 用红色 */
  .hl-orange { color: #d35400; } /* 引用数用橙色 */

  /* --- 2. 论文列表容器 --- */
  .pub-item {
    padding: 10px 15px;
    margin-bottom: 10px;
    background: #fff;
    border: 1px solid #eee;
    border-radius: 4px;
    border-left-width: 4px; 
    transition: all 0.2s;
    
    /* 基准字号 */
    font-size: 0.95rem; 
    line-height: 1.5;   
  }
  .pub-item:hover {
    background: #fafafa;
    border-color: #ddd;
    box-shadow: 0 2px 8px rgba(0,0,0,0.03);
  }

  /* 左侧色条等级定义 */
  .level-a { border-left-color: #e53e3e; } /* CCF-A / Top */
  .level-b { border-left-color: #3182ce; } /* CCF-B */
  .level-c { border-left-color: #a0aec0; } /* Preprint */

  /* 第一行：标题 */
  .pub-title {
    display: block;
    font-size: 1em; 
    font-weight: 700;
    color: #2d3748;
    line-height: 1.3;
    margin-bottom: 4px; 
  }

  /* 第二行：元数据容器 */
  .pub-meta {
    display: flex;
    flex-wrap: wrap; 
    align-items: center;
    font-size: 0.9em; 
    color: #666;
  }

  /* 会议标签 */
  .venue-tag {
    font-weight: 700;
    padding: 0px 5px;
    border-radius: 3px;
    margin-right: 8px;
    font-size: 0.85em;
    letter-spacing: 0.3px;
    height: 18px;
    line-height: 16px;
    display: inline-block;
  }
  .tag-red { background: #fff5f5; color: #c53030; border: 1px solid #feb2b2; }
  .tag-blue { background: #ebf8ff; color: #2b6cb0; border: 1px solid #bee3f8; }
  .tag-gray { background: #f7fafc; color: #4a5568; border: 1px solid #cbd5e0; }

  /* 作者文字 */
  .pub-authors {
    margin-right: 8px;
    color: #555;
  }
  .pub-authors strong { color: #1a202c; font-weight: 700; }

  /* PDF 链接 */
  .pub-link {
    font-size: 0.85em;
    color: #3182ce;
    text-decoration: none;
    font-weight: 600;
  }
  .pub-link:hover { text-decoration: underline; }

  /* 年份标题 */
  .year-header {
    font-size: 1.2em;
    font-weight: 800;
    margin: 25px 0 10px 0;
    padding-bottom: 5px;
    border-bottom: 2px solid #edf2f7;
    color: #2d3748;
  }

  @media (max-width: 600px) {
    .stat-grid { gap: 10px; }
    .stat-num { font-size: 1.4em; }
  }
</style>

<div class="stat-grid">
  <div class="stat-card">
    <span class="stat-num hl-red">10+</span>
    <span class="stat-label">Top-tier Papers</span>
  </div>
  <div class="stat-card">
    <span class="stat-num hl-blue">20+</span>
    <span class="stat-label">Total Publications</span>
  </div>
  <div class="stat-card">
    <span class="stat-num hl-orange">500+</span>
    <span class="stat-label">Citations</span>
  </div>
</div>

<h3 class="year-header">2026</h3>

<div class="pub-item level-a">
  <span class="pub-title">Mitigating Popularity Bias in Recommendation with Global Listwise Learning.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-red">TOIS</span>
    <span class="pub-authors">Tianyu Zhu, <strong>Jiandong Ding</strong>, et al.</span>
  </div>
</div>

<div class="pub-item level-a">
  <span class="pub-title">Beyond the Flat Sequence: Hierarchical and Preference-Aware Generative Recommendations.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-red">WWW</span>
    <span class="pub-authors">Zerui Chen, ..., <strong>Jiandong Ding</strong>, et al.</span>
  </div>
</div>

<div class="pub-item level-a">
  <span class="pub-title">Invariant Feature Learning for Counterfactual Watch-time Prediction in Video Recommendation.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-red">AAAI</span>
    <span class="pub-authors">Chenghou Jin, ..., <strong>Jiandong Ding</strong>, et al.</span>
  </div>
</div>

<div class="pub-item level-b">
  <span class="pub-title">RPE4Rec: Enhancing Dynamic Node Retrieval with Efficient Relative Position Encoding.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-blue">WSDM</span>
    <span class="pub-authors">Ke Cheng, ..., <strong>Jiandong Ding</strong>, et al.</span>
  </div>
</div>

<h3 class="year-header">2025</h3>

<div class="pub-item level-c">
  <span class="pub-title">Towards Practical Large-scale Dynamical Heterogeneous Graph Embedding.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-gray">arXiv</span>
    <span class="pub-authors">Mabiao Long, ..., <strong>Jiandong Ding</strong></span>
    <a href="https://arxiv.org/abs/2512.13120" class="pub-link">[PDF]</a>
  </div>
</div>

<div class="pub-item level-b">
  <span class="pub-title">BIS: NL2SQL Service Evaluation Benchmark for Business Intelligence Scenarios.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-blue">ICSOC</span>
    <span class="pub-authors">Bora Caglayan, ..., <strong>Jiandong Ding</strong>, et al.</span>
    <a href="https://link.springer.com/10.1007/978-981-96-0808-9_27" class="pub-link">[PDF]</a>
  </div>
</div>

<h3 class="year-header">2024</h3>

<div class="pub-item level-a">
  <span class="pub-title">Unified Low-rank Compression Framework for Click-through Rate Prediction.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-red">KDD</span>
    <span class="pub-authors">Hao Yu, Minghao Fu, <strong>Jiandong Ding</strong>, et al.</span>
    <a href="https://dl.acm.org/doi/10.1145/3637528.3671520" class="pub-link">[PDF]</a>
  </div>
</div>

<div class="pub-item level-c">
  <span class="pub-title">P/D-Serve: Serving Disaggregated Large Language Model at Scale.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-gray">arXiv</span>
    <span class="pub-authors">Yibo Jin, ..., <strong>Jiandong Ding</strong>, et al.</span>
    <a href="https://arxiv.org/abs/2408.08147" class="pub-link">[PDF]</a>
  </div>
</div>

<h3 class="year-header">2023</h3>

<div class="pub-item level-a">
  <span class="pub-title">Continual Graph Convolutional Network for Text Classification.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-red">AAAI</span>
    <span class="pub-authors">Tiandeng Wu, ..., <strong>Jiandong Ding</strong><sup>*</sup></span>
    <a href="https://ojs.aaai.org/index.php/AAAI/article/view/26611" class="pub-link">[PDF]</a>
  </div>
</div>

<div class="pub-item level-a">
  <span class="pub-title">Neural Topic Modeling Based on Cycle Adversarial Training and Contrastive Learning.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-red">ACL Findings</span>
    <span class="pub-authors">Boyu Wang, ..., <strong>Jiandong Ding</strong></span>
    <a href="https://aclanthology.org/2023.findings-acl.616" class="pub-link">[PDF]</a>
  </div>
</div>

<h3 class="year-header">2022</h3>

<div class="pub-item level-b">
  <span class="pub-title">EPiDA: an Easy Plug-in Data Augmentation Framework.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-blue">NAACL</span>
    <span class="pub-authors">Minyi Zhao, ..., <strong>Jiandong Ding</strong>, et al.</span>
    <a href="https://aclanthology.org/2022.naacl-main.349" class="pub-link">[PDF]</a>
  </div>
</div>

<h3 class="year-header">2021</h3>

<div class="pub-item level-a">
  <span class="pub-title">DP-SSL: Towards Robust Semi-supervised Learning with A Few Labeled Samples.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-red">NeurIPS</span>
    <span class="pub-authors">Yi Xu, <strong>Jiandong Ding</strong>, et al.</span>
    <a href="https://arxiv.org/abs/2110.13740" class="pub-link">[PDF]</a>
  </div>
</div>

<div class="pub-item level-b">
  <span class="pub-title">Weakly-supervised Text Classification Based on Keyword Graph.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-blue">EMNLP</span>
    <span class="pub-authors">Lu Zhang, <strong>Jiandong Ding</strong>, et al.</span>
    <a href="https://aclanthology.org/2021.emnlp-main.222" class="pub-link">[PDF]</a>
  </div>
</div>

<div class="pub-item level-a">
  <span class="pub-title">Effectiveness of AI assistance in live-streaming: a randomized field experiment.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-red">ICIS</span>
    <span class="pub-authors">Lingli Wang, ..., <strong>Jiandong Ding</strong>, et al.</span>
    <a href="https://aisel.aisnet.org/icis2021/hci_robot/hci_robot/3/" class="pub-link">[PDF]</a>
  </div>
</div>

<div class="pub-item level-a">
  <span class="pub-title">The sales data sells: Effects of real-time sales analytics on live streaming selling.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-red">ICIS</span>
    <span class="pub-authors">Yumei He, ..., <strong>Jiandong Ding</strong>, et al.</span>
    <a href="https://aisel.aisnet.org/icis2021/data_analytics/data_analytics/2/" class="pub-link">[PDF]</a>
  </div>
</div>

<h3 class="year-header">Early Career (Bioinformatics)</h3>
<p style="color:#666; font-size:0.95rem; margin-bottom:20px;">Focus: Deciphering the code of life with Machine Learning.</p>

<div class="pub-item level-a">
  <span class="pub-title">Finding MicroRNA Targets in Plants: Current Status and Perspectives.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-red">GPB (Q1)</span>
    <span class="pub-authors"><strong>Jiandong Ding</strong>, et al.</span>
    <a href="https://academic.oup.com/gpb/article/10/5/264/7221796" class="pub-link">[PDF]</a>
  </div>
</div>

<div class="pub-item level-b">
  <span class="pub-title">Automatically clustering large-scale miRNA sequences.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-blue">BMC Gen</span>
    <span class="pub-authors"><strong>Jiandong Ding</strong>, et al.</span>
    <a href="https://bmcgenomics.biomedcentral.com/articles/10.1186/1471-2164-13-S8-S15" class="pub-link">[PDF]</a>
  </div>
</div>

<div class="pub-item level-b">
  <span class="pub-title">imiRTP: An Integrated Method to Identifying miRNA-target Interactions.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-blue">BIBM</span>
    <span class="pub-authors"><strong>Jiandong Ding</strong>, et al.</span>
    <a href="http://ieeexplore.ieee.org/document/6120415/" class="pub-link">[PDF]</a>
  </div>
</div>

<div class="pub-item level-b">
  <span class="pub-title">miRFam: an effective automatic miRNA classification method.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-blue">BMC Bio</span>
    <span class="pub-authors"><strong>Jiandong Ding</strong>, et al.</span>
    <a href="https://bmcbioinformatics.biomedcentral.com/articles/10.1186/1471-2105-12-216" class="pub-link">[PDF]</a>
  </div>
</div>

<div class="pub-item level-b">
  <span class="pub-title">MiRenSVM: towards better prediction of microRNA precursors.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-blue">BMC Bio</span>
    <span class="pub-authors"><strong>Jiandong Ding</strong>, et al.</span>
    <a href="https://bmcbioinformatics.biomedcentral.com/articles/10.1186/1471-2105-11-S11-S11" class="pub-link">[PDF]</a>
  </div>
</div>
