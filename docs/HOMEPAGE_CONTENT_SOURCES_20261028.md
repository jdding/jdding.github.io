# Five-item homepage follow-up: content provenance

Date: 2026-10-28. This note records public sources and interpretation boundaries for the substantive additions. It is excluded from the built site.

## New priority Digests

| Paper | Primary source inspected | Supported content and limits |
|---|---|---|
| BIS | [arXiv v1](https://arxiv.org/html/2410.22925v1), sections 3–5 and 7; [publisher](https://link.springer.com/chapter/10.1007/978-981-96-0808-9_27) | BI-specific question categories, 239 questions, two databases, SQL/result similarity, bounded scope. Publisher records first online 2024-12-07 and a 2025 proceedings citation for ICSOC 2024. No model-quality or business-lift claim added. |
| Low-rank CTR compression | [arXiv v2](https://arxiv.org/abs/2405.18146v2), abstract | Embedding/MLP compression using output features; 3–5× smaller models with faster inference and higher AUC in two academic datasets and one industrial benchmark. No online-lift claim. |
| DP-SSL | [arXiv v1](https://arxiv.org/abs/2110.13740v1), abstract/method overview | Automatically learned labeling functions and probabilistic label aggregation; CIFAR-10 with 40 labels, 93.82% annotation vs 93.46% test accuracy. Do not interchange these metrics or describe them as recommendation results. |
| ContGCN | [AAAI publication](https://ojs.aaai.org/index.php/AAAI/article/view/26611), abstract | Batch graph updates, occurrence memory, label-free contrastive learning; five public datasets and a three-month Huawei public-opinion A/B test. The reported 8.86% is task performance, not revenue or conversion. |

Local Zotero KB was checked first (MCP, discovery/snapshot, generation 43db578368834f05a62b6a05f6b84100). Hits were discovery leads with unverified locators, not accepted claim evidence. Public primary sources above supplied the website text. The ACM KDD page returned 403; its public arXiv author version supplied the content instead.

## Representative contributions and corrections

- **HPGR:** [arXiv v1](https://arxiv.org/abs/2603.00980v1) describes session-based masked-item pretraining followed by preference-guided sparse attention. Replaced the old unsupported “Session Enhancement Module + reliability weighting” account. Evaluation is proprietary APPGallery data plus an online A/B test, not the previously stated public-benchmark evaluation.
- **SkillContrast:** [arXiv v1](https://arxiv.org/abs/2610.11650v1) supports 54–72 additional clean hits against TF-IDF selection at equal input length. The 4B comparison in the token-saving sentence is against full skill bodies; corrected the old sentence that switched to query selection. No execution-safety claim.
- **SIDInspector:** the existing [public-paper account](https://arxiv.org/abs/2606.10375) is summarized as mapping diagnostics, preserving the distinction between interface measurements and recommendation-quality gains.
- **DeltaGate:** the representative block condenses the existing source-grounded Digest and [published record](https://doi.org/10.1145/3773078.3831771). It retains the frozen-backbone/full-retraining trade-off and adds no new numerical result.
- The selected-paper summaries describe mechanisms; the original six members, images, and paper URLs are retained.

## Dates and status

- TOIS preprint date 2026-09-28 is confirmed by its [arXiv record](https://arxiv.org/abs/2609.35041). The 2026-09-22 acceptance date is the author's previously supplied ScholarOne acceptance evidence.
- IGPO and TDG dates 2026-09-04 are arXiv posting dates, not formal proceedings publication dates.
- Existing SkillContrast, SIDScope, and SIDInspector public dates migrate to preprint_date. DeltaGate's existing formal date migrates to published_date. No acceptance status is upgraded merely because a preprint or DOI exists.
- Current status remains 19 published / 5 accepted / 4 preprint. Accepted publication dates are omitted consistently from citation, JSON-LD, microdata, and the graph; the raw data retains separately named dates.

## Editorial interpretation

The four research-connection strands and explicit paper relationships are site-level interpretations of public work. They describe complementary questions, not proven causal inheritance, one unified algorithm, or an allocation of individual credit. Personal leadership and contribution roles are not inferred from author order.

The four priority additions bring extended Digests to 17 of 28. The remaining 11 historical records retain their routes and use the honest Paper record label. Expanding every historical paper and adding author-confirmed personal roles are future content work, not claims made in this release.
