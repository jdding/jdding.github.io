# Jiandong Ding — 个人学术主页

[访问主页](https://jdding.github.io/) · [论文列表](https://jdding.github.io/publications/) · [研究资源](https://jdding.github.io/resources/) · [合作与实习](https://jdding.github.io/collaborations/)

本仓库维护 Jiandong Ding（丁建栋）的个人学术主页。网站采用 Jekyll 构建，并通过 GitHub Pages 发布，介绍其在 Huawei 的研究工作与学术成果。

当前研究主要围绕两条主线展开：**变化条件下的自适应推荐**，以及**可审计的 AI 检索与交互接口**。网站同时整理论文、研究主题、公开资源、专利、学术合作与实习信息。

## 网站内容

| 页面 | 内容 |
| --- | --- |
| [首页](https://jdding.github.io/) | 研究主线、代表性贡献、精选论文及合作入口 |
| [论文列表](https://jdding.github.io/publications/) | 按年份整理的已发表、已录用及预印本记录 |
| 研究主题 | [LLM Agents](https://jdding.github.io/topics/llm-agents/) · [推荐系统](https://jdding.github.io/topics/recommender-systems/) · [数据挖掘](https://jdding.github.io/topics/data-mining/) |
| [论文详情](https://jdding.github.io/sidinspector/) | 单篇论文的书目信息、来源链接及研究摘要 |
| [研究资源](https://jdding.github.io/resources/) | 公开代码、资源说明与快速上手指南 |
| [合作与实习](https://jdding.github.io/collaborations/) | 研究实习要求、申请方式与合作信息 |
| [专利](https://jdding.github.io/patents/) | 已公开的专利记录 |
| [机器可读数据](https://jdding.github.io/api/) | 论文、研究主题、项目及知识图谱等 JSON 数据 |

## 仓库结构

| 路径 | 用途 |
| --- | --- |
| `papers/` | 单篇论文的 Jekyll 路由文件；通过显式 `permalink` 保持现有公开 URL |
| `_data/publications.yml` | 论文元数据、发表状态、日期、阅读链接及 Digest 正文的主要数据源 |
| `_data/research_programs.yml`、`_data/topics.yml` | 研究主线与主题页内容；主题页展示统计在 `topics.yml` 中维护 |
| `_data/open_source.yml`、`_data/internships.yml` | 公开资源说明及实习信息 |
| `_data/research.json`、`_data/news.yml`、`_data/projects.yml`、`_data/patents.yml` | 个人资料、合作与动态、项目和专利数据 |
| `_includes/`、`_layouts/` | 共享 Liquid 组件与页面布局 |
| `topics/`、`api/` | 研究主题页面及构建时生成的机器可读 JSON 端点 |
| `assets/` | 样式表与网站图片 |
| `docs/`、`scripts/` | 维护文档、站点检查脚本与辅助资源工具 |
| `_config.yml`、`Gemfile` | Jekyll 配置与 Ruby 依赖声明 |
| `archive/` | 历史文件；不参与网站构建 |

首页及论文列表、论文详情页和 API 端点尽可能从 `_data/` 的结构化数据渲染，避免重复维护同一项论文事实。`papers/` 中的文件负责将论文 ID 连接到稳定页面地址；修改标题时应保留原有 `permalink`。

Jekyll 首页及搜索引擎验证、站点地图等需要发布到根路径的文件仍保留在仓库根目录，以维持现有线上地址。

## 本地预览与构建

需要可运行 Bundler 的 Ruby 环境。依赖在 `Gemfile` 中声明，其中 `github-pages` 用于保持本地构建与 GitHub Pages 环境接近。

```bash
bundle install
bundle exec jekyll serve
```

本地预览地址为 `http://127.0.0.1:4000/`。生成生产构建并运行站点检查：

```bash
bundle exec jekyll build
bundle exec ruby scripts/verify_site.rb _site
```

## 内容维护

- 论文事实以 `_data/publications.yml` 为准；修改论文时核对作者顺序、发表状态、日期、DOI 与阅读链接，并同步维护对应的 `papers/<slug>.md` 路由文件。
- 区分预印本、已录用和正式发表；日期、指标与研究结论应有可核查的公开来源支持。Digest 的来源记录维护在 `digest_sources`。
- 主题页文字和展示统计维护在 `_data/topics.yml`。论文数量变化后，应核对该文件中的统计口径。
- 保持既有论文 URL 稳定。作者个人贡献应依据明确材料表述，不从作者顺序推断。
- 修改后先在本地构建并运行站点检查，再审阅变更并发布。发布后确认 GitHub Pages 部署结果和关键线上页面；搜索引擎收录状态需另行检查。

更完整的字段约定与论文页面维护流程见 [`docs/Digest_Module_Maintenance_Guide.md`](docs/Digest_Module_Maintenance_Guide.md)。

## 联系方式

- Email: [dingjiandong2@huawei.com](mailto:dingjiandong2@huawei.com)
- [Google Scholar](https://scholar.google.com/citations?user=5-e7wi4AAAAJ)
- [LinkedIn](https://www.linkedin.com/in/jiandong-ding-60498833/)

## 许可说明

本仓库当前未提供统一许可证文件。[Minimal Mistakes](https://github.com/mmistakes/minimal-mistakes) 主题及依赖按各自上游许可使用；个人资料、论文说明与图片的使用应遵循相应来源或权利人声明。
