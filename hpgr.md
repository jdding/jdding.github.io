---
layout: single
author_profile: true
title: "Paper Digest: HPGR"
permalink: /hpgr
classes: wide
---

<style>
  .page__title { display: none !important; }
  .digest-container { font-size: 0.9rem; line-height: 1.6; color: #333; font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif; }
  .digest-hero { background: #f8fafc; border: 1px solid #e2e8f0; border-radius: 8px; padding: 20px 25px; margin-bottom: 35px; border-left: 5px solid #e53e3e; }
  .hero-title { font-size: 1.3em; font-weight: 800; color: #1a202c; margin-bottom: 12px; display: block; line-height: 1.4; }
  .hero-meta { font-size: 0.9em; color: #4a5568; margin-bottom: 15px; }
  .hero-tldr { font-size: 0.95em; font-weight: 600; color: #c53030; background: #fff5f5; padding: 10px 15px; border-radius: 6px; display: inline-block; border: 1px solid #fed7d7; }
  .digest-section { margin-bottom: 35px; }
  .section-title { font-size: 1.15em; font-weight: 800; color: #2d3748; border-bottom: 2px solid #edf2f7; padding-bottom: 8px; margin-bottom: 15px; }
  .callout { padding: 15px 20px; border-radius: 6px; margin: 15px 0; }
  .callout-red { background: #fff5f5; border: 1px solid #fed7d7; }
  .callout-green { background: #f0fff4; border: 1px solid #c6f6d5; }
  .tag { font-size: 0.75em; font-weight: bold; padding: 2px 8px; border-radius: 12px; color: #fff; text-transform: uppercase; }
  .tag-www { background: #e53e3e; }
  .img-container { text-align: center; margin: 25px 0; }
  .img-container img { max-width: 100%; border-radius: 8px; border: 1px solid #e2e8f0; box-shadow: 0 4px 15px rgba(0,0,0,0.05); }
  .img-caption { font-size: 0.85em; color: #718096; margin-top: 10px; font-weight: 500; }

  @media (max-width: 768px) {
    .digest-hero { padding: 15px; margin-bottom: 25px; }
    .hero-title { font-size: 1.15em; }
    .section-title { font-size: 1.05em; }
    .callout { padding: 12px 15px; }
  }
</style>

<div class="digest-container">

<div class="digest-hero">
  <span class="hero-title">Beyond the Flat Sequence: Hierarchical and Preference-Aware Generative Recommendations</span>
  <div class="hero-meta">
    <span class="tag tag-www">WWW 2026</span> <br><br>
    <strong>Authors:</strong> Zerui Chen, ..., <strong>Jiandong Ding</strong>, et al.
  </div>
  <div class="hero-tldr">
    💡 针对大模型在推荐系统中的“注意力失焦”问题，提出了 HPGR 两阶段生成框架。通过引入“层次化结构”与“偏好引导的稀疏注意力”，让 LLM 在超长用户历史中精准捕捉核心意图。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">🚨 1. The Problem: 扁平序列的维度灾难</div>
  <p>随着大语言模型（LLM）被引入推荐系统（Generative RecSys），业界普遍采用一种简单粗暴的做法：将用户的历史点击记录按时间拼接成一个极长的一维“扁平序列（Flat Sequence）”，直接喂给大模型。</p>
  
  <div class="callout callout-red">
    <strong>核心痛点：信息噪音与 LLM 幻觉</strong><br>
    真实的工业场景中，用户的行为是以 Session（会话）为单位的，具有强烈的层次化特征（如：早上看新闻，晚上看游戏）。强行将其扁平化，不仅破坏了行为的内部结构依赖，还会导致长序列中充斥着巨大的信息噪音。这使得 LLM 在推理时极易发生“分心（Distraction）”和“灾难性遗忘”，无法聚焦用户当下的真实意图。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">🚀 2. The Breakthrough: HPGR 生成框架</div>
  <p>为了重塑生成式推荐的信息输入流，我们提出了 <strong>HPGR (Hierarchical and Preference-Aware Generative Recommendation)</strong> 架构，将任务拆解为两步核心创新：</p>
  
  <div class="img-container">
    <img src="/assets/images/WWW2026.png" alt="HPGR Architecture" onerror="this.style.display='none'">
    <div class="img-caption">Figure: The HPGR framework, introducing hierarchical modeling to generative recommendations.</div>
  </div>

  <ul>
    <li><strong>结构感知预训练 (Structure-Aware Pre-training):</strong> 我们放弃了单纯的从左到右的自回归训练，转而构建了一个层次化的行为树。通过特定的预训练任务，强迫 LLM 理解 Session 内部的紧密联系以及 Session 之间的宏观演进跳跃。</li>
    <li><strong>偏好引导的稀疏注意力 (Preference-Guided Sparse Attention):</strong> 在生成阶段（Decoding），我们打破了标准的全局注意力机制。模型会根据预判的用户当前偏好，动态过滤掉历史长河中的无关节点。这不仅去除了噪音，还极大地节省了算力开销。</li>
  </ul>
</div>

<div class="digest-section">
  <div class="section-title">📈 3. Key Results: 业务与实验价值</div>
  <div class="callout callout-green">
    <strong>破局生成式推荐的长度限制：</strong><br>
    HPGR 成功证明了，给 LLM 喂的数据“不是越长越好，而是越有结构越好”。
  </div>
  <p>在多个公开数据集上的实验表明，相比于现有的 TIGER 等平铺序列生成模型，HPGR 在各项推荐排序指标上均取得了显著 SOTA 收益。更重要的是，在处理超长历史序列（>100 个交互）时，传统模型性能断崖式下跌，而 HPGR 依然保持了极高的鲁棒性和意图命中率。</p>
</div>

<div class="digest-section">
  <div class="section-title">🔗 4. Resources</div>
  <p>
    📄 <strong>Paper PDF:</strong> <a href="https://dl.acm.org/doi/10.1145/3774904.3792790" target="_blank" style="color:#3182ce; font-weight:bold;">ACM Digital Library</a>
  </p>
</div>

</div>