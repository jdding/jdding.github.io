---
layout: single
author_profile: true
title: "Paper Digest: imiRTP"
permalink: /imirtp
classes: wide
description: "imiRTP 是一种用于识别拟南芥 miRNA-target interactions 的集成方法。"
keywords: "Jiandong Ding, imiRTP, miRNA target interactions, Arabidopsis thaliana, BIBM"
---

<style>
  .page__title { display: none !important; }
  .digest-container { font-size: 0.9rem; line-height: 1.65; color: #333; font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif; }
  .digest-hero { background: #f8fafc; border: 1px solid #e2e8f0; border-radius: 8px; padding: 20px 25px; margin-bottom: 35px; border-left: 5px solid #2b6cb0; }
  .hero-title { font-size: 1.3em; font-weight: 800; color: #1a202c; margin-bottom: 12px; display: block; line-height: 1.4; }
  .hero-meta { font-size: 0.9em; color: #4a5568; margin-bottom: 15px; }
  .hero-tldr { font-size: 0.95em; font-weight: 600; color: #2b6cb0; background: #ebf8ff; padding: 10px 15px; border-radius: 6px; display: inline-block; border: 1px solid #bee3f8; }
  .digest-section { margin-bottom: 32px; }
  .section-title { font-size: 1.15em; font-weight: 800; color: #2d3748; border-bottom: 2px solid #edf2f7; padding-bottom: 8px; margin-bottom: 15px; }
  .callout { padding: 15px 20px; border-radius: 6px; margin: 15px 0; }
  .callout-red { background: #fff5f5; border: 1px solid #fed7d7; }
  .callout-green { background: #f0fff4; border: 1px solid #c6f6d5; }
  .tag { font-size: 0.75em; font-weight: bold; padding: 2px 8px; border-radius: 12px; color: #fff; text-transform: uppercase; }
  .tag-bibm { background: #2b6cb0; }
  @media (max-width: 768px) { .digest-hero { padding: 15px; margin-bottom: 25px; } .hero-title { font-size: 1.15em; } .callout { padding: 12px 15px; } }
</style>

<div class="digest-container">

<div class="digest-hero">
  <span class="hero-title">imiRTP: An Integrated Method to Identifying miRNA-Target Interactions in Arabidopsis thaliana</span>
  <div class="hero-meta">
    <span class="tag tag-bibm">BIBM 2011</span><br><br>
    <strong>Authors:</strong> <strong>Jiandong Ding</strong>, Shuai Yu, Uwe Ohler, Jihong Guan, Shuigeng Zhou
  </div>
  <div class="hero-tldr">
    TL;DR: imiRTP 整合多种计算信号，用于识别拟南芥中的 miRNA-target interactions。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">1. The Problem: miRNA 靶标预测</div>
  <p>miRNA-target prediction 本质上是生物序列上的匹配问题，但匹配规则既有噪声，也受到生物学约束。一个有用的方法需要把序列互补性和其他证据结合起来。</p>
  <div class="callout callout-red">
    <strong>核心挑战：</strong> 提升靶标发现能力，同时避免过度依赖简单序列规则。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">2. The Contribution: 集成式方法</div>
  <p>imiRTP 提出一种集成方法来识别拟南芥中的 miRNA-target interactions。它代表了早期数据挖掘在生物学预测任务中的应用：把多类信号组合起来，服务于有生物意义的判断。</p>
</div>

<div class="digest-section">
  <div class="section-title">3. Why It Matters: 早期方法线索</div>
  <div class="callout callout-green">
    <strong>长期线索：</strong> 这项早期工作已经包含后来反复出现的主题：表征、匹配、排序和证据整合。
  </div>
  <p>补上 digest 后，非生物信息背景的访问者也能快速理解这篇早期论文在整个研究轨迹中的位置。</p>
</div>

<div class="digest-section">
  <div class="section-title">4. Resources</div>
  <p><strong>Paper:</strong> <a href="http://ieeexplore.ieee.org/document/6120415/" target="_blank" rel="noopener">IEEE Xplore</a></p>
</div>

</div>

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "ScholarlyArticle",
  "headline": "imiRTP: an integrated method to identifying miRNA-target interactions in Arabidopsis thaliana",
  "author": [
    {
      "@type": "Person",
      "name": "Jiandong Ding"
    }
  ],
  "datePublished": "2011",
  "description": "一种用于识别拟南芥 miRNA-target interactions 的集成方法。",
  "about": {
    "@type": "Thing",
    "name": "miRNA Target Prediction"
  }
}
</script>
