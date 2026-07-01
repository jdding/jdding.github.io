---
layout: single
author_profile: true
title: "Paper Digest: P/D-Serve"
permalink: /pd-serve
classes: wide
description: "针对万亿级 LLM 服务中的算力与显存资源错配问题，设计了 P/D-Serve 分离式推理架构。通过将 Prefill（预填充）和 Decode（解码）阶段解耦部署，实现了集群级吞吐量的大幅跃升。"
keywords: "Jiandong Ding, Huawei, LLM Serving, Disaggregated Inference, Prefill-Decode Separation, Large Language Models"
---

<style>
  .page__title { display: none !important; }
  .digest-container { font-size: 0.9rem; line-height: 1.6; color: #333; font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif; }
  .digest-hero { background: #f8fafc; border: 1px solid #e2e8f0; border-radius: 8px; padding: 20px 25px; margin-bottom: 35px; border-left: 5px solid #38a169; }
  .hero-title { font-size: 1.3em; font-weight: 800; color: #1a202c; margin-bottom: 12px; display: block; line-height: 1.4; }
  .hero-meta { font-size: 0.9em; color: #4a5568; margin-bottom: 15px; }
  .hero-tldr { font-size: 0.95em; font-weight: 600; color: #276749; background: #f0fff4; padding: 10px 15px; border-radius: 6px; display: inline-block; border: 1px solid #c6f6d5; }
  .digest-section { margin-bottom: 35px; }
  .section-title { font-size: 1.15em; font-weight: 800; color: #2d3748; border-bottom: 2px solid #edf2f7; padding-bottom: 8px; margin-bottom: 15px; }
  .callout { padding: 15px 20px; border-radius: 6px; margin: 15px 0; }
  .callout-red { background: #fff5f5; border: 1px solid #fed7d7; }
  .callout-green { background: #f0fff4; border: 1px solid #c6f6d5; }
  .tag { font-size: 0.75em; font-weight: bold; padding: 2px 8px; border-radius: 12px; color: #fff; text-transform: uppercase; }
  .tag-arxiv { background: #38a169; }

  @media (max-width: 768px) {
    .digest-hero { padding: 15px; margin-bottom: 25px; }
    .hero-title { font-size: 1.15em; }
    .section-title { font-size: 1.05em; }
    .callout { padding: 12px 15px; }
  }
</style>

<div class="digest-container">

<div class="digest-hero">
  <span class="hero-title">P/D-Serve: Serving Disaggregated Large Language Model at Scale</span>
  <div class="hero-meta">
    <span class="tag tag-arxiv">arXiv 2024</span> <br><br>
    <strong>Authors:</strong> Y. Jin, ..., <strong>Jiandong Ding</strong>, et al.
  </div>
  <div class="hero-tldr">
    💡 针对万亿级 LLM 服务中的算力与显存资源错配问题，设计了 P/D-Serve 分离式推理架构。通过将 Prefill（预填充）和 Decode（解码）阶段解耦部署，实现了集群级吞吐量的大幅跃升。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">🚨 1. The Problem: 大模型推理的“木桶效应”</div>
  <p>传统的 LLM 部署框架（如 vLLM, TGI）通常采用单体架构，即同一个模型实例同时处理请求的输入阶段和生成阶段。这在底层物理资源上造成了极大的冲突。</p>
  
  <div class="callout callout-red">
    <strong>核心痛点：算力墙与显存墙的错配</strong><br>
    <strong>Prefill 阶段（读题）</strong>是计算密集型的（Compute-bound），需要庞大的 GPU 算力来并发展开矩阵乘法；而 <strong>Decode 阶段（写字）</strong>是显存带宽密集型的（Memory-bound），受制于庞大且碎片化的 KV-Cache 搬运。混合部署会导致长上下文请求的 Prefill 严重阻塞其他请求的 Decode，导致 GPU 利用率低下和极高的首字延迟（TTFT）。
  </div>
</div>

<div class="digest-section">
  <div class="section-title">🚀 2. The Breakthrough: 分离式调度与高速路由</div>
  <p>我们提出了 <strong>P/D-Serve (Prefill/Decode Disaggregated Serving)</strong> 架构：</p>
  <ul>
    <li><strong>集群级解耦部署:</strong> 将 GPU 物理集群划分为专用的“Prefill 池”和“Decode 池”。Prefill 节点专门负责高速吞吐计算，完成后将上下文状态瞬间转移给 Decode 节点负责逐字生成。</li>
    <li><strong>高效 KV-Cache 传输机制:</strong> 架构的核心难点在于网络开销。P/D-Serve 设计了一套高效的分布式 KV-Cache 路由与内存管理策略，掩盖了节点间传输状态的时间损耗，实现了跨节点的无缝接力。</li>
  </ul>
</div>

<div class="digest-section">
  <div class="section-title">📈 3. Key Results: 业务与实验价值</div>
  <div class="callout callout-green">
    <strong>重塑大模型基建的经济学：</strong><br>
    在大规模高并发测试中，P/D-Serve 彻底解除了计算与显存的互相掣肘。相较于传统单体架构，系统的整体吞吐量（QPS）显著翻倍，同时大幅压低了首字生成时间（TTFT）和字间延迟（TBT），为超大模型（如 100B+ 参数）的大规模商业化上线提供了系统级保障。
  </div>
</div>

</div>

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "ScholarlyArticle",
  "headline": "P/D-Serve: Serving Disaggregated Large Language Model at Scale",
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
  "description": "针对万亿级 LLM 服务中的算力与显存资源错配问题，设计了 P/D-Serve 分离式推理架构。通过将 Prefill（预填充）和 Decode（解码）阶段解耦部署，实现了集群级吞吐量的大幅跃升。",
  "about": {
    "@type": "Thing",
    "name": "Large Language Model Serving and Distributed Systems"
  }
}
</script>
