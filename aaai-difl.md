---
layout: single
author_profile: true
title: "Paper Digest: Invariant Feature Learning"
permalink: /aaai-difl
classes: wide
description: "针对视频推荐中严重的时长偏差（Duration Bias），提出基于因果推断的时长不变特征学习（DIFL）框架，剥离时长对真实兴趣的干扰。"
keywords: "Jiandong Ding, Recommender Systems, Video Recommendation, Causal Inference, Duration Bias"
---

<style>
  /* 隐藏默认页面标题 */
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

  /* 移动端自适应 */
  @media (max-width: 768px) {
    .digest-hero { padding: 15px; margin-bottom: 25px; }
    .hero-title { font-size: 1.15em; }
    .section-title { font-size: 1.05em; }
    .callout { padding: 12px 15px; }
  }
</style>

<div class="digest-container">

<div class="digest-hero">
  <span class="hero-title">Invariant Feature Learning for Counterfactual Watch-time Prediction in Video Recommendation</span>
  <div class="hero-meta">
    <span class="tag tag-aaai">AAAI 2026</span> <br><br>
    <strong>Authors:</strong> Anonymous, ..., <strong>Jiandong Ding</strong>, et al.
  </div>
  <div class="hero-tldr">
    💡 针对视频推荐中严重的“时长偏差（Duration Bias）”，提出了一种基于因果推断的时长不变特征学习（DIFL）框架。通过核方法正则化，剥离视频时长对用户真实兴趣的干扰，实现高度准确的反事实完播率预测。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">🚨 1. The Problem: 被“时长”绑架的推荐算法</div>
  <p>在短视频（如 TikTok、Kuaishou）和长视频（如 YouTube）生态中，用户的“观看时长（Watch Time）”是衡量推荐系统成功与否的核心指标 [cite: 17]。然而，这个任务天生带有一种极具破坏性的系统性偏差 [cite: 5]。</p>
  
  <div class="callout callout-red">
    <strong>核心痛点：时长偏差 (Duration Bias) 与分布偏移</strong><br>
    推荐模型为了最大化总体观看时长，会本能地偏好推荐“长视频” [cite: 5, 22]。即便一个短视频极其符合用户兴趣，其绝对时长也无法与长视频抗衡。现有的去偏方法（如后门调整 D2Q）通常粗暴地将视频按时长分组并聚合 [cite: 7, 8]，这不可避免地引入了特征分布偏移（Distribution Shift），导致模型在不同时长的视频上泛化能力极差 [cite: 9]。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">🚀 2. The Breakthrough: 剥离时长的因果不变表征</div>
  <p>为了让模型看清用户的“真实偏好”而非被视频长度忽悠，我们重构了学习范式，提出了 <strong>DIFL (Duration-Invariant Feature Learning)</strong> 框架 ：</p>
  <ul>
    <li><strong>时长不变性正则化 (Duration Dependence Regularization):</strong> 我们引入了希尔伯特-施密特独立性准则 (HSIC) 这一核方法 [cite: 32]。它强制要求深度学习提取出的“用户兴趣表征（Representation）”在统计学上必须与“视频时长”绝对独立 [cite: 30]。这意味着模型被迫去理解视频的内容本质，而不是走捷径依赖时长标签。</li>
    <li><strong>反事实推断 (Counterfactual Inference):</strong> 基于这种“纯净”的兴趣表征，模型能够进行反事实推理 [cite: 35]——“如果这个视频只有10秒，用户会看多久？如果是5分钟呢？”，从而精准还原出剔除了曝光偏差后的真实完播率期望。</li>
  </ul>
</div>

<div class="digest-section">
  <div class="section-title">📈 3. Key Results: 业务与实验价值</div>
  <div class="callout callout-green">
    <strong>亿级工业场景下的 SOTA 突破：</strong><br>
    除了在 KuaiRec 和 CIKM 等公开数据集上全面碾压现有 SOTA，DIFL 还在一个拥有 4 亿日活（400M DAU）的真实工业级推荐平台上进行了验证 。实验表明，DIFL 有效拉近了不同时长视频间的表征差异（MMD大幅下降） [cite: 313, 317]，显著提升了长尾/短视频的曝光公平性与全局推荐精度。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">🔗 4. Resources</div>
  <p>
    📄 <strong>Paper PDF:</strong> Official link to be updated upon AAAI 2026 proceedings publication.
  </p>
</div>

</div>

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "ScholarlyArticle",
  "headline": "Invariant Feature Learning for Counterfactual Watch-time Prediction in Video Recommendation",
  "author": [
    {
      "@type": "Person",
      "name": "Jiandong Ding",
      "affiliation": {
        "@type": "Organization",
        "name": "Huawei Technologies"
      }
    }
  ],
  "description": "针对视频推荐中严重的时长偏差（Duration Bias），提出基于因果推断的时长不变特征学习（DIFL）框架，剥离时长对真实兴趣的干扰。",
  "about": {
    "@type": "Thing",
    "name": "Recommender Systems and Causal Inference"
  }
}
</script>