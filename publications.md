---
layout: single
author_profile: true
title: "Publications"
permalink: /publications
classes: wide
---

<style>
  /* --- 1. 卡片容器 (复用 Patents 风格) --- */
  .pub-card {
    display: flex;
    align-items: flex-start;
    padding: 15px;
    margin-bottom: 15px;
    background: #fff;
    border: 1px solid #eee;
    border-radius: 8px; /* 圆角稍大一点，更现代 */
    transition: all 0.2s ease;
  }
  .pub-card:hover {
    background: #fafafa;
    border-color: #ddd;
    transform: translateY(-2px); /* 轻微上浮 */
    box-shadow: 0 4px 10px rgba(0,0,0,0.03);
  }

  /* --- 2. 左侧锚点 (会议简称) --- */
  .pub-venue-mark {
    flex: 0 0 55px; /* 固定宽度，对齐 */
    text-align: center;
    font-weight: 800;
    font-size: 1.1em;
    line-height: 1.2;
    padding-top: 2px;
    margin-right: 15px;
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
  }
  /* 级别颜色定义 */
  .mark-red { color: #e53e3e; }    /* CCF-A, JCR-Q1 */
  .mark-blue { color: #3182ce; }   /* CCF-B, JCR-Q2 */
  .mark-purple { color: #805ad5; } /* IS Top */
  .mark-gray { color: #718096; }   /* Preprint/Others */
  
  .venue-year {
    display: block;
    font-size: 0.65em;
    font-weight: 600;
    color: #a0aec0;
    margin-top: 2px;
  }

  /* --- 3. 右侧内容区域 --- */
  .pub-content { flex: 1; }

  /* 第一行：标题 + Badge */
  .pub-header {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    gap: 8px;
    margin-bottom: 6px;
  }
  .pub-title {
    font-weight: 700;
    color: #2d3748;
    font-size: 1.05em;
    line-height: 1.4;
  }

  /* 纯 CSS 徽章 (替代 Shields.io 图片) */
  .css-badge {
    display: inline-block;
    font-size: 0.7em;
    font-weight: 700;
    padding: 2px 6px;
    border-radius: 4px;
    line-height: 1;
    text-transform: uppercase;
    border: 1px solid transparent;
  }
  .badge-red { background-color: #fff5f5; color: #c53030; border-color: #feb2b2; }
  .badge-blue { background-color: #ebf8ff; color: #2b6cb0; border-color: #bee3f8; }
  .badge-purple { background-color: #faf5ff; color: #6b46c1; border-color: #d6bcfa; }
  .badge-gray { background-color: #f7fafc; color: #4a5568; border-color: #cbd5e0; }

  /* 第二行：作者 + 链接 */
  .pub-meta {
    font-size: 0.9em;
    color: #4a5568;
    line-height: 1.6;
  }
  .pub-author strong { color: #2d3748; font-weight: 700; }
  
  /* 链接按钮 */
  .pub-link {
    margin-left: 8px;
    text-decoration: none;
    font-size: 0.85em;
    font-weight: 600;
    color: #3182ce;
    background: #ebf8ff;
    padding: 1px 6px;
    border-radius: 4px;
    transition: background 0.2s;
  }
  .pub-link:hover { background: #bee3f8; text-decoration: none; }

  /* 年份分割线 */
  .year-header {
    margin-top: 35px;
    margin-bottom: 15px;
    font-size: 1.4em;
    font-weight: 700;
    color: #1a202c;
    border-bottom: 2px solid #edf2f7;
    padding-bottom: 8px;
  }

  /* 手机端适配 */
  @media (max-width: 600px) {
    .pub-card { padding: 12px; }
    .pub-venue-mark { display: none; } /* 手机上太挤，隐藏左侧锚点，只保留内容 */
  }
</style>

<h3 class="year-header">2026</h3>

<div class="pub-card">
  <div class="pub-venue-mark mark-red">TOIS<span class="venue-year">2026</span></div>
  <div class="pub-content">
    <div class="pub-header">
      <span class="pub-title">Mitigating Popularity Bias in Recommendation with Global Listwise Learning.</span>
      <span class="css-badge badge-red">CCF-A</span>
    </div>
    <div class="pub-meta">
      <span class="pub-author">Tianyu Zhu, <strong>Jiandong Ding</strong>, et al.</span>
    </div>
  </div>
</div>

<div class="pub-card">
  <div class="pub-venue-mark mark-red">WWW<span class="venue-year">2026</span></div>
  <div class="pub-content">
    <div class="pub-header">
      <span class="pub-title">Beyond the Flat Sequence: Hierarchical and Preference-Aware Generative Recommendations.</span>
      <span class="css-badge badge-red">CCF-A</span>
    </div>
    <div class="pub-meta">
      <span class="pub-author">Zerui Chen, ..., <strong>Jiandong Ding</strong>, et al.</span>
    </div>
  </div>
</div>

<div class="pub-card">
  <div class="pub-venue-mark mark-red">AAAI<span class="venue-year">2026</span></div>
  <div class="pub-content">
    <div class="pub-header">
      <span class="pub-title">Invariant Feature Learning for Counterfactual Watch-time Prediction in Video Recommendation.</span>
      <span class="css-badge badge-red">CCF-A</span>
    </div>
    <div class="pub-meta">
      <span class="pub-author">Chenghou Jin, ..., <strong>Jiandong Ding</strong>, et al.</span>
    </div>
  </div>
</div>

<div class="pub-card">
  <div class="pub-venue-mark mark-blue">WSDM<span class="venue-year">2026</span></div>
  <div class="pub-content">
    <div class="pub-header">
      <span class="pub-title">RPE4Rec: Enhancing Dynamic Node Retrieval with Efficient Relative Position Encoding.</span>
      <span class="css-badge badge-blue">CCF-B</span>
    </div>
    <div class="pub-meta">
      <span class="pub-author">Ke Cheng, ..., <strong>Jiandong Ding</strong>, et al.</span>
    </div>
  </div>
</div>

<h3 class="year-header">2025</h3>

<div class="pub-card">
  <div class="pub-venue-mark mark-gray">arXiv<span class="venue-year">2025</span></div>
  <div class="pub-content">
    <div class="pub-header">
      <span class="pub-title">Towards Practical Large-scale Dynamical Heterogeneous Graph Embedding.</span>
      <span class="css-badge badge-gray">Preprint</span>
    </div>
    <div class="pub-meta">
      <span class="pub-author">Mabiao Long, ..., <strong>Jiandong Ding</strong></span>
      <a href="https://arxiv.org/abs/2512.13120" class="pub-link">PDF</a>
    </div>
  </div>
</div>

<div class="pub-card">
  <div class="pub-venue-mark mark-blue">ICSOC<span class="venue-year">2025</span></div>
  <div class="pub-content">
    <div class="pub-header">
      <span class="pub-title">BIS: NL2SQL Service Evaluation Benchmark for Business Intelligence Scenarios.</span>
      <span class="css-badge badge-blue">Conf</span>
    </div>
    <div class="pub-meta">
      <span class="pub-author">Bora Caglayan, ..., <strong>Jiandong Ding</strong>, et al.</span>
      <a href="https://link.springer.com/10.1007/978-981-96-0808-9_27" class="pub-link">PDF</a>
    </div>
  </div>
</div>

<h3 class="year-header">2024</h3>

<div class="pub-card">
  <div class="pub-venue-mark mark-red">KDD<span class="venue-year">2024</span></div>
  <div class="pub-content">
    <div class="pub-header">
      <span class="pub-title">Unified Low-rank Compression Framework for Click-through Rate Prediction.</span>
      <span class="css-badge badge-red">CCF-A</span>
    </div>
    <div class="pub-meta">
      <span class="pub-author">Hao Yu, Minghao Fu, <strong>Jiandong Ding</strong>, et al.</span>
      <a href="https://dl.acm.org/doi/10.1145/3637528.3671520" class="pub-link">PDF</a>
    </div>
  </div>
</div>

<div class="pub-card">
  <div class="pub-venue-mark mark-gray">arXiv<span class="venue-year">2024</span></div>
  <div class="pub-content">
    <div class="pub-header">
      <span class="pub-title">P/D-Serve: Serving Disaggregated Large Language Model at Scale.</span>
      <span class="css-badge badge-gray">Preprint</span>
    </div>
    <div class="pub-meta">
      <span class="pub-author">Yibo Jin, ..., <strong>Jiandong Ding</strong>, et al.</span>
      <a href="https://arxiv.org/abs/2408.08147" class="pub-link">PDF</a>
    </div>
  </div>
</div>

<h3 class="year-header">2023</h3>

<div class="pub-card">
  <div class="pub-venue-mark mark-red">AAAI<span class="venue-year">2023</span></div>
  <div class="pub-content">
    <div class="pub-header">
      <span class="pub-title">Continual Graph Convolutional Network for Text Classification.</span>
      <span class="css-badge badge-red">CCF-A</span>
    </div>
    <div class="pub-meta">
      <span class="pub-author">Tiandeng Wu, ..., <strong>Jiandong Ding</strong><sup>*</sup></span>
      <a href="https://ojs.aaai.org/index.php/AAAI/article/view/26611" class="pub-link">PDF</a>
    </div>
  </div>
</div>

<div class="pub-card">
  <div class="pub-venue-mark mark-red">ACL<span class="venue-year">Findings</span></div>
  <div class="pub-content">
    <div class="pub-header">
      <span class="pub-title">Neural Topic Modeling Based on Cycle Adversarial Training and Contrastive Learning.</span>
      <span class="css-badge badge-red">CCF-A</span>
    </div>
    <div class="pub-meta">
      <span class="pub-author">Boyu Wang, ..., <strong>Jiandong Ding</strong></span>
      <a href="https://aclanthology.org/2023.findings-acl.616" class="pub-link">PDF</a>
    </div>
  </div>
</div>

<h3 class="year-header">2022</h3>

<div class="pub-card">
  <div class="pub-venue-mark mark-blue">NAACL<span class="venue-year">2022</span></div>
  <div class="pub-content">
    <div class="pub-header">
      <span class="pub-title">EPiDA: an Easy Plug-in Data Augmentation Framework.</span>
      <span class="css-badge badge-blue">CCF-B</span>
    </div>
    <div class="pub-meta">
      <span class="pub-author">Minyi Zhao, ..., <strong>Jiandong Ding</strong>, et al.</span>
      <a href="https://aclanthology.org/2022.naacl-main.349" class="pub-link">PDF</a>
    </div>
  </div>
</div>

<h3 class="year-header">2021</h3>

<div class="pub-card">
  <div class="pub-venue-mark mark-red">NIPS<span class="venue-year">2021</span></div>
  <div class="pub-content">
    <div class="pub-header">
      <span class="pub-title">DP-SSL: Towards Robust Semi-supervised Learning with A Few Labeled Samples.</span>
      <span class="css-badge badge-red">CCF-A</span>
    </div>
    <div class="pub-meta">
      <span class="pub-author">Yi Xu, <strong>Jiandong Ding</strong>, et al.</span>
      <a href="https://arxiv.org/abs/2110.13740" class="pub-link">PDF</a>
    </div>
  </div>
</div>

<div class="pub-card">
  <div class="pub-venue-mark mark-blue">EMNLP<span class="venue-year">2021</span></div>
  <div class="pub-content">
    <div class="pub-header">
      <span class="pub-title">Weakly-supervised Text Classification Based on Keyword Graph.</span>
      <span class="css-badge badge-blue">CCF-B</span>
    </div>
    <div class="pub-meta">
      <span class="pub-author">Lu Zhang, <strong>Jiandong Ding</strong>, et al.</span>
      <a href="https://aclanthology.org/2021.emnlp-main.222" class="pub-link">PDF</a>
    </div>
  </div>
</div>

<div class="pub-card">
  <div class="pub-venue-mark mark-purple">ICIS<span class="venue-year">2021</span></div>
  <div class="pub-content">
    <div class="pub-header">
      <span class="pub-title">Effectiveness of AI assistance in live-streaming: a randomized field experiment.</span>
      <span class="css-badge badge-purple">IS Top</span>
    </div>
    <div class="pub-meta">
      <span class="pub-author">Lingli Wang, ..., <strong>Jiandong Ding</strong>, et al.</span>
      <a href="https://aisel.aisnet.org/icis2021/hci_robot/hci_robot/3/" class="pub-link">PDF</a>
    </div>
  </div>
</div>

<div class="pub-card">
  <div class="pub-venue-mark mark-purple">ICIS<span class="venue-year">2021</span></div>
  <div class="pub-content">
    <div class="pub-header">
      <span class="pub-title">The sales data sells: Effects of real-time sales analytics on live streaming selling.</span>
      <span class="css-badge badge-purple">IS Top</span>
    </div>
    <div class="pub-meta">
      <span class="pub-author">Yumei He, ..., <strong>Jiandong Ding</strong>, et al.</span>
      <a href="https://aisel.aisnet.org/icis2021/data_analytics/data_analytics/2/" class="pub-link">PDF</a>
    </div>
  </div>
</div>

<h3 class="year-header">Early Career (Bioinformatics)</h3>
<p style="color:#666; font-size:0.9em; margin-bottom:20px;">
  Focus: Deciphering the code of life with Machine Learning.
</p>

<div class="pub-card">
  <div class="pub-venue-mark mark-red">GPB<span class="venue-year">Q1</span></div>
  <div class="pub-content">
    <div class="pub-header">
      <span class="pub-title">Finding MicroRNA Targets in Plants: Current Status and Perspectives.</span>
      <span class="css-badge badge-red">JCR-Q1</span>
    </div>
    <div class="pub-meta">
      <span class="pub-author"><strong>Jiandong Ding</strong>, et al.</span>
      <a href="https://academic.oup.com/gpb/article/10/5/264/7221796" class="pub-link">PDF</a>
    </div>
  </div>
</div>

<div class="pub-card">
  <div class="pub-venue-mark mark-blue">BMC<span class="venue-year">Genomics</span></div>
  <div class="pub-content">
    <div class="pub-header">
      <span class="pub-title">Automatically clustering large-scale miRNA sequences.</span>
      <span class="css-badge badge-blue">JCR-Q2</span>
    </div>
    <div class="pub-meta">
      <span class="pub-author"><strong>Jiandong Ding</strong>, et al.</span>
      <a href="https://bmcgenomics.biomedcentral.com/articles/10.1186/1471-2164-13-S8-S15" class="pub-link">PDF</a>
    </div>
  </div>
</div>

<div class="pub-card">
  <div class="pub-venue-mark mark-blue">BIBM<span class="venue-year">IEEE</span></div>
  <div class="pub-content">
    <div class="pub-header">
      <span class="pub-title">imiRTP: An Integrated Method to Identifying miRNA-target Interactions.</span>
      <span class="css-badge badge-blue">CCF-B</span>
    </div>
    <div class="pub-meta">
      <span class="pub-author"><strong>Jiandong Ding</strong>, et al.</span>
      <a href="http://ieeexplore.ieee.org/document/6120415/" class="pub-link">PDF</a>
    </div>
  </div>
</div>

<div class="pub-card">
  <div class="pub-venue-mark mark-blue">BMC<span class="venue-year">BioInfo</span></div>
  <div class="pub-content">
    <div class="pub-header">
      <span class="pub-title">miRFam: an effective automatic miRNA classification method.</span>
      <span class="css-badge badge-blue">JCR-Q2</span>
    </div>
    <div class="pub-meta">
      <span class="pub-author"><strong>Jiandong Ding</strong>, et al.</span>
      <a href="https://bmcbioinformatics.biomedcentral.com/articles/10.1186/1471-2105-12-216" class="pub-link">PDF</a>
    </div>
  </div>
</div>

<div class="pub-card">
  <div class="pub-venue-mark mark-blue">BMC<span class="venue-year">BioInfo</span></div>
  <div class="pub-content">
    <div class="pub-header">
      <span class="pub-title">MiRenSVM: towards better prediction of microRNA precursors.</span>
      <span class="css-badge badge-blue">JCR-Q2</span>
    </div>
    <div class="pub-meta">
      <span class="pub-author"><strong>Jiandong Ding</strong>, et al.</span>
      <a href="https://bmcbioinformatics.biomedcentral.com/articles/10.1186/1471-2105-11-S11-S11" class="pub-link">PDF</a>
    </div>
  </div>
</div>
