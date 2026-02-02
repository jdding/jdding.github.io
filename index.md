---
layout: single
author_profile: true
title: "Jiandong Ding (丁建栋)"
classes: wide
---

<style>
  /* 隐藏页面内标题（保留浏览器标签页标题） */
  .page__title { display: none; }
  
  /* 重申研究亮点卡片样式，确保图片在左文字在右 */
  .paper-card {
    display: flex;
    gap: 20px;
    margin-bottom: 25px;
    padding-bottom: 20px;
    border-bottom: 1px solid #f0f0f0;
    font-size: 0.95rem;
    line-height: 1.55;
    color: #444;
  }
  
  .paper-card:last-child { border-bottom: none; }
  
  .paper-img {
    flex: 0 0 35%;
    max-width: 350px;
  }
  
  .paper-img img {
    width: 100%;
    border-radius: 6px;
    border: 1px solid #e1e4e8;
    box-shadow: 0 4px 10px rgba(0,0,0,0.03);
  }
  
  .paper-content {
    flex: 1;
  }
  
  .paper-title {
    font-size: 1em;
    font-weight: 700;
    color: #2c3e50;
    display: block;
    margin-bottom: 6px;
  }
  
  /* --- 手机端适配 --- */
  @media (max-width: 768px) {
    .card-container { flex-direction: column; gap: 15px; }
    .card-image { flex: 0 0 100%; max-width: 100%; margin-bottom: 10px; }
    .paper-card {
      flex-direction: column;
    }
    .paper-img {
      flex: 0 0 auto;
      max-width: 100%;
    }
  }
</style>

I am a **Principal Algorithm Expert** at **Huawei Technologies**, bridging the gap between theoretical algorithms and industrial-scale systems.

My research philosophy is summarized as **"From Biological Sequences to User Behaviors"**. I apply deep representation learning to decipher underlying patterns in data—from genomic sequences in my early career to billion-scale user behavior logs in commercial recommendation systems today.

Currently, I focus on building **Next-Generation Recommender Systems** driven by Generative AI, with specific interests in:
* **Generative RecSys:** LLM-driven Recommendation, Sequential Modeling, and User Representation.
* **Trustworthy AI:** Causal Inference, Unbiased Learning, and Fairness in Ranking.
* **System Efficiency:** Edge-Cloud Collaboration, Retrieval Architecture, and Model Compression.

---

## 🔥 News

* **[Feb 2026]** 🎉 Paper *"Mitigating Popularity Bias in Recommendation"* accepted by **ACM TOIS**.
* **[Jan 2026]** 🚀 Paper *"Hierarchical and Preference-Aware Generative Recommendations"* accepted by **TheWebConf (WWW) 2026**.
* **[Nov 2025]** Two papers accepted! *"RPE4Rec"* by **WSDM 2026**, and *"Invariant Feature Learning"* by **AAAI 2026**.


---

## 🎯 Research Highlights

My current research focuses on three core pillars: **Generative & Trustworthy RecSys**, **Extreme Efficiency**, and **LLM Agents**.

### 1. Next-Gen Recommendation: Generative & Trustworthy

<div class="paper-card">
  <div class="paper-img"> 
    <img src="/assets/images/WWW2026.png" alt="[WWW 2026] Generative Recs: Hierarchical & Preference-Aware" loading="lazy">
  </div>
  <div class="paper-content">
    <span class="paper-title">[WWW 2026] Generative Recs: Hierarchical & Preference-Aware</span>
    <span class="hl-tag tag-prob">Problem</span> Existing "flat-sequence" generative models overlook the hierarchical structure of user sessions and introduce noise in long histories.
    <br><br>
    <span class="hl-tag tag-sol">Breakthrough</span> We proposed <strong>HPGR</strong>, a two-stage generative framework. It combines structure-aware pre-training with preference-guided sparse attention to capture the true hierarchy of user interests, achieving SOTA performance.
  </div>
</div>

