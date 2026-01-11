---
layout: single        # 👈 必须有！告诉主题使用单页布局
author_profile: true  # 👈 必须有！这句才是开启左侧边栏（头像+Bio）的开关
title: "About Me"     # 可选，如果不写会默认用 _config.yml 里的 title
---

I am a Technical expert at **Huawei Technologies**, bridging the gap between theoretical algorithms and industrial-scale systems.

My research philosophy is summarized as **"From Biological Sequences to User Behaviors"**. I apply deep representation learning to decipher underlying patterns in data—from genomic sequences in my early career to billion-scale user behavior logs in commercial recommendation systems today.

Currently, I focus on building **Trustworthy & Scalable AI Systems**, with specific interests in:
* **Trustworthy RecSys:** Causal Inference, Debiasing, and Fairness (TOIS '26, AAAI '26).
* **System Efficiency:** Retrieval Architecture, Model Compression, and On-device AI (WSDM '26, KDD '24).
* **LLM & Agents:** Large Language Models for BI and Data Agents.

---

## 🔥 News

* **[Jan 2026]** 🎉 *"Mitigating Popularity Bias in Recommendation with Global Listwise Learning"* has been accepted by **ACM TOIS**!
* **[Nov 2025]** 🚀 *"RPE4Rec"* (Efficient Retrieval) accepted by **WSDM 2026**.
* **[Nov 2025]** 🚀 *"Invariant Feature Learning"* (Causal Inference) accepted by **AAAI 2026**.
* **[Nov 2024]** Paper *"BIS: NL2SQL Service Evaluation Benchmark"* accepted by **ICSOC 2024**.
* **[Aug 2024]** Paper on Low-rank Compression for CTR prediction accepted by **KDD 2024**.

---

## 🎯 Research Highlights

My current research bridges the gap between **theoretical robustness** and **industrial scalability**. I focus on three core challenges in modern recommender systems:

### 1. Trustworthy & Unbiased Recommendation
*The Problem: Recommender systems often trap users in "echo chambers" or confuse popularity with genuine interest.*

* **[TOIS 2026] Mitigating Popularity Bias with Global Listwise Learning**, *ACM Transactions on Information Systems.*
    <br> **The Breakthrough:** Traditional debiasing methods often hurt overall performance. We proposed a **Global Listwise Learning** framework with progressive bi-weighting, effectively balancing long-tail item exposure without sacrificing user satisfaction.
    <br> [ [PDF](#) ] 

* **[AAAI 2026] Causal Inference for Watch-time Prediction**, *AAAI 2026.*
    <br> **The Breakthrough:** In short-video feeds, "duration" biases (longer videos naturally get more watch time) mislead algorithms. We introduced **Invariant Feature Learning** based on counterfactual inference to uncover the user's *true* willingness to watch.
    <br> [ [PDF](#) ]

### 2. Extreme Efficiency at Scale
*The Problem: Advanced models (Transformers/GNNs) are often too slow for real-time serving with billion-scale items.*

* **[WSDM 2026] RPE4Rec: High-Efficiency Dynamic Retrieval**, *ACM WSDM 2026.*
    <br> **The Breakthrough:** We designed a novel **Relative Position Encoding (RPE)** mechanism specifically for dynamic node retrieval. This architecture significantly reduces inference latency while capturing complex sequential patterns.
    <br> [ [PDF](#) ]

* **[KDD 2024] Low-Rank Compression for CTR Prediction**, *ACM SIGKDD 2024.*
    <br> **The Breakthrough:** A unified framework to compress massive CTR models using low-rank factorization, enabling high-performance ranking on resource-constrained devices.
    <br> [ [PDF](https://dl.acm.org/doi/10.1145/3637528.3671520) ]

### 3. Large Models: Systems & Agents
*The Problem: Bridging the gap between intelligent reasoning and efficient model serving.*

* **[ICSOC 2025] NL2SQL Benchmark for Business Intelligence**, *Lecture Notes in Computer Science*
    <br> **The Intelligence Layer:** Evaluating how Large Language Models (LLMs) act as Data Agents to translate natural language into complex SQL queries, enabling automated business decision-making.
    <br> [ [PDF](https://link.springer.com/10.1007/978-981-96-0808-9_27) ]

* **[arXiv 2024] P/D-Serve: Serving Disaggregated LLMs at Scale**
    <br> Yibo Jin, ..., **Jiandong Ding**, et al.
    <br> **The System Layer:** Addressing the massive computational cost of LLMs. We proposed a disaggregated serving architecture that optimizes KV-cache management and scheduling, significantly improving throughput for large-scale deployment.
    <br> [ [PDF](https://arxiv.org/abs/2408.08147) ]

---
