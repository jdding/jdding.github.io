---
layout: single
author_profile: true
title: "Academic Data API"
permalink: /api/
classes: wide
---

# Academic Data API

This API provides structured access to academic information about Jiandong Ding's research, publications, and collaborations. Designed to facilitate AI indexing and academic data integration.

## Endpoints

### `/api/research.json`
Provides comprehensive academic data in JSON format, including:

- Personal profile information
- Latest news and announcements
- Research projects and publications
- Academic collaborations
- Research areas and expertise

#### Example Request:
```
GET https://jdding.github.io/api/research.json
```

#### Response Format:
```json
{
  "profile": {
    "name": "Jiandong Ding (丁建栋)",
    "title": "Principal Algorithm Expert",
    "organization": "Huawei Technologies",
    // ... more profile data
  },
  "news": [...],
  "researchProjects": [...],
  "collaborations": [...]
}
```

### `/api/publications.json`
Provides the canonical publication list used by the website, including:

- Title, authors, venue, year, and publication type
- Research line: Recommender Systems, LLM Agents, or Data Mining
- Paper and digest links
- Citation counts when available
- Homepage selection metadata

#### Example Request:
```
GET https://jdding.github.io/api/publications.json
```

#### Response Format:
```json
[
  {
    "id": "skillresolve-bench",
    "title": "SkillResolve-Bench: Measuring and Resolving Same-Capability Ambiguity in Agent Skill Retrieval",
    "pillar": "LLM Agents",
    "year": 2026,
    "digest_url": "/skillresolve-bench"
  }
]
```

## Use Cases

This API is designed for:

- Academic search engines and indexers
- AI models seeking to understand research contributions
- Academic collaboration platforms
- Automated research profiling systems
- Bibliometric analysis tools

## Rate Limiting

This is a static site API with no rate limiting. However, please be respectful of resources and avoid excessive requests.

## Feedback

For API-related questions or suggestions, please contact jdding@fudan.edu.cn.
