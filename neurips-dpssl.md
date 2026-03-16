---
layout: single
author_profile: true
title: "Paper Digest: DP-SSL"
permalink: /neurips-dpssl
classes: wide
---

<style>
  .digest-container { font-size: 0.95rem; line-height: 1.6; color: #333; font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif; }
  .digest-hero { background: #f8fafc; border: 1px solid #e2e8f0; border-radius: 8px; padding: 20px 25px; margin-bottom: 35px; border-left: 5px solid #2f855a; }
  .hero-title { font-size: 1.3em; font-weight: 800; color: #1a202c; margin-bottom: 12px; display: block; line-height: 1.4; }
  .hero-meta { font-size: 0.9em; color: #4a5568; margin-bottom: 15px; }
  .hero-tldr { font-size: 0.95em; font-weight: 600; color: #22543d; background: #f0fff4; padding: 10px 15px; border-radius: 6px; display: inline-block; border: 1px solid #c6f6d5; }
  .digest-section { margin-bottom: 35px; }
  .section-title { font-size: 1.15em; font-weight: 800; color: #2d3748; border-bottom: 2px solid #edf2f7; padding-bottom: 8px; margin-bottom: 15px; }
  .callout { padding: 15px 20px; border-radius: 6px; margin: 15px 0; }
  .callout-red { background: #fff5f5; border: 1px solid #fed7d7; }
  .callout-green { background: #f0fff4; border: 1px solid #c6f6d5; }
  .tag { font-size: 0.75em; font-weight: bold; padding: 2px 8px; border-radius: 12px; color: #fff; text-transform: uppercase; }
  .tag-neurips { background: #2f855a; }
</style>

<div class="digest-container">

<div class="digest-hero">
  <span class="hero-title">DP-SSL: Towards Robust Semi-supervised Learning with A Few Labeled Samples</span>
  <div class="hero-meta">
    <span class="tag tag-neurips">NeurIPS 2021</span> <br><br>
    <strong>Authors:</strong> Y. Xu, <strong>Jiandong Ding</strong>, et al.
  </div>
  <div class="hero-tldr">
    💡 <strong>TL;DR:</strong> 巧妙融合数据编程（Data Programming）与半监督学习，攻克了极低资源下模型崩溃的难题，仅凭个位数标注样本即可实现极具鲁棒性的 SOTA 分类性能。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">🚨 1. The Problem: 半监督学习的“确认偏差”</div>
  <p>半监督学习（SSL）的初衷是为了节省标注成本。但现有的主流 SSL 框架（如 FixMatch 等）都有一个致命的前提：它们仍然需要“适量”的初始黄金标注样本来冷启动。</p>
  
  <div class="callout callout-red">
    <strong>核心痛点：脆弱的自我欺骗</strong><br>
    当初始标注样本“极度稀缺”（例如每个类别只有 2-4 个样本）时，SSL 极易产生“确认偏差（Confirmation Bias）”。模型早期预测产生的错误伪标签会被后续的迭代不断放大，导致整个模型朝着错误的方向狂奔，最终彻底崩溃。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">🚀 2. The Breakthrough: DP 与 SSL 的强强联合</div>
  <p>为了给容易“跑偏”的 SSL 加装一道强有力的护栏，我们提出了 <strong>DP-SSL</strong> 架构：</p>
  <ul>
    <li><strong>数据编程生成软标签:</strong> 引入数据编程（Data Programming, DP）机制，利用启发式规则、字典匹配等廉价弱信号源，自动为无标签数据生成初始的概率标签，极大扩充了可用监督信号的绝对基数。</li>
    <li><strong>鲁棒的一致性正则化:</strong> 设计了一套高度抗噪的半监督训练引擎。它能够智能甄别 DP 软标签的置信度，过滤噪音，并结合自监督一致性学习，稳步提升特征提取层的表达能力。</li>
  </ul>
</div>

<div class="digest-section">
  <div class="section-title">📈 3. Key Results: 业务与实验价值</div>
  <div class="callout callout-green">
    <strong>极限资源下的王者表现：</strong><br>
    在极低资源设置下（例如每类仅有 4 个标注样本，共几十个样本的极限情况），DP-SSL 展现了极其惊艳的鲁棒性，彻底碾压了传统的纯 SSL 基线。这项工作为“弱监督专家知识如何系统性纠偏深度学习”提供了重要的学术见解。
  </div>
</div>

</div>