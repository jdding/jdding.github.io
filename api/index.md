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
- Research projects and publications (with PDF links)
- Academic collaborations
- Research areas and expertise

### `/papers/`
Browse research papers organized by topic and publication date.

### `/papers/preview/`
Online PDF viewer for research papers.

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