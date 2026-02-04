---
layout: single
author_profile: true
title: "Jiandong Ding (丁建栋)"
classes: wide
schema:
  "@context": "https://schema.org"
  "@type": "Person"
  "name": "Jiandong Ding (丁建栋)"
  "alternateName": "Jiandong Ding"
  "givenName": "Jiandong"
  "familyName": "Ding"
  "jobTitle": "Principal Algorithm Expert"
  "affiliation":
    "@type": "Organization"
    "name": "Huawei Technologies"
  "alumniOf":
    "@type": "EducationalOrganization"
    "name": "Fudan University"
  "knowsAbout": ["Generative RecSys", "Causal Inference", "Recommendation Systems", "LLM Agents", "User Behavior Analysis"]
  "description": "Principal Algorithm Expert at Huawei Technologies focusing on RecSys, Causal Inference, and LLM Agents"
  "url": "https://jdding.github.io"
  "sameAs":
    - "https://www.linkedin.com/in/jiandong-ding-60498833/"
    - "https://github.com/jdding"
    - "https://scholar.google.com/citations?view_op=list_works&hl=zh-CN&hl=zh-CN&user=5-e7wi4AAAAJ"
  "address":
    "@type": "PostalAddress"
    "addressLocality": "Shanghai"
    "addressCountry": "China"
  "worksFor":
    "@type": "Organization"
    "name": "Huawei Technologies"
---

<style>
  /* 隐藏页面内标题（保留浏览器标签页标题） */
  .page__title { display: none; }
  
  /* 重申研究亮点卡片样式，确保图片在左文字在右 */
  .paper-card {
    display: flex;
    gap: 20px;
    margin-bottom: 25px;
    padding-bottom: 20px;
    border-bottom: 1px solid #f0f0f0;
    font-size: 0.95rem;
    line-height: 1.55;
    color: #444;
  }
  
  .paper-card:last-child { border-bottom: none; }
  
  .paper-img {
    flex: 0 0 35%;
    max-width: 350px;
  }
  
  .paper-img img {
    width: 100%;
    border-radius: 6px;
    border: 1px solid #e1e4e8;
    box-shadow: 0 4px 10px rgba(0,0,0,0.03);
  }
  
  .paper-content {
    flex: 1;
  }
  
  .paper-title {
    font-size: 1em;
    font-weight: 700;
    color: #2c3e50;
    display: block;
    margin-bottom: 6px;
  }
  
  /* --- 手机端适配 --- */
  @media (max-width: 768px) {
    .card-container { flex-direction: column; gap: 15px; }
    .card-image { flex: 0 0 100%; max-width: 100%; margin-bottom: 10px; }
    .paper-card {
      flex-direction: column;
    }
    .paper-img {
      flex: 0 0 auto;
      max-width: 100%;
    }
  }
</style>

<section itemscope itemtype="http://schema.org/Bio">
  <h2 itemprop="name">Research Focus</h2>
  <p>I am a <span itemprop="jobTitle">Principal Algorithm Expert</span> at <span itemprop="affiliation">Huawei Technologies</span>, bridging the gap between theoretical algorithms and industrial-scale systems.</p>

  <p>My research philosophy is summarized as <strong>"From Biological Sequences to User Behaviors"</strong>. I apply deep representation learning to decipher underlying patterns in data—from genomic sequences in my early career to billion-scale user behavior logs in commercial recommendation systems today.</p>

  <p>Currently, I focus on building <strong>Next-Generation Recommender Systems</strong> driven by Generative AI, with specific interests in:</p>
  <ul>
    <li><span itemprop="knowsAbout">Generative RecSys:</span> LLM-driven Recommendation, Sequential Modeling, and User Representation.</li>
    <li><span itemprop="knowsAbout">Trustworthy AI:</span> Causal Inference, Unbiased Learning, and Fairness in Ranking.</li>
    <li><span itemprop="knowsAbout">System Efficiency:</span> Edge-Cloud Collaboration, Retrieval Architecture, and Model Compression.</li>
  </ul>
</section>

---

<section itemscope itemtype="http://schema.org/CreativeWork">
<h2>🔥 News</h2>

