---
layout: single
author_profile: true
title: "About Me"
classes: wide
---

<style>
  .paper-card {
    display: flex;
    gap: 20px;
    margin-bottom: 30px;
    padding-bottom: 20px;
    border-bottom: 1px solid #f2f3f3; /* 每篇论文加个淡淡的分割线 */
  }
  .paper-card:last-child { border-bottom: none; }
  
  /* 图片容器：默认隐藏，有图时自动显示 */
  .paper-img {
    flex: 0 0 40%; /* 图片占约 1/3 宽度 */
    max-width: 500px;
#    display: none; /* ⚠️ 暂时隐藏，等你明天加了 img 标签后，把这行删掉即可显示 */
  }
  
  /* 如果你想明天直接开启图片位，可以把上面 display: none 删掉 */
  
  .paper-img img {
    width: 100%;
    border-radius: 6px;
    border: 1px solid #eef0f1;
    box-shadow: 0 2px 5px rgba(0,0,0,0.05);
  }
  
  .paper-content {
    flex: 1; /* 文字占剩余空间 */
  }

  /* 针对 Highlights 的小标题优化 */
  .hl-tag {
    font-size: 0.85em;
    font-weight: bold;
    text-transform: uppercase;
    padding: 2px 6px;
    border-radius: 4px;
    margin-right: 5px;
  }
  .tag-prob { background-color: #fcece8; color: #c0392b; } /* 红色系 */
  .tag-sol { background-color: #e8f8f5; color: #1abc9c; } /* 绿色系 */
  
  /* 手机端适配 */
  @media (max-width: 768px) {
    .paper-card { flex-direction: column; }
    .paper-img { flex: 0 0 100%; max-width: 100%; display: block; margin-bottom: 15px;}
  }
</style>

I am a **Principal Algorithm Expert** at **Huawei Technologies**, bridging the gap between theoretical algorithms and industrial-scale systems.

My research philosophy is summarized as **"From Biological Sequences to User Behaviors"**. I apply deep representation learning to decipher underlying patterns in data—from genomic sequences in my early career to billion-scale user behavior logs in commercial recommendation systems today.

Currently, I focus on building **Trustworthy & Scalable AI Systems**, with specific interests in:
* **Trustworthy RecSys:** Causal Inference, Debiasing, and Fairness (TOIS '26, AAAI '26).
* **System Efficiency:** Retrieval Architecture, Model Compression, and On-device AI (WSDM '26, KDD '24).
* **LLM & Agents:** Large Language Models for BI and Data Agents.

---

## 🔥 News

* **[Jan 2026]** 🎉 Paper *"Mitigating Popularity Bias in Recommendation"* accepted by **ACM TOIS** (CCF-A)!
* **[Nov 2025]** 🚀 Two papers accepted! *"RPE4Rec"* by **WSDM 2026**, and *"Invariant Feature Learning"* by **AAAI 2026**.
* **[Dec 2024]** Paper *"BIS: NL2SQL Service Evaluation Benchmark"* accepted by **ICSOC 2024**.
* **[Aug 2024]** Paper on Low-rank Compression for CTR prediction accepted by **KDD 2024**.

---

## 🎯 Research Highlights

My current research focuses on three core challenges in modern recommender systems: **Trustworthiness**, **Efficiency**, and **LLM Integration**.

### 1. Trustworthy & Unbiased Recommendation

<div class="paper-card">
  <div class="paper-img" style="display:block"> <img src="/assets/images/TOIS2026.png">
  </div>
  <div class="paper-content">
    <strong>[TOIS 2026] Mitigating Popularity Bias with Global Listwise Learning</strong>
    <br><br>
    <span class="hl-tag tag-prob">Problem</span> Recommender systems often trap users in "echo chambers" or confuse popularity with genuine interest.
    <br>
    <span class="hl-tag tag-sol">Breakthrough</span> We proposed a <strong>Global Listwise Learning</strong> framework with progressive bi-weighting. Unlike pointwise methods, it optimizes the entire ranking list to balance long-tail exposure without sacrificing user satisfaction.
  </div>
</div>

<div class="paper-card">
  <div class="paper-img" style="display:block"> <img src="/assets/images/AAAI2026.png">
  </div>
  <div class="paper-content">
    <strong>[AAAI 2026] Causal Inference for Watch-time Prediction</strong>
    <br><br>
    <span class="hl-tag tag-prob">Problem</span> In short-video feeds, "duration biases" (longer videos naturally get more watch time) mislead algorithms.
    <br>
    <span class="hl-tag tag-sol">Breakthrough</span> We introduced <strong>Invariant Feature Learning</strong> based on counterfactual inference to uncover the user's <em>true</em> willingness to watch, independent of video length.
  </div>
</div>

### 2. Extreme Efficiency at Scale

<div class="paper-card">
  <div class="paper-img" style="display:block"> <img src="/assets/images/WSDM2026.png">
  </div>
  <div class="paper-content">
    <strong>[WSDM 2026] RPE4Rec: High-Efficiency Dynamic Retrieval</strong>
    <br><br>
    <span class="hl-tag tag-prob">Problem</span> Advanced Transformers are often too slow for real-time retrieval on billion-scale items.
    <br>
    <span class="hl-tag tag-sol">Breakthrough</span> We designed a novel <strong>Relative Position Encoding (RPE)</strong> mechanism specifically for dynamic node retrieval. This architecture significantly reduces inference latency while capturing complex sequential patterns.
  </div>
</div>

<div class="paper-card">
  <div class="paper-content">
    <strong>[KDD 2024] Low-Rank Compression for CTR Prediction</strong>
    <br><br>
    <span class="hl-tag tag-sol">Breakthrough</span> A unified framework to compress massive CTR models using low-rank factorization, enabling high-performance ranking on resource-constrained devices (e.g., mobile phones).
  </div>
</div>

### 3. Large Models: Systems & Agents

<div class="paper-card">
  <div class="paper-content">
    <strong>[ICSOC 2025] NL2SQL Benchmark for Business Intelligence</strong>
    <br><br>
    <span class="hl-tag tag-sol">Intelligence Layer</span> Evaluating how Large Language Models (LLMs) act as Data Agents to translate natural language into complex SQL queries, enabling automated business decision-making.
  </div>
</div>

<div class="paper-card">
  <div class="paper-content">
    <strong>[arXiv 2024] P/D-Serve: Serving Disaggregated LLMs at Scale</strong>
    <br><br>
    <span class="hl-tag tag-sol">System Layer</span> We proposed a disaggregated serving architecture that optimizes KV-cache management and scheduling, significantly improving throughput for large-scale deployment.
  </div>
</div>

### 4. Data-Centric AI: Weak Supervision & Augmentation

<div class="paper-card">
  <div class="paper-content">
    <strong>[NeurIPS 2021] DP-SSL: Robust Semi-supervised Learning via Data Programming</strong>
    <br><br>
    <span class="hl-tag tag-prob">Problem</span> Deep learning performance heavily relies on massive labeled data, which is expensive and slow to obtain.
    <br>
    <span class="hl-tag tag-sol">Breakthrough</span> We introduced a <strong>Data Programming (DP)</strong> scheme into semi-supervised learning. It automatically generates probabilistic labels for unlabeled data, achieving SOTA performance even with only <strong>40 labeled samples</strong> per class.
  </div>
</div>

<div class="paper-card">
  <div class="paper-content">
    <strong>[EMNLP 2021] Weakly-supervised Text Classification via Keyword Graph</strong>
    <br><br>
    <span class="hl-tag tag-sol">Methodology</span> Instead of manual labeling, we utilize <strong>Keyword Graphs</strong> to propagate weak supervision signals. By modeling the correlation among keywords with GNNs, we can generate high-quality pseudo-labels for massive unlabeled corpora automatically.
  </div>
</div>
