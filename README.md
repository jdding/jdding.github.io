# jdding.github.io

个人学术主页，基于 **Jekyll** 与 **Minimal Mistakes**（`remote_theme`）构建，部署在 **GitHub Pages**。

## 架构

站点是数据驱动的：文献、主题、项目的唯一数据源在 `_data/`，页面与共享模板只负责渲染。不要在页面里写死能从数据派生的内容。

- `_data/publications.yml` — 论文唯一数据源。作者、年份、状态、阅读链接、Digest 正文都在这里。
- `_includes/paper-digest.html` — 共享 Digest 模板；每个 Digest 页是根目录一个薄壳 `.md`（front matter 带 `publication_id` 与 `permalink`）。
- `_includes/research-topic.html` + `topics/` — 三个主题页。
- `index.md` — 首页：两条研究主线与代表贡献、原六篇精选、简短动态、研究演进、联系方式。
- `_data/research_programs.yml` — 主线及代表论文 ID；具体贡献仍来自论文数据。
- `_data/news.yml` — 有类型的日期事件（预印本 / 录用 / 出版），不根据当前状态反推历史事件。
- `_data/research_trajectory.yml` — 研究基础与联系，只引用公开论文 ID。
- `_data/internships.yml` — 招聘状态、联系邮箱、待沟通条件和申请邮件模板；`collaborations.md` 渲染可编辑的邮件草稿入口。
- `_data/open_source.yml` → `/resources/` — 三个资源的环境要求、输入、预期输出、固定版本命令和后续指南；更新时核对公开仓库，不能把文档核对称作实验复现。
- `publications.md` — Full publications（按年分组，计数随数据）。
- `api/` — 机器可读端点，从 `_data/` 动态生成（`/api/knowledge-graph.json` 等）。
- `assets/css/research-system.css` — 站点样式（layout 中带版本参数引用）。

## 内容规则速记

- 期刊显示「全称（缩写）」不带年份；会议显示「缩写 + 会议年份」（`venue_year` 优先于 `year`）；Accepted 作为状态单独显示。
- 作者以 `authors` 字符串为唯一来源（完整姓名、真实顺序）；`citation_*` 标签、JSON-LD、API 图谱都从它派生，不要再维护第二份作者列表。
- 计数：FAQ / Summary 的论文计数从 `publications.yml` 派生；主题页 stats 维护在 `_data/topics.yml`，调整论文数据时需同步核对。显示子集时说明口径。
- 6 篇 Selected papers 由 `selected: true` 控制，成员与数量变动需站主决定。
- 论文 URL 稳定：改名不迁移既有 permalink。
- 日期分为 `preprint_date`、`acceptance_date`、`published_date`。Accepted 的 citation、JSON-LD 和 microdata 省略出版日期，即使已经有预印本；详见维护指南。
- 重点 Digest 标出原始来源；没有正文的页面入口显示 Paper record。本人作用不得由作者顺序推断。

## 本地开发

```bash
bundle install
bundle exec jekyll build   # 产物在 _site/
bundle exec ruby scripts/verify_site.rb _site
bundle exec jekyll serve   # 本地预览 http://127.0.0.1:4000
```

## 发布验收（分级，前一步不能替代后一步）

1. 本地 `jekyll build` + `scripts/verify_site.rb` + diff 复验：检查实际渲染的状态、版本日期、关系、内容顺序、精选成员、JSON、canonical 和内部链接；再检查桌面及 320/375/414/768px 视觉。
2. commit + push 到 `main`。
3. GitHub Pages 构建成功（仓库部署状态）。
4. 线上 HTTP 抽查：关键页面 200 且内容为最新版本。
5. Search Console 复查抓取/收录状态；新增重点页可请求编入索引。

## 文献更新 SOP

新增或修改论文后统一检查：标题 / 完整作者及顺序 / 状态（preprint / accepted / published 不混用）/ 阅读链接与按钮语义一致 / 年份与 `venue_year` / 计数 / 精选成员未动 / API 与图谱输出 / sitemap 包含新页。详见 `docs/Digest_Module_Maintenance_Guide.md`。

## 版权与许可

除非另有说明，本仓库内容（文本、图片等）版权归作者所有。

## 联系方式

- Huawei Email: dingjiandong2 [AT] huawei.com
- LinkedIn: [Jiandong Ding](https://www.linkedin.com/in/jiandong-ding-60498833/)

## 致谢

感谢 [Minimal Mistakes](https://github.com/mmistakes/minimal-mistakes) 主题的开发者。
