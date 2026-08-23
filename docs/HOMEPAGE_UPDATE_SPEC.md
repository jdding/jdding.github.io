# Homepage Update Specification

Status: Approved for implementation

Scope: Homepage, shared navigation, homepage-facing research data, responsive styling, and homepage structured metadata

Out of scope: Publication facts, patent facts, Digest content, unpublished project details, and a public research-graph interface

## 1. Purpose

The homepage should let an academic or industry visitor understand three things quickly:

1. who Jiandong Ding is;
2. the two research programs that organize the current work;
3. where to find representative papers, current public research directions, the full publication record, patents, and contact details.

The site keeps `Recommender Systems`, `LLM Agents`, and `Data Mining` as content topics. They are not presented as three equal academic mainlines on the homepage.

## 2. Information Architecture

The homepage order is:

1. Hero
2. Research programs
3. Selected papers
4. Current work
5. Research trajectory
6. Collaboration and contact

The shared navigation is:

- Home
- Research
- Publications
- Patents
- Contact

`Research` links to the homepage research-program section. `Publications` and `Patents` link directly to their standalone pages. Current work is a homepage section and does not receive a top-level navigation item or project-detail pages.

## 3. Research Model

### Program A: Adaptive Recommendation under Change

Focus: recommendation under changing users, catalogs, signals, and deployment conditions.

Public themes include:

- zero-observation user reactivation;
- generative and sequential recommendation;
- dynamic retrieval and graph learning;
- trustworthy prediction and efficient recommendation models.

### Program B: Auditable AI Retrieval and Interfaces

Focus: determining whether AI retrieval systems use the right evidence, expose the right interfaces, and avoid unsafe or misleading retrieval behavior.

Public themes include:

- search and recommendation interaction;
- Semantic-ID interface diagnostics;
- AI search under changing inventories;
- agent skill retrieval and governance;
- evaluation of reusable AI capabilities.

### Topic Taxonomy

The existing topics remain valid for filtering, topic pages, publication metadata, and structured data:

- Recommender Systems
- LLM Agents
- Data Mining

Data Mining is presented as a methodological and historical foundation rather than a third current homepage program.

## 4. Homepage Content Contract

### Hero

Required content:

- name;
- current title and organization;
- a concise two-sentence research statement;
- links to the two research programs;
- one primary action for Publications and one lower-emphasis Contact action;
- portrait and compact identity facts.

The hero must not repeat the three topic names in both columns. It must not contain citation counters, publication counts, external-profile promotion, or statements that explain how the website is maintained.

### Research Programs

Render two data-driven program blocks. Each block contains:

- program number;
- title;
- one thesis sentence;
- a short list of public research questions or themes;
- links to the relevant topic pages.

### Selected Papers

Keep six selected papers in the existing visual system. Each card shows:

- venue/year;
- research-program label;
- title;
- concise public summary;
- Digest action when available.

The section contains one link to the full publication page. It does not include an explanatory sentence about covering three research areas.

### Current Work

Render the four current directions at a high level and group them by research program. Do not create detail pages until the work has a mature public output. Do not expose unpublished methods, results, benchmarks, submission status, or internal project names.

### Research Trajectory

Keep a concise, newest-to-oldest chronology. It supports the current research programs rather than defining them. It appears after selected papers and current work.

### Collaboration and Contact

Keep university collaboration, industrial research, invited talks, and the two existing contact-address roles. The copy should describe collaboration opportunities, not the website itself.

## 5. Visual Direction

Retain the current restrained editorial system:

- warm neutral background;
- dark text with blue accents;
- visible rules and compact radii;
- paper imagery as the primary visual material;
- restrained motion and no decorative gradients or generated scientific imagery.

Reduce pill and button density. Use borders, spacing, labels, and typographic hierarchy before adding containers. The portrait remains a first-screen identity signal.

## 6. Responsive Contract

At desktop widths:

- the hero uses a text/portrait split;
- the research statement and program links remain the dominant content;
- selected papers use a three-column grid;
- program and project groupings remain visually distinct.

At mobile widths:

- navigation uses the existing menu;
- the identity summary appears before lengthy research detail;
- program links are concise;
- no horizontal overflow is allowed;
- headings, buttons, metadata, and email addresses must wrap without overlap;
- the first viewport should communicate name, role, research position, and the portrait or a clear portion of it.

## 7. Structured Data and GEO

The visible homepage narrative and JSON-LD must agree:

- `jobTitle` remains `Principal Algorithm Expert`;
- affiliation remains `Huawei Technologies Co. Ltd.`;
- `knowsAbout` retains the three topic categories and adds concrete public research concepts;
- the description reflects reliable recommendation and AI retrieval under changing conditions;
- internal links connect the homepage programs to topic pages and the publication archive.

No interactive Research Graph is added in this phase. Program/topic relationships should be represented in structured data first so a future evidence-linked research assistant can use them without requiring another content migration.

## 8. Acceptance Criteria

- The homepage contains exactly two current research-program blocks.
- The homepage does not present the three topic categories as equal hero rows.
- The shared navigation contains exactly five destinations: Home, Research, Publications, Patents, Contact.
- Publications and Patents open standalone pages.
- The selected-paper section contains six cards and one full-list link.
- The four current-work cards have no detail-page links and disclose no unpublished results.
- Research trajectory is newest-to-oldest and appears below current work.
- Construction-style copy and duplicate category descriptions are removed.
- Jekyll production build succeeds.
- Internal homepage links resolve in the built site.
- Desktop and mobile screenshots show no clipping, overlap, or horizontal overflow.
- Homepage JSON-LD matches visible title, affiliation, and research positioning.
