---
layout: single
author_profile: true
title: "Publications"
permalink: /publications
classes: wide
schema:
  "@context": "https://schema.org"
  "@type": "CollectionPage"
  "headline": "Academic Publications"
  "author":
    "@type": "Person"
    "name": "Jiandong Ding (丁建栋)"
    "url": "https://jdding.github.io"
  "dateModified": "2026-07-02"
  "description": "A comprehensive list of academic publications by Jiandong Ding"
---

<style>
  .page__title { display: none; }

  .stat-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 15px;
    margin-bottom: 30px;
  }
  .stat-card {
    background: #f8f9fa;
    border: 1px solid #e9ecef;
    border-radius: 8px;
    padding: 12px;
    text-align: center;
    transition: transform 0.2s;
  }
  .stat-card:hover { transform: translateY(-3px); box-shadow: 0 4px 12px rgba(0,0,0,0.05); }
  .stat-num {
    display: block;
    font-size: 1.6em;
    font-weight: 800;
    color: #2c3e50;
    line-height: 1.2;
  }
  .stat-label {
    font-size: 0.8em;
    color: #666;
    text-transform: uppercase;
    letter-spacing: 0.5px;
    margin-top: 5px;
  }
  .hl-blue { color: #2980b9; }
  .hl-red  { color: #c0392b; }
  .hl-orange { color: #d35400; }

  .pub-item {
    padding: 10px 15px;
    margin-bottom: 10px;
    background: #fff;
    border: 1px solid #eee;
    border-radius: 4px;
    border-left-width: 4px;
    transition: all 0.2s;
    font-size: 0.95rem;
    line-height: 1.5;
  }
  .pub-item:hover {
    background: #fafafa;
    border-color: #ddd;
    box-shadow: 0 2px 8px rgba(0,0,0,0.03);
  }
  .level-a { border-left-color: #e53e3e; }
  .level-b { border-left-color: #3182ce; }
  .level-c { border-left-color: #a0aec0; }
  .pub-title {
    display: block;
    font-size: 1em;
    font-weight: 700;
    color: #2d3748;
    line-height: 1.3;
    margin-bottom: 4px;
  }
  .pub-meta {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    gap: 6px;
    font-size: 0.9em;
    color: #666;
  }
  .venue-tag {
    font-weight: 700;
    padding: 0 5px;
    border-radius: 3px;
    font-size: 0.85em;
    letter-spacing: 0.3px;
    height: 18px;
    line-height: 16px;
    display: inline-block;
  }
  .tag-red { background: #fff5f5; color: #c53030; border: 1px solid #feb2b2; }
  .tag-blue { background: #ebf8ff; color: #2b6cb0; border: 1px solid #bee3f8; }
  .tag-gray { background: #f7fafc; color: #4a5568; border: 1px solid #cbd5e0; }
  .pub-authors { color: #555; }
  .pub-authors strong { color: #1a202c; font-weight: 700; }
  .pub-link {
    font-size: 0.85em;
    color: #3182ce;
    text-decoration: none;
    font-weight: 600;
  }
  .pub-link:hover { text-decoration: underline; }
  .digest-link {
    background: #fefcbf;
    border: 1px solid #f6e05e;
    border-radius: 3px;
    color: #b7791f;
    padding: 0 5px;
  }
  .citation-count { color: #718096; }
  .year-header {
    font-size: 1.2em;
    font-weight: 800;
    margin: 25px 0 10px 0;
    padding-bottom: 5px;
    border-bottom: 2px solid #edf2f7;
    color: #2d3748;
  }
  .timeline-note {
    color: #666;
    font-size: 0.95rem;
    margin-bottom: 20px;
  }
  @media (max-width: 600px) {
    .stat-grid { gap: 10px; }
    .stat-num { font-size: 1.4em; }
  }
</style>

<div class="stat-grid">
  <div class="stat-card">
    <span class="stat-num hl-red">20</span>
    <span class="stat-label">Publications</span>
  </div>
  <div class="stat-card">
    <span class="stat-num hl-blue">493</span>
    <span class="stat-label">Citations</span>
  </div>
  <div class="stat-card">
    <span class="stat-num hl-orange">10</span>
    <span class="stat-label">h-index</span>
  </div>
</div>

<h3 class="year-header">2026</h3>

<div class="pub-item level-c" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <span class="pub-title" itemprop="headline">SkillResolve-Bench: Measuring and Resolving Same-Capability Ambiguity in Agent Skill Retrieval.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-gray" itemprop="isPartOf">arXiv</span>
    <span class="pub-authors" itemprop="author"><strong property="name">J Ding</strong></span>
    <a href="https://arxiv.org/abs/2606.10388" class="pub-link">[arXiv]</a>
    <a href="/skillresolve-bench" class="pub-link digest-link">[Digest (ZH)]</a>
    <meta itemprop="datePublished" content="2026">
  </div>
</div>

<div class="pub-item level-c" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <span class="pub-title" itemprop="headline">SIDInspector: A Mapping-First Diagnostic Resource for Semantic-ID Tokenizers.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-gray" itemprop="isPartOf">arXiv</span>
    <span class="pub-authors" itemprop="author"><strong property="name">J Ding</strong>, H Chang, H Qin, T Liu</span>
    <a href="https://arxiv.org/abs/2606.10375" class="pub-link">[arXiv]</a>
    <a href="/sidinspector" class="pub-link digest-link">[Digest (ZH)]</a>
    <meta itemprop="datePublished" content="2026">
  </div>
</div>

<div class="pub-item level-a" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <span class="pub-title" itemprop="headline">Beyond the Flat Sequence: Hierarchical and Preference-Aware Generative Recommendations.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-red" itemprop="isPartOf">WWW</span>
    <span class="pub-authors" itemprop="author">Z Chen, H Chang, T Liu, C Zhou, Y Cao, <strong property="name">J Ding</strong>, M Liu, B Qin</span>
    <span class="citation-count">1 citation</span>
    <a href="/hpgr" class="pub-link digest-link">[Digest (ZH)]</a>
    <meta itemprop="datePublished" content="2026">
  </div>
</div>

<div class="pub-item level-a" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <span class="pub-title" itemprop="headline">Invariant feature learning for counterfactual watch-time prediction in video recommendation.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-red" itemprop="isPartOf">AAAI</span>
    <span class="pub-authors" itemprop="author">C Jin, Y Ren, H Ma, Y Xia, Y Guan, H Zhang, <strong property="name">J Ding</strong>, J Guan, S Zhou</span>
    <span class="citation-count">2 citations</span>
    <a href="/aaai-difl" class="pub-link digest-link">[Digest (ZH)]</a>
    <meta itemprop="datePublished" content="2026">
  </div>
</div>

<div class="pub-item level-b" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <span class="pub-title" itemprop="headline">RPE4Rec: Enhancing Dynamic Node Retrieval with Efficient Relative Position Encoding for Recommendation Systems.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-blue" itemprop="isPartOf">WSDM</span>
    <span class="pub-authors" itemprop="author">K Cheng, H Chang, P Wang, L Gu, <strong property="name">J Ding</strong>, Y Cao, J Ye, B Du</span>
    <a href="https://dl.acm.org/doi/epdf/10.1145/3773966.3778006" class="pub-link">[PDF]</a>
    <a href="/rpe4rec" class="pub-link digest-link">[Digest (ZH)]</a>
    <meta itemprop="datePublished" content="2026">
  </div>
</div>

<h3 class="year-header">2025</h3>

<div class="pub-item level-c" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <span class="pub-title" itemprop="headline">Towards Practical Large-scale Dynamical Heterogeneous Graph Embedding: Cold-start Resilient Recommendation.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-gray" itemprop="isPartOf">arXiv</span>
    <span class="pub-authors" itemprop="author">M Long, J Liu, Y Li, H Xiong, J Yan, K Wang, Y Cao, <strong property="name">J Ding</strong></span>
    <span class="citation-count">2 citations</span>
    <a href="https://arxiv.org/abs/2512.13120" class="pub-link">[arXiv]</a>
    <a href="/dygraph" class="pub-link digest-link">[Digest (ZH)]</a>
    <meta itemprop="datePublished" content="2025">
  </div>
</div>

<h3 class="year-header">2024</h3>

<div class="pub-item level-b" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <span class="pub-title" itemprop="headline">BIS: NL2SQL service evaluation benchmark for business intelligence scenarios.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-blue" itemprop="isPartOf">ICSOC</span>
    <span class="pub-authors" itemprop="author">B Caglayan, M Wang, JD Kelleher, S Fei, G Tong, <strong property="name">J Ding</strong>, P Zhang</span>
    <span class="citation-count">5 citations</span>
    <a href="https://link.springer.com/10.1007/978-981-96-0808-9_27" class="pub-link">[PDF]</a>
    <a href="/bis-nl2sql" class="pub-link digest-link">[Digest (ZH)]</a>
    <meta itemprop="datePublished" content="2024">
  </div>
</div>

<div class="pub-item level-a" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <span class="pub-title" itemprop="headline">Unified low-rank compression framework for click-through rate prediction.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-red" itemprop="isPartOf">KDD</span>
    <span class="pub-authors" itemprop="author">H Yu, M Fu, <strong property="name">J Ding</strong>, Y Zhou, J Wu</span>
    <span class="citation-count">2 citations</span>
    <a href="https://dl.acm.org/doi/epdf/10.1145/3637528.3671520" class="pub-link">[PDF]</a>
    <a href="/kdd-ctr" class="pub-link digest-link">[Digest (ZH)]</a>
    <meta itemprop="datePublished" content="2024">
  </div>
</div>

<div class="pub-item level-c" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <span class="pub-title" itemprop="headline">P/D-Serve: Serving disaggregated large language model at scale.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-gray" itemprop="isPartOf">arXiv</span>
    <span class="pub-authors" itemprop="author">Y Jin, T Wang, H Lin, M Song, P Li, Y Ma, Y Shan, Z Yuan, C Li, Y Sun, et al.</span>
    <span class="citation-count">33 citations</span>
    <a href="https://arxiv.org/pdf/2408.08147" class="pub-link">[PDF]</a>
    <a href="/pd-serve" class="pub-link digest-link">[Digest (ZH)]</a>
    <meta itemprop="datePublished" content="2024">
  </div>
</div>

<h3 class="year-header">2023</h3>

<div class="pub-item level-a" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <span class="pub-title" itemprop="headline">Neural topic modeling based on cycle adversarial training and contrastive learning.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-red" itemprop="isPartOf">ACL Findings</span>
    <span class="pub-authors" itemprop="author">B Wang, L Zhang, D Zhou, Y Cao, <strong property="name">J Ding</strong></span>
    <span class="citation-count">4 citations</span>
    <a href="https://aclanthology.org/2023.findings-acl.616.pdf" class="pub-link">[PDF]</a>
    <a href="/acl-topic" class="pub-link digest-link">[Digest (ZH)]</a>
    <meta itemprop="datePublished" content="2023">
  </div>
</div>

<div class="pub-item level-a" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <span class="pub-title" itemprop="headline">Continual Graph Convolutional Network for Text Classification.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-red" itemprop="isPartOf">AAAI</span>
    <span class="pub-authors" itemprop="author">T Wu, Q Liu, Y Cao, Y Huang, XM Wu, <strong property="name">J Ding</strong></span>
    <span class="citation-count">13 citations</span>
    <a href="https://ojs.aaai.org/index.php/AAAI/article/view/26611/26383" class="pub-link">[PDF]</a>
    <a href="/continual-gcn" class="pub-link digest-link">[Digest (ZH)]</a>
    <meta itemprop="datePublished" content="2023">
  </div>
</div>

<h3 class="year-header">2022</h3>

<div class="pub-item level-b" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <span class="pub-title" itemprop="headline">EPiDA: An Easy Plug-in Data Augmentation Framework for High Performance Text Classification.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-blue" itemprop="isPartOf">NAACL</span>
    <span class="pub-authors" itemprop="author">M Zhao, L Zhang, Y Xu, <strong property="name">J Ding</strong>, J Guan, S Zhou</span>
    <span class="citation-count">15 citations</span>
    <a href="https://aclanthology.org/2022.naacl-main.349" class="pub-link">[PDF]</a>
    <a href="/naacl-epida" class="pub-link digest-link">[Digest (ZH)]</a>
    <meta itemprop="datePublished" content="2022">
  </div>
</div>

<h3 class="year-header">2021</h3>

<div class="pub-item level-a" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <span class="pub-title" itemprop="headline">DP-SSL: Towards robust semi-supervised learning with a few labeled samples.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-red" itemprop="isPartOf">NeurIPS</span>
    <span class="pub-authors" itemprop="author">Y Xu, <strong property="name">J Ding</strong>, L Zhang, S Zhou</span>
    <span class="citation-count">37 citations</span>
    <a href="https://arxiv.org/pdf/2110.13740" class="pub-link">[PDF]</a>
    <a href="/neurips-dpssl" class="pub-link digest-link">[Digest (ZH)]</a>
    <meta itemprop="datePublished" content="2021">
  </div>
</div>

<div class="pub-item level-b" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <span class="pub-title" itemprop="headline">Weakly-supervised Text Classification Based on Keyword Graph.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-blue" itemprop="isPartOf">EMNLP</span>
    <span class="pub-authors" itemprop="author">L Zhang, <strong property="name">J Ding</strong>, Y Xu, Y Liu, S Zhou</span>
    <span class="citation-count">73 citations</span>
    <a href="https://aclanthology.org/2021.emnlp-main.222.pdf" class="pub-link">[PDF]</a>
    <a href="/emnlp-keygraph" class="pub-link digest-link">[Digest (ZH)]</a>
    <meta itemprop="datePublished" content="2021">
  </div>
</div>

<div class="pub-item level-a" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <span class="pub-title" itemprop="headline">Effectiveness of AI Assistance in Live Streaming: A Randomized Field Experiment.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-red" itemprop="isPartOf">ICIS</span>
    <span class="pub-authors" itemprop="author">L Wang, Y He, <strong property="name">J Ding</strong>, N Huang, Y Hong, X Guo, D Liu, G Chen</span>
    <span class="citation-count">5 citations</span>
    <a href="https://aisel.aisnet.org/icis2021/hci_robot/hci_robot/3/" class="pub-link">[PDF]</a>
    <a href="/ai-assistance-live-streaming" class="pub-link digest-link">[Digest (ZH)]</a>
    <meta itemprop="datePublished" content="2021">
  </div>
</div>

<div class="pub-item level-a" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <span class="pub-title" itemprop="headline">The Sales Data Sells: Effects of Real-Time Sales Analytics on Live Streaming Selling.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-red" itemprop="isPartOf">ICIS</span>
    <span class="pub-authors" itemprop="author">Y He, L Wang, N Huang, Y Hong, <strong property="name">J Ding</strong>, Y Sun, Y Liu</span>
    <span class="citation-count">10 citations</span>
    <a href="https://aisel.aisnet.org/icis2021/data_analytics/data_analytics/2/" class="pub-link">[PDF]</a>
    <a href="/sales-data-live-streaming" class="pub-link digest-link">[Digest (ZH)]</a>
    <meta itemprop="datePublished" content="2021">
  </div>
</div>

<h3 class="year-header">2012</h3>
<p class="timeline-note">Early career focus: deciphering biological sequences with machine learning.</p>

<div class="pub-item level-b" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <span class="pub-title" itemprop="headline">Automatically clustering large-scale miRNA sequences: methods and experiments.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-blue" itemprop="isPartOf">BMC Genomics</span>
    <span class="pub-authors" itemprop="author">L Wan, <strong property="name">J Ding</strong>, T Jin, J Guan, S Zhou</span>
    <span class="citation-count">8 citations</span>
    <a href="https://bmcgenomics.biomedcentral.com/articles/10.1186/1471-2164-13-S8-S15" class="pub-link">[PDF]</a>
    <a href="/large-scale-mirna-clustering" class="pub-link digest-link">[Digest (ZH)]</a>
    <meta itemprop="datePublished" content="2012">
  </div>
</div>

<div class="pub-item level-a" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <span class="pub-title" itemprop="headline">Finding MicroRNA Targets in Plants: Current Status and Perspectives.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-red" itemprop="isPartOf">GPB</span>
    <span class="pub-authors" itemprop="author"><strong property="name">J Ding</strong>, S Zhou, J Guan</span>
    <span class="citation-count">76 citations</span>
    <a href="https://academic.oup.com/gpb/article/10/5/264/7221796" class="pub-link">[PDF]</a>
    <a href="/finding-microrna-targets-plants" class="pub-link digest-link">[Digest (ZH)]</a>
    <meta itemprop="datePublished" content="2012">
  </div>
</div>

<div class="pub-item level-b" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <span class="pub-title" itemprop="headline">Genome-wide search for miRNA-target interactions in Arabidopsis thaliana with an integrated approach.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-blue" itemprop="isPartOf">BMC Genomics</span>
    <span class="pub-authors" itemprop="author"><strong property="name">J Ding</strong>, D Li, U Ohler, J Guan, S Zhou</span>
    <span class="citation-count">34 citations</span>
    <a href="https://bmcgenomics.biomedcentral.com/articles/10.1186/1471-2164-13-S3" class="pub-link">[PDF]</a>
    <a href="/genome-wide-mirna-target-interactions" class="pub-link digest-link">[Digest (ZH)]</a>
    <meta itemprop="datePublished" content="2012">
  </div>
</div>

<h3 class="year-header">2011</h3>

<div class="pub-item level-b" itemscope itemtype="http://schema.org/ScholarlyArticle">
  <span class="pub-title" itemprop="headline">imiRTP: an integrated method to identifying miRNA-target interactions in Arabidopsis thaliana.</span>
  <div class="pub-meta">
    <span class="venue-tag tag-blue" itemprop="isPartOf">BIBM</span>
    <span class="pub-authors" itemprop="author"><strong property="name">J Ding</strong>, S Yu, U Ohler, J Guan, S Zhou</span>
    <span class="citation-count">10 citations</span>
    <a href="http://ieeexplore.ieee.org/document/6120415/" class="pub-link">[PDF]</a>
    <a href="/imirtp" class="pub-link digest-link">[Digest (ZH)]</a>
    <meta itemprop="datePublished" content="2011">
  </div>
</div>
