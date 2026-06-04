---
type: source
name: github-trending
category: community
url: https://github.com/trending
status: active
last_checked: 2026-06-04
refresh_cadence: daily
---

# GitHub Trending

## 覆盖领域

GitHub 每日/每周/每月 trending 仓库(全语言或单语言),覆盖:

- 新 AI 工具 / Agent 框架 / Skill 包
- 实用 CLI / 库
- 数据集 / 模型权重
- 实时行业热点

## 可信度

- **高**:stars 数是真金白银的用户背书,1 天 > 1000 stars 几乎一定 hit。
- **强项**:发现"新风口"最快(通常领先 HN 1-3 天)。
- **弱项**:有 bot 刷星(尤其大仓库);短期热度 ≠ 长期价值。

## 抓取方式

```bash
firecrawl scrape "https://github.com/trending"
firecrawl scrape "https://github.com/trending?since=daily&spoken_language_code=en"
firecrawl scrape "https://github.com/trending/python?since=daily"
firecrawl scrape "https://github.com/trending/typescript?since=daily"
```

## 典型引用(2026-06-04 抓取)

- [affaan-m/ECC](https://github.com/affaan-m/ECC) — 2,141 stars/day,Agent harness
- [chopratejas/headroom](https://github.com/chopratejas/headroom) — 3,530 stars/day,LLM token 压缩
- [aquasecurity/trivy](https://github.com/aquasecurity/trivy) — 24 stars/day,安全扫描老牌
- [NousResearch/hermes-agent](https://github.com/NousResearch/hermes-agent) — Agent 框架

## 踩坑

- 短期高 star 数可能是 AI 营销/猎奇,需看 README 实质。
- 大仓库(>50K stars)增长空间小,关注中小型新仓库。
- 与 HN Algolia 配合使用:HN 看讨论,GitHub 看代码。