<ul>
  <li itemprop="mentions"><strong>[Feb 2026]</strong> 🎉 Paper <em>"Mitigating Popularity Bias in Recommendation"</em> accepted by <strong>ACM TOIS</strong>.</li>
  <li itemprop="mentions"><strong>[Jan 2026]</strong> 🚀 Paper <em>"Hierarchical and Preference-Aware Generative Recommendations"</em> accepted by <strong>TheWebConf (WWW) 2026</strong>.</li>
  <li itemprop="mentions"><strong>[Nov 2025]</strong> Two papers accepted! <em>"RPE4Rec"</em> by <strong>WSDM 2026</strong>, and <em>"Invariant Feature Learning"</em> by <strong>AAAI 2026</strong>.</li>
</ul>
</section>

---

<section itemscope itemtype="http://schema.org/ResearchProject">
<h2>🎯 Research Highlights</h2>

<p>My current research focuses on three core pillars: <strong>Generative & Trustworthy RecSys</strong>, <strong>Extreme Efficiency</strong>, and <strong>LLM Agents</strong>.</p>

<h3 itemprop="about">1. Next-Gen Recommendation: Generative & Trustworthy</h3>

<article class="paper-card" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <div class="paper-img"> 
    <img src="/assets/images/WWW2026.png" alt="[WWW 2026] Generative Recs: Hierarchical & Preference-Aware" loading="lazy" itemprop="image">
  </div>
  <div class="paper-content">
    <span class="paper-title" itemprop="headline">[WWW 2026] Generative Recs: Hierarchical & Preference-Aware</span>
    <span class="hl-tag tag-prob">Problem</span> <span itemprop="abstract">Existing "flat-sequence" generative models overlook the hierarchical structure of user sessions and introduce noise in long histories.</span>
    <br><br>
    <span class="hl-tag tag-sol">Breakthrough</span> <span itemprop="description">We proposed <strong>HPGR</strong>, a two-stage generative framework. It combines structure-aware pre-training with preference-guided sparse attention to capture the true hierarchy of user interests, achieving SOTA performance.</span>
    <meta itemprop="isPartOf" content="Research Highlights">
    <meta itemprop="publisher" content="ACM">
    <meta itemprop="datePublished" content="2026">
  </div>
</article>
</section>

<article class="paper-card" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <div class="paper-img"> 
    <img src="/assets/images/AAAI2026.png" alt="[AAAI 2026] Causal Inference for Watch-time Prediction" loading="lazy" itemprop="image">
  </div>
  <div class="paper-content">
    <span class="paper-title" itemprop="headline">[AAAI 2026] Causal Inference for Watch-time Prediction</span>
    <span class="hl-tag tag-prob">Problem</span> <span itemprop="abstract">In short-video feeds, "duration biases" (longer videos naturally get more watch time) mislead algorithms.</span>
    <br><br>
    <span class="hl-tag tag-sol">Breakthrough</span> <span itemprop="description">We introduced <strong>Invariant Feature Learning</strong> based on counterfactual inference to uncover the user's <em>true</em> willingness to watch, independent of video length.</span>
    <meta itemprop="isPartOf" content="Research Highlights">
    <meta itemprop="publisher" content="AAAI">
    <meta itemprop="datePublished" content="2026">
  </div>
</article>

<section itemscope itemtype="http://schema.org/ResearchProject">
<h3 itemprop="about">2. Extreme Efficiency at Scale</h3>

<article class="paper-card" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <div class="paper-img"> 
    <img src="/assets/images/WSDM2026.png" alt="[WSDM 2026] RPE4Rec: High-Efficiency Dynamic Retrieval" loading="lazy" itemprop="image">
  </div>
  <div class="paper-content">
    <span class="paper-title" itemprop="headline">[WSDM 2026] RPE4Rec: High-Efficiency Dynamic Retrieval</span>
    <span class="hl-tag tag-prob">Problem</span> <span itemprop="abstract">Advanced Transformers are often too slow for real-time retrieval on billion-scale items.</span>
    <br><br>
    <span class="hl-tag tag-sol">Breakthrough</span> <span itemprop="description">We designed a novel <strong>Relative Position Encoding (RPE)</strong> mechanism specifically for dynamic node retrieval. This architecture significantly reduces inference latency while capturing complex sequential patterns.</span>
    <meta itemprop="isPartOf" content="Research Highlights">
    <meta itemprop="publisher" content="ACM">
    <meta itemprop="datePublished" content="2026">
  </div>
