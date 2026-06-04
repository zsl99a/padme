---
type: source
name: github-sponsors
category: official
url: https://github.com/sponsors
status: stale
last_checked: 2026-06-04
refresh_cadence: on-event
---

# GitHub Sponsors

## 覆盖领域

GitHub 官方的开发者赞助市场,首页推荐"值得赞助的开源项目"。适合:

- **发现新平台机会**:GitHub 主动宣传的小众产品
- **冷启动思路**:观察 Sponsors 数量 / tier 设计
- **AI 工具商业化样本**:近期高 sponsorship 增长项目

## 可信度

- **极高**:官方推荐,项目数据真实
- **缺点**:首页主要是赞助者侧引导,被赞助项目页需逐个点开

## 抓取方式

- **HTML 抓取**:Firecrawl 抓 `https://github.com/sponsors/explore`
  - 2026-06-04 实测:页面是 SPA,只截到导航,无项目列表
- **API**(需 GitHub PAT):`https://api.github.com/search/repositories?q=funding:github+topic:ai` 按 funding 链接筛
- **GraphQL**:推荐 `https://api.github.com/graphql` 走 `fundingLinks` 字段

## 抓取状态

- 2026-06-04:Firecrawl 抓 `/sponsors/explore` 只拿到导航(JS 渲染问题)
- 待办:用 GitHub REST API + funding filter 替代,或改抓 `https://github.com/trending?since=monthly&spoken_language_code=en`

## 典型引用

- 暂无(等数据回来后再补)

## 踩坑

- SPA 页面不能用纯 curl,要么用浏览器自动化(playwright),要么走 API。
- 部分项目资金链接会指向 Open Collective / Patreon / Tidelift,需要互相联动去重。
