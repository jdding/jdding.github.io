---
layout: single
author_profile: true
title: "Paper Digest: Weakly-supervised Text Classification via Keyword Graph"
permalink: /emnlp-keygraph
classes: wide
description: "仅需用户提供极少量领域关键词，即可利用图神经网络自动繁衍出高精度的文本分类器，彻底摆脱工业冷启动时人工逐条标注数据的梦魇。"
keywords: "Jiandong Ding, Huawei, Weakly-supervised Learning, Keyword Graph, Text Classification, Graph Neural Networks"
---

<style>
  .page__title { display: none !important; }
  .digest-container { font-size: 0.9rem; line-height: 1.6; color: #333; font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif; }
  .digest-hero { background: #f8fafc; border: 1px solid #e2e8f0; border-radius: 8px; padding: 20px 25px; margin-bottom: 35px; border-left: 5px solid #dd6b20; }
  .hero-title { font-size: 1.3em; font-weight: 800; color: #1a202c; margin-bottom: 12px; display: block; line-height: 1.4; }
  .hero-meta { font-size: 0.9em; color: #4a5568; margin-bottom: 15px; }
  .hero-tldr { font-size: 0.95em; font-weight: 600; color: #c05621; background: #fffaf0; padding: 10px 15px; border-radius: 6px; display: inline-block; border: 1px solid #feebc8; }
  .digest-section { margin-bottom: 35px; }
  .section-title { font-size: 1.15em; font-weight: 800; color: #2d3748; border-bottom: 2px solid #edf2f7; padding-bottom: 8px; margin-bottom: 15px; }
  .callout { padding: 15px 20px; border-radius: 6px; margin: 15px 0; }
  .callout-red { background: #fff5f5; border: 1px solid #fed7d7; }
  .callout-green { background: #f0fff4; border: 1px solid #c6f6d5; }
  .tag { font-size: 0.75em; font-weight: bold; padding: 2px 8px; border-radius: 12px; color: #fff; text-transform: uppercase; }
  .tag-emnlp { background: #dd6b20; }

  @media (max-width: 768px) {
    .digest-hero { padding: 15px; margin-bottom: 25px; }
    .hero-title { font-size: 1.15em; }
    .section-title { font-size: 1.05em; }
    .callout { padding: 12px 15px; }
  }
</style>

<div class="digest-container">

<div class="digest-hero">
  <span class="hero-title">Weakly-supervised Text Classification Based on Keyword Graph</span>
  <div class="hero-meta">
    <span class="tag tag-emnlp">EMNLP 2021</span> <br><br>
    <strong>Authors:</strong> L. Zhang, <strong>Jiandong Ding</strong>, et al.
  </div>
  <div class="hero-tldr">
    💡 仅需用户提供极少量领域关键词，即可利用图神经网络自动繁衍出高精度的文本分类器，彻底摆脱工业冷启动时人工逐条标注数据的梦魇。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">🚨 1. The Problem: 标注数据的冷启动困局</div>
  <p>工业界新业务上线时，获取海量的人工标注句子成本极高、周期极长。业务专家往往只能凭直觉给出几个“标签描述”或“核心关键词”（比如为了区分“体育”和“财经”，给出“篮球”、“股票”）。</p>
  
  <div class="callout callout-red">
    <strong>核心痛点：稀疏信号的泛化无力</strong><br>
    如何将这几个极度稀疏的“领域词”，转化为能够理解复杂上下文的深度学习分类器？传统的弱监督方法缺乏有效的传播机制，遇到未包含这些关键词的文档时，模型往往直接抓瞎。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">🚀 2. The Breakthrough: 图结构驱动的弱信号传播</div>
  <p>为了将专家的“几个词”泛化为“全局伪标签”，我们构建了 <strong>Keyword Graph (关键词图)</strong>：</p>
  <ul>
    <li><strong>构图与关联挖掘:</strong> 我们在庞大的无标签语料库上，基于共现信息和语义相似度构建了复杂的词-词、词-文档异构图。</li>
    <li><strong>图神经网络 (GNN) 标签传播:</strong> 将初始的几个关键词作为“种子节点”，利用 GNN 在图结构上进行信息的迭代与扩散。这种拓扑传播能够极其敏锐地挖掘出潜在的同义词和上下文关联，自动为海量无标签文档打上高质量的“伪标签（Pseudo-labels）”。</li>
  </ul>
</div>

<div class="digest-section">
  <div class="section-title">📈 3. Key Results: 业务与实验价值</div>
  <div class="callout callout-green">
    <strong>打破监督学习的成本壁垒：</strong><br>
    在几乎不消耗任何“句子级人工标注”的情况下，该模型的分类准确率大幅逼近了需要海量标注数据的全监督模型（Fully-supervised Models），为低成本垂直领域的 NLP 落地提供了一套标准范式。
  </div>
</div>

</div>

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "ScholarlyArticle",
  "headline": "Weakly-supervised Text Classification Based on Keyword Graph",
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
  "description": "仅需用户提供极少量领域关键词，即可利用图神经网络自动繁衍出高精度的文本分类器，彻底摆脱工业冷启动时人工逐条标注数据的梦魇。",
  "about": {
    "@type": "Thing",
    "name": "Weakly-supervised Text Classification and Graph Neural Networks"
  }
}
</script>
