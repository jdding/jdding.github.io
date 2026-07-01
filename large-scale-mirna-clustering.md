---
layout: single
author_profile: true
title: "Paper Digest: Large-Scale miRNA Clustering"
permalink: /large-scale-mirna-clustering
classes: wide
description: "一项关于大规模 miRNA 序列自动聚类方法与实验的研究。"
keywords: "Jiandong Ding, miRNA, clustering, BMC Genomics, bioinformatics"
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
  <span class="hero-title">Automatically Clustering Large-Scale miRNA Sequences: Methods and Experiments</span>
  <div class="hero-meta">
    <span class="tag tag-bmc">BMC Genomics 2012</span><br><br>
    <strong>Authors:</strong> Li Wan, <strong>Jiandong Ding</strong>, Tao Jin, Jihong Guan, Shuigeng Zhou
  </div>
  <div class="hero-tldr">
    TL;DR: 这篇论文研究大规模 miRNA 序列集合的自动聚类方法，核心挑战是同时处理规模、序列相似性和生物学可解释性。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">1. The Problem: miRNA 数据增长快于人工分析</div>
  <p>随着 miRNA 数据库不断扩展，研究者需要计算方法来组织序列家族并发现大规模结构。单纯人工整理已经难以跟上序列数量增长。</p>
  <div class="callout callout-red">
    <strong>核心挑战：</strong> 聚类方法既要尊重生物序列相似性，又要能处理大规模集合。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">2. The Contribution: 自动化序列聚类流程</div>
  <p>这项工作比较并实验了面向大规模 miRNA 序列的聚类方法，体现了早期把机器学习和数据挖掘用于生物序列组织的研究线。</p>
  <p>它也帮助个人主页呈现一个更完整的研究轨迹：从生物序列挖掘，到后来的表示学习与推荐系统。</p>
</div>

<div class="digest-section">
  <div class="section-title">3. Why It Matters: 方法主题的延续</div>
  <div class="callout callout-green">
    <strong>方法延续性：</strong> 序列表征、相似性搜索和聚类，在生物信息、NLP 与推荐系统中都是长期核心主题。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">4. Resources</div>
  <p><strong>Paper:</strong> <a href="https://bmcgenomics.biomedcentral.com/articles/10.1186/1471-2164-13-S8-S15" target="_blank" rel="noopener">BMC Genomics</a></p>
</div>

</div>

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "ScholarlyArticle",
  "headline": "Automatically clustering large-scale miRNA sequences: methods and experiments",
  "author": [
    {
      "@type": "Person",
      "name": "Jiandong Ding"
    }
  ],
  "datePublished": "2012",
  "description": "大规模 miRNA 序列自动聚类的方法与实验。",
  "about": {
    "@type": "Thing",
    "name": "miRNA Sequence Clustering"
  }
}
</script>