</article>
</section>

<article class="paper-card" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <div class="paper-img"> 
    <img src="/assets/images/KDD2024.png" alt="[KDD 2024] Low-Rank Compression for CTR Prediction" loading="lazy" itemprop="image">
  </div>
  <div class="paper-content">
    <span class="paper-title" itemprop="headline">[KDD 2024] Low-Rank Compression for CTR Prediction</span>
    <span class="hl-tag tag-sol">Breakthrough</span> <span itemprop="description">A unified framework to compress massive CTR models using low-rank factorization, enabling high-performance ranking on resource-constrained devices (e.g., mobile phones).</span>
    <meta itemprop="isPartOf" content="Research Highlights">
    <meta itemprop="publisher" content="ACM">
    <meta itemprop="datePublished" content="2024">
  </div>
</article>

<section itemscope itemtype="http://schema.org/ResearchProject">
<h3 itemprop="about">3. LLM Agents & Data Intelligence</h3>

<article class="paper-card" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <div class="paper-img"> 
    <img src="/assets/images/ICSOC2025.png" alt="[ICSOC 2025] NL2SQL Benchmark for Business Intelligence" loading="lazy" itemprop="image">
  </div>
  <div class="paper-content">
    <span class="paper-title" itemprop="headline">[ICSOC 2025] NL2SQL Benchmark for Business Intelligence</span>
    <span class="hl-tag tag-sol">Intelligence Layer</span> <span itemprop="description">Evaluating how Large Language Models (LLMs) act as Data Agents to translate natural language into complex SQL queries, enabling automated business decision-making.</span>
    <meta itemprop="isPartOf" content="Research Highlights">
    <meta itemprop="publisher" content="Springer">
    <meta itemprop="datePublished" content="2025">
  </div>
</article>

<article class="paper-card" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <div class="paper-img"> 
    <img src="/assets/images/NIPS2021.png" alt="[NeurIPS 2021] DP-SSL: Robust Semi-supervised Learning" loading="lazy" itemprop="image">
  </div>
  <div class="paper-content">
    <span class="paper-title" itemprop="headline">[NeurIPS 2021] DP-SSL: Robust Semi-supervised Learning</span>
    <span class="hl-tag tag-prob">Problem</span> <span itemprop="abstract">Deep learning performance heavily relies on massive labeled data, which is expensive to obtain.</span>
    <br><br>
    <span class="hl-tag tag-sol">Breakthrough</span> <span itemprop="description">We introduced a <strong>Data Programming (DP)</strong> scheme that automatically generates probabilistic labels for unlabeled data, achieving SOTA performance with minimal supervision (only 40 labeled samples).</span>
    <meta itemprop="isPartOf" content="Research Highlights">
    <meta itemprop="publisher" content="NeurIPS">
    <meta itemprop="datePublished" content="2021">
  </div>
</article>
</section>

<!-- Link relations for AI understanding -->
<link rel="canonical" href="https://jdding.github.io/" />
<link rel="alternate" type="application/json" href="/api/research.json" title="Academic Data API" />
<link rel="alternate" type="application/xml" href="/sitemap-extended.xml" title="Extended Sitemap" />

<!-- Hidden structured navigation for AI/Sitemap -->
<nav itemscope itemtype="http://schema.org/SiteNavigationElement" style="display:none;">
  <ul>
    <li><a href="/" itemprop="url">Home</a></li>
    <li><a href="/publications" itemprop="url">Publications</a></li>
    <li><a href="/patents" itemprop="url">Patents</a></li>
    <li><a href="/collaborations" itemprop="url">Collaborations</a></li>
    <li><a href="/faq/" itemprop="url">FAQ</a></li>
    <li><a href="/api/" itemprop="url">API</a></li>
  </ul>
</nav>

### 📫 Get in Touch

I am deeply committed to bridging the gap between academia and industry. Having led numerous research initiatives at Huawei CBG and Alibaba DAMO, I am always open to:
* **Academic Partnerships:** Collaborative research & grant applications.
* **Professional Events:** Industry summits and tech forums.

For collaboration inquiries: **jdding [at] fudan.edu.cn**
