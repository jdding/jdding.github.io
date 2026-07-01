---
layout: single
author_profile: true
title: "Paper Digest: Continual GCN"
permalink: /continual-gcn
classes: wide
description: "针对流式文本数据，提出了一种具备“终身学习”能力的图卷积网络（Continual GCN）。在持续吸纳新领域知识的同时，完美克服了神经网络的灾难性遗忘现象。"
keywords: "Jiandong Ding, Huawei, Continual Learning, Graph Convolutional Network, Text Classification, Catastrophic Forgetting"
---

<style>
  .page__title { display: none !important; }
  .digest-container { font-size: 0.9rem; line-height: 1.6; color: #333; font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif; }
  .digest-hero { background: #f8fafc; border: 1px solid #e2e8f0; border-radius: 8px; padding: 20px 25px; margin-bottom: 35px; border-left: 5px solid #d69e2e; }
  .hero-title { font-size: 1.3em; font-weight: 800; color: #1a202c; margin-bottom: 12px; display: block; line-height: 1.4; }
  .hero-meta { font-size: 0.9em; color: #4a5568; margin-bottom: 15px; }
  .hero-tldr { font-size: 0.95em; font-weight: 600; color: #975a16; background: #fffff0; padding: 10px 15px; border-radius: 6px; display: inline-block; border: 1px solid #fefcbf; }
  .digest-section { margin-bottom: 35px; }
  .section-title { font-size: 1.15em; font-weight: 800; color: #2d3748; border-bottom: 2px solid #edf2f7; padding-bottom: 8px; margin-bottom: 15px; }
  .callout { padding: 15px 20px; border-radius: 6px; margin: 15px 0; }
  .callout-red { background: #fff5f5; border: 1px solid #fed7d7; }
  .callout-green { background: #f0fff4; border: 1px solid #c6f6d5; }
  .tag { font-size: 0.75em; font-weight: bold; padding: 2px 8px; border-radius: 12px; color: #fff; text-transform: uppercase; }
  .tag-aaai { background: #d69e2e; }

  @media (max-width: 768px) {
    .digest-hero { padding: 15px; margin-bottom: 25px; }
    .hero-title { font-size: 1.15em; }
    .section-title { font-size: 1.05em; }
    .callout { padding: 12px 15px; }
  }
</style>

<div class="digest-container">

<div class="digest-hero">
  <span class="hero-title">Continual Graph Convolutional Network for Text Classification</span>
  <div class="hero-meta">
    <span class="tag tag-aaai">AAAI 2023</span> <br><br>
    <strong>Authors:</strong> T. Wu, ..., <strong>Jiandong Ding</strong>, et al.
  </div>
  <div class="hero-tldr">
    💡 针对流式文本数据，提出了一种具备“终身学习”能力的图卷积网络（Continual GCN）。在持续吸纳新领域知识的同时，完美克服了神经网络的灾难性遗忘现象。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">🚨 1. The Problem: 神经网络的“阅后即焚”缺陷</div>
  <p>在真实世界中（如新闻流、社交媒体监控），文本数据是持续涌现的，且类别不断膨胀。图卷积网络（GCN）在处理复杂文本结构时表现出色，但面临一个致命弱点：<strong>灾难性遗忘 (Catastrophic Forgetting)</strong>。</p>
  
  <div class="callout callout-red">
    <strong>核心痛点：昂贵的推翻重来</strong><br>
    当 GCN 利用今天的新闻数据进行权重更新时，会迅速抹除掉其昨天学到的图拓扑特征。为了保证分类的准确率，工业界通常被迫每天将所有历史数据混合在一起从头训练（Retrain from scratch），这不仅浪费了海量的算力资源，更无法应对高频实时的数据流。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">🚀 2. The Breakthrough: 拓扑感知的持续图学习</div>
  <p>为了让模型拥有“历史记忆”，我们设计了 <strong>Continual GCN</strong> 架构：</p>
  <ul>
    <li><strong>动态图扩展与保护:</strong> 模型能够根据源源不断的新文本序列，动态地向已有词图（Word Graph）中添加新节点与边。同时，引入了拓扑感知的正则化策略（Topology-aware Regularization），锁定或保护那些对旧任务至关重要的核心结构特征不被新梯度冲刷掉。</li>
    <li><strong>抗遗忘的记忆重放:</strong> 结合情景记忆机制（Episodic Memory），在学习新任务时，极其轻量地回放少量高度浓缩的历史图结构信息，实现新旧知识的平滑融合。</li>
  </ul>
</div>

<div class="digest-section">
  <div class="section-title">📈 3. Key Results: 业务与实验价值</div>
  <div class="callout callout-green">
    <strong>兼得快速适应与历史保鲜：</strong><br>
    在多个序贯文本分类任务基准中，Continual GCN 在保持对新任务极速适应（Fast Adaptation）的同时，历史任务的准确率几乎未见衰减。这种设计极大地降低了流式自然语言处理系统的在线维护成本。
  </div>
</div>

</div>

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "ScholarlyArticle",
  "headline": "Continual Graph Convolutional Network for Text Classification",
  "author": [
    {
      "@type": "Person",
      "name": "Jiandong Ding",
      "affiliation": {
        "@type": "Organization",
        "name": "Huawei Technologies / Fudan University"
      }
    }
  ],
  "description": "针对流式文本数据，提出了一种具备“终身学习”能力的图卷积网络（Continual GCN）。在持续吸纳新领域知识的同时，完美克服了神经网络的灾难性遗忘现象。",
  "about": {
    "@type": "Thing",
    "name": "Continual Learning and Graph Neural Networks"
  }
}
</script>