<div class="paper-card">
  <div class="paper-img"> 
    <img src="/assets/images/AAAI2026.png" alt="[AAAI 2026] Causal Inference for Watch-time Prediction" loading="lazy">
  </div>
  <div class="paper-content">
    <span class="paper-title">[AAAI 2026] Causal Inference for Watch-time Prediction</span>
    <span class="hl-tag tag-prob">Problem</span> In short-video feeds, "duration biases" (longer videos naturally get more watch time) mislead algorithms.
    <br><br>
    <span class="hl-tag tag-sol">Breakthrough</span> We introduced <strong>Invariant Feature Learning</strong> based on counterfactual inference to uncover the user's <em>true</em> willingness to watch, independent of video length.
  </div>
</div>

### 2. Extreme Efficiency at Scale

<div class="paper-card">
  <div class="paper-img"> 
    <img src="/assets/images/WSDM2026.png" alt="[WSDM 2026] RPE4Rec: High-Efficiency Dynamic Retrieval" loading="lazy">
  </div>
  <div class="paper-content">
    <span class="paper-title">[WSDM 2026] RPE4Rec: High-Efficiency Dynamic Retrieval</span>
    <span class="hl-tag tag-prob">Problem</span> Advanced Transformers are often too slow for real-time retrieval on billion-scale items.
    <br><br>
    <span class="hl-tag tag-sol">Breakthrough</span> We designed a novel <strong>Relative Position Encoding (RPE)</strong> mechanism specifically for dynamic node retrieval. This architecture significantly reduces inference latency while capturing complex sequential patterns.
  </div>
</div>

<div class="paper-card">
  <div class="paper-img"> 
    <img src="/assets/images/KDD2024.png" alt="[KDD 2024] Low-Rank Compression for CTR Prediction" loading="lazy">
  </div>
  <div class="paper-content">
    <span class="paper-title">[KDD 2024] Low-Rank Compression for CTR Prediction</span>
    <span class="hl-tag tag-sol">Breakthrough</span> A unified framework to compress massive CTR models using low-rank factorization, enabling high-performance ranking on resource-constrained devices (e.g., mobile phones).
  </div>
</div>

### 3. LLM Agents & Data Intelligence

<div class="paper-card">
  <div class="paper-img"> 
    <img src="/assets/images/ICSOC2025.png" alt="[ICSOC 2025] NL2SQL Benchmark for Business Intelligence" loading="lazy">
  </div>
  <div class="paper-content">
    <span class="paper-title">[ICSOC 2025] NL2SQL Benchmark for Business Intelligence</span>
    <span class="hl-tag tag-sol">Intelligence Layer</span> Evaluating how Large Language Models (LLMs) act as Data Agents to translate natural language into complex SQL queries, enabling automated business decision-making.
  </div>
</div>

<div class="paper-card">
  <div class="paper-img"> 
    <img src="/assets/images/NIPS2021.png" alt="[NeurIPS 2021] DP-SSL: Robust Semi-supervised Learning" loading="lazy">
  </div>
  <div class="paper-content">
    <span class="paper-title">[NeurIPS 2021] DP-SSL: Robust Semi-supervised Learning</span>
    <span class="hl-tag tag-prob">Problem</span> Deep learning performance heavily relies on massive labeled data, which is expensive to obtain.
    <br><br>
    <span class="hl-tag tag-sol">Breakthrough</span> We introduced a <strong>Data Programming (DP)</strong> scheme that automatically generates probabilistic labels for unlabeled data, achieving SOTA performance with minimal supervision (only 40 labeled samples).
  </div>
</div>

### 📫 Get in Touch

I am deeply committed to bridging the gap between academia and industry. Having led numerous research initiatives at Huawei CBG and Alibaba DAMO, I am always open to:
* **Academic Partnerships:** Collaborative research & grant applications.
* **Professional Events:** Industry summits and tech forums.

For collaboration inquiries: **jdding [at] fudan.edu.cn**
