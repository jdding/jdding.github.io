---
layout: single
author_profile: true
title: "Paper Digest: RPE4Rec"
permalink: /rpe4rec
classes: wide
---

<style>
  .page__title { display: none !important; }
  /* --- 基础排版 --- */
  .digest-container {
    font-size: 0.9rem;
    line-height: 1.6;
    color: #333;
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
  }
  
  /* --- 顶部 Hero 卡片 --- */
  .digest-hero {
    background: #f8fafc;
    border: 1px solid #e2e8f0;
    border-radius: 8px;
    padding: 20px 25px;
    margin-bottom: 35px;
    border-left: 5px solid #3182ce;
  }
  .hero-title {
    font-size: 1.3em;
    font-weight: 800;
    color: #1a202c;
    margin-bottom: 12px;
    display: block;
    line-height: 1.4;
  }
  .hero-meta {
    font-size: 0.9em;
    color: #4a5568;
    margin-bottom: 15px;
  }
  .hero-tldr {
    font-size: 0.95em;
    font-weight: 600;
    color: #2b6cb0;
    background: #ebf8ff;
    padding: 10px 15px;
    border-radius: 6px;
    display: inline-block;
    border: 1px solid #bee3f8;
  }

  /* --- 章节标题 --- */
  .digest-section {
    margin-bottom: 35px;
  }
  .section-title {
    font-size: 1.15em;
    font-weight: 800;
    color: #2d3748;
    border-bottom: 2px solid #edf2f7;
    padding-bottom: 8px;
    margin-bottom: 15px;
  }
  
  /* --- 重点标注框 (Callout) --- */
  .callout {
    padding: 15px 20px;
    border-radius: 6px;
    margin: 15px 0;
  }
  .callout-red { background: #fff5f5; border: 1px solid #fed7d7; }
  .callout-green { background: #f0fff4; border: 1px solid #c6f6d5; }
  
  /* --- 标签 --- */
  .tag {
    font-size: 0.75em;
    font-weight: bold;
    padding: 2px 8px;
    border-radius: 12px;
    color: #fff;
    text-transform: uppercase;
  }
  .tag-wsdm { background: #3182ce; }
  .tag-oral { background: #dd6b20; }
  
  /* --- 图片容器 --- */
  .img-container {
    text-align: center;
    margin: 25px 0;
  }
  .img-container img {
    max-width: 100%;
    border-radius: 8px;
    border: 1px solid #e2e8f0;
    box-shadow: 0 4px 15px rgba(0,0,0,0.05);
  }
  .img-caption {
    font-size: 0.85em;
    color: #718096;
    margin-top: 10px;
    font-weight: 500;
  }

  @media (max-width: 768px) {
    .digest-hero { padding: 15px; margin-bottom: 25px; }
    .hero-title { font-size: 1.15em; }
    .section-title { font-size: 1.05em; }
    .callout { padding: 12px 15px; }
  }
</style>

<div class="digest-container">

<div class="digest-hero">
  <span class="hero-title">RPE4Rec: Enhancing Dynamic Node Retrieval with Efficient Relative Position Encoding</span>
  <div class="hero-meta">
    <span class="tag tag-wsdm">WSDM 2026</span> <span class="tag tag-oral">Oral Presentation</span> <br><br>
    <strong>Authors:</strong> Ke Cheng, Heng Chang, Pengyang Wang, Liang Gu, <strong>Jiandong Ding</strong>, Yi Cao, Junchen Ye, Bowen Du
  </div>
  <div class="hero-tldr">
    💡 提出了一种专为动态节点检索设计的相对位置编码（RPE）架构。在保持 SOTA 推荐精度的同时，彻底摆脱了重度 Transformer 带来的延迟瓶颈，实现了十亿级图谱上的亚毫秒级实时检索。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">🚨 1. The Problem: 工业界的真实痛点</div>
  <p>在真实的工业级推荐系统（如应用市场、流媒体视频）中，用户兴趣和物品的热度都是<strong>动态演进（Dynamically Evolving）</strong>的。为了捕捉这种时序与结构的动态变化，学术界通常使用基于 Transformer 或动态图神经网络（DGNN）的重型序列模型。</p>
  
  <div class="callout callout-red">
    <strong>致命瓶颈：在线推理延迟 (Inference Latency)</strong><br>
    传统的自注意力机制（Self-Attention）带来了 $O(N^2)$ 的计算复杂度。当我们在端侧或资源受限的云端面对<strong>十亿级（Billion-scale）</strong>的候选物品进行实时召回（Retrieval）时，这些重型序列模型根本无法满足工业界极其严苛的 P99 延迟要求（通常需小于 10ms）。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">🚀 2. The Breakthrough: 核心架构创新</div>
  <p>为了打破“精度与速度”的零和博弈，我们转变了思路：<strong>放弃绝对时间状态的重度计算，转而对“相对动态模式”进行极其轻量化的编码。</strong></p>
  
  <div class="img-container">
    <img src="/assets/images/WSDM2026.png" alt="RPE4Rec Architecture Overview">
    <div class="img-caption">Figure 1: The architecture of RPE4Rec, decoupling heavy sequence modeling from online serving.</div>
  </div>

  <ul>
    <li><strong>Efficient Relative Position Encoding (高效相对位置编码):</strong> 我们设计了一种全新的 RPE 机制。它无需在在线推理时计算复杂的全连接注意力图，而是通过相对位置感知，将复杂的节点动态演化历史直接“压缩”到固定的向量空间中。</li>
    <li><strong>Dynamic Node Retrieval (动态节点解耦检索):</strong> 通过这种编码，用户和物品被安全地投影到一个统一的表征空间。线上服务时，只需通过高效的近似最近邻搜索框架（如 HNSW/Faiss），即可完成亚毫秒级的最大内积搜索（MIPS）。</li>
  </ul>
</div>

<div class="digest-section">
  <div class="section-title">📈 3. Key Results: 业务与实验价值</div>
  <div class="callout callout-green">
    <strong>极致效率与性能双赢 (Extreme Efficiency at Scale):</strong><br>
    在基准测试中，RPE4Rec 的在线推理吞吐量（Throughput）和延迟（Latency）均实现了数量级的飞跃，使其成为少数真正能直接部署在工业界极大规模推荐系统中的动态图架构之一。
  </div>
  <p>同时，在多个真实世界数据集上，RPE4Rec 的推荐准确率（如 HR@10, NDCG@10）并没有因为模型的“轻量化”而妥协，反而稳定超越了现有的高复杂度序列模型和动态图基线模型。</p>
</div>

<div class="digest-section">
  <div class="section-title">🔗 4. Resources</div>
  <p>
    📄 <strong>Paper PDF:</strong> <a href="https://dl.acm.org/doi/pdf/10.1145/3773966.3778006" target="_blank" style="color:#3182ce; font-weight:bold;">ACM Digital Library</a><br>
  </p>
</div>

</div>