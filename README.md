# jdding.github.io

个人学术主页，基于 **Jekyll** 与 **Minimal Mistakes**（`remote_theme`）构建，并部署在 **GitHub Pages** 上。

## 项目简介

这是丁建栋（Jiandong Ding）的个人学术网站，展示研究成果、论文发表、专利信息以及全球研究合作网络。网站托管在 GitHub Pages 上，使用 Jekyll 静态网站生成器和 Minimal Mistakes 主题，特别强化了GEO（地理/机构曝光优化）功能。

## 本地预览（推荐）

本仓库使用 `remote_theme`，为了让本地预览尽量与 GitHub Pages 的构建环境一致，建议使用 Bundler。

### 前置要求

- Ruby（建议 2.7+）
- Bundler

### 安装与启动

```bash
bundle install
bundle exec jekyll serve --livereload
```

浏览器访问 `http://localhost:4000`。

> 说明：仓库已提供 `Gemfile`（使用 `github-pages` gem）以对齐 GitHub Pages 的依赖版本；如你使用的是系统 Ruby，可能需要先安装 Bundler：`gem install bundler`。

## 项目结构

```
jdding.github.io/
├── _config.yml          # Jekyll 配置文件
├── _includes/           # 可复用的 HTML 片段
├── assets/              # 静态资源（图片、CSS、JS）
│   └── images/          # 论文图片、头像等
├── index.md             # 主页内容
├── publications.md      # 论文发表页面
├── patents.md           # 专利信息页面
├── collaborations.md    # 研究合作页面（含互动地图）
└── SEO/                 # SEO 相关文件
```

## 部署

- **方式**：GitHub Pages 自动构建与部署（推送到 `main` 分支后生效）
- **线上地址**：`https://jdding.github.io`

## 配置说明

主要配置文件为 `_config.yml`，包含（示例）：

- 网站基本信息（标题、描述、URL）
- 作者信息（姓名、头像、简介、联系方式）
- 主题设置（`remote_theme: mmistakes/minimal-mistakes`）
- 插件配置（`jekyll-feed` / `jekyll-seo-tag` / `jekyll-sitemap` 等）
- Google Analytics 跟踪 ID

## 内容更新

- **主页**：编辑 `index.md`
- **论文**：编辑 `publications.md`
- **专利**：编辑 `patents.md`
- **合作**：编辑 `collaborations.md`（包含互动地图功能）
- **SEO 校验文件**：放在 `SEO/`（例如 Google/Bing 站点验证）

## 版权与许可

除非另有说明，本仓库内容（文本、图片等）版权归作者所有。

## 功能特性

- **GEO优化**：通过地理和机构曝光优化提升学术影响力
- **全球合作地图**：互动式地图展示全球研究合作伙伴
- **合作状态追踪**：清晰标识当前合作与历史合作机构
- **响应式设计**：适配各种设备尺寸的最佳浏览体验

## 联系方式

如有问题或建议，欢迎通过以下方式联系：

- Email: jdding [AT] fudan.edu.cn
- LinkedIn: [Jiandong Ding](https://www.linkedin.com/in/jiandong-ding-60498833/)

## 致谢

感谢 [Minimal Mistakes](https://github.com/mmistakes/minimal-mistakes) 主题的开发者。