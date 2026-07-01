---
layout: single
author_profile: true
title: "Paper Digest: Genome-Wide miRNA Target Interactions"
permalink: /genome-wide-mirna-target-interactions
classes: wide
description: "一项用集成计算方法在拟南芥中进行 genome-wide miRNA-target interaction 搜索的研究。"
keywords: "Jiandong Ding, miRNA target interactions, Arabidopsis thaliana, BMC Genomics, bioinformatics"
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
  .tag-bmc { background: #2b6cb0; }
  @media (max-width: 768px) { .digest-hero { padding: 15px; margin-bottom: 25px; } .hero-title { font-size: 1.15em; } .callout { padding: 12px 15px; } }
</style>

<div class="digest-container">

<div class="digest-hero">
  <span class="hero-title">Genome-Wide Search for miRNA-Target Interactions in Arabidopsis thaliana with an Integrated Approach</span>
  <div class="hero-meta">
    <span class="tag tag-bmc">BMC Genomics 2012</span><br><br>
    <strong>Authors:</strong> <strong>Jiandong Ding</strong>, Deyou Li, Uwe Ohler, Jihong Guan, Shuigeng Zhou
  </div>
  <div class="hero-tldr">
    TL;DR: 这篇论文用集成计算方法，在拟南芥中进行 genome-wide miRNA-target interaction 搜索。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">1. The Problem: 全基因组相互作用搜索</div>
  <p>在全基因组范围识别 miRNA-target interactions，需要结合序列证据、生物约束和计算打分。单一启发式规则通常不足以覆盖完整相互作用图景。</p>
  <div class="callout callout-red">
    <strong>核心挑战：</strong> 全基因组搜索既要可扩展，也要用有生物意义的方式控制假阳性。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">2. The Contribution: 集成式预测</div>
  <p>这项研究整合多种信号，在拟南芥中搜索 miRNA-target interactions。它体现了数据挖掘中的通用规律：鲁棒预测往往来自互补证据的组合，而不是依赖单一特征族。</p>
</div>

<div class="digest-section">
  <div class="section-title">3. Why It Matters: 复杂数据上的结构化预测</div>
  <div class="callout callout-green">
    <strong>方法价值：</strong> 这项工作强调复杂生物数据上的结构化预测，这一主题后来可以自然迁移到推荐和表示学习。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">4. Resources</div>
  <p><strong>Paper:</strong> <a href="https://bmcgenomics.biomedcentral.com/articles/10.1186/1471-2164-13-S3" target="_blank" rel="noopener">BMC Genomics</a></p>
</div>

</div>

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "ScholarlyArticle",
  "headline": "Genome-wide search for miRNA-target interactions in Arabidopsis thaliana with an integrated approach",
  "author": [
    {
      "@type": "Person",
      "name": "Jiandong Ding"
    }
  ],
  "datePublished": "2012",
  "description": "用集成方法在拟南芥中进行 genome-wide miRNA-target interaction 搜索。",
  "about": {
    "@type": "Thing",
    "name": "miRNA-Target Interactions"
  }
}
</script>
