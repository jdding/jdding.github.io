---
layout: single
author_profile: true
title: "Paper Digest: Unified Low-rank Compression for CTR"
permalink: /kdd-ctr
classes: wide
---

<style>
  .page__title { display: none !important; }
  .digest-container { font-size: 0.9rem; line-height: 1.6; color: #333; font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif; }
  .digest-hero { background: #f8fafc; border: 1px solid #e2e8f0; border-radius: 8px; padding: 20px 25px; margin-bottom: 35px; border-left: 5px solid #805ad5; }
  .hero-title { font-size: 1.3em; font-weight: 800; color: #1a202c; margin-bottom: 12px; display: block; line-height: 1.4; }
  .hero-meta { font-size: 0.9em; color: #4a5568; margin-bottom: 15px; }
  .hero-tldr { font-size: 0.95em; font-weight: 600; color: #553c9a; background: #faf5ff; padding: 10px 15px; border-radius: 6px; display: inline-block; border: 1px solid #e9d8fd; }
  .digest-section { margin-bottom: 35px; }
  .section-title { font-size: 1.15em; font-weight: 800; color: #2d3748; border-bottom: 2px solid #edf2f7; padding-bottom: 8px; margin-bottom: 15px; }
  .callout { padding: 15px 20px; border-radius: 6px; margin: 15px 0; }
  .callout-red { background: #fff5f5; border: 1px solid #fed7d7; }
  .callout-green { background: #f0fff4; border: 1px solid #c6f6d5; }
  .tag { font-size: 0.75em; font-weight: bold; padding: 2px 8px; border-radius: 12px; color: #fff; text-transform: uppercase; }
  .tag-kdd { background: #805ad5; }

  @media (max-width: 768px) {
    .digest-hero { padding: 15px; margin-bottom: 25px; }
    .hero-title { font-size: 1.15em; }
    .section-title { font-size: 1.05em; }
    .callout { padding: 12px 15px; }
  }
</style>

<div class="digest-container">

<div class="digest-hero">
  <span class="hero-title">Unified Low-rank Compression Framework for Click-through Rate Prediction</span>
  <div class="hero-meta">
    <span class="tag tag-kdd">KDD 2024</span> <br><br>
    <strong>Authors:</strong> Hui Yu, ..., <strong>Jiandong Ding</strong>, et al.
  </div>
  <div class="hero-tldr">
    💡 针对工业级推荐系统庞大的 Embedding 内存瓶颈，提出了一种统一的低秩压缩框架。在不损失特征交叉表达能力的前提下，将 CTR 模型的体积压缩至极小，成功解锁了资源受限环境（如端侧手机）下的高性能排序能力。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">🚨 1. The Problem: 推荐模型的内存刺客</div>
  <p>在工业级点击率（CTR）预测中，为了捕捉极其稀疏的用户与物品特征，模型通常依赖于极其庞大的 Embedding Tables（嵌入表）。</p>
  
  <div class="callout callout-red">
    <strong>核心痛点：无法下放的云端巨兽</strong><br>
    这些 Embedding 表往往占用数十甚至上百 GB 的内存，成为了阻碍 CTR 模型向边缘设备（如手机端侧计算）部署的“内存墙”。传统的剪枝（Pruning）或量化（Quantization）方法过于粗暴，极易破坏细粒度的特征交叉（Feature Interactions）信息，导致核心指标 AUC 严重掉点。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">🚀 2. The Breakthrough: 统一低秩分解架构</div>
  <p>我们跳出了稀疏剪枝的传统路线，提出了一种优雅的数学解法——<strong>Unified Low-rank Compression (统一低秩压缩)</strong>：</p>
  <ul>
    <li><strong>动态秩分配 (Dynamic Rank Allocation):</strong> 并非所有特征都同等重要。框架能够根据特征的频次和重要性，自适应地为不同的 Embedding 矩阵分配最优的“秩（Rank）”，将庞大的高维稀疏矩阵分解为两个极小的高密矩阵的乘积。</li>
    <li><strong>端到端统一优化:</strong> 将压缩过程与 CTR 预测任务统一到一个端到端的损失函数中进行联合训练，确保在压缩过程中最大程度保留对目标任务最关键的特征交互模式。</li>
  </ul>
</div>

<div class="digest-section">
  <div class="section-title">📈 3. Key Results: 业务与实验价值</div>
  <div class="callout callout-green">
    <strong>破局“端云协同”的物理限制：</strong><br>
    该框架在多个亿级真实工业数据集上证明，能够将模型尺寸缩减 <strong>80% 以上</strong>，同时保持甚至微幅超越原始全尺寸模型的 AUC 和 Logloss 表现。这为下一代“端云协同推荐”提供了最坚实的底层工程基础。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">🔗 4. Resources</div>
  <p>
    📄 <strong>Paper PDF:</strong> <a href="https://dl.acm.org/doi/10.1145/3637528.3671520" target="_blank" style="color:#3182ce; font-weight:bold;">ACM Digital Library</a>
  </p>
</div>

</div>