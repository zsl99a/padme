---
type: source
name: notion-marketplace
category: official
url: https://www.notion.com/help/selling-on-marketplace
status: active
last_checked: 2026-06-04
refresh_cadence: monthly
---

# Notion Marketplace (官方)

## 覆盖领域

Notion 官方模板市场。覆盖 **Notion 模板销售**赛道。2026 年现状:
- 创作者可上架付费模板(Notion 原生模板)
- 平台抽成 10% + $0.40/笔
- Stripe 结算,14 天资金冻结,双周结算
- 创作者需先加入 waitlist,经 Notion 团队审核(可能数月)
- **eligible countries 列表中**不包含中国大陆(但含 Hong Kong / Macao / Taiwan / Singapore)

## 可信度

- **官方文档**(help.notion.com):政策 100% 权威
- 模板产品页(notion.com/templates):实时数据
- 2026 年新增:Notion Agents / AI Meeting Notes / Notion Mail 等周边产品,模板市场有大量 AI 主题模板出现
- AI 主题头部模板:「AI-Powered $10K Execution Dashboard」(免费/付费)、「The Monetized Creator」等

## 抓取方式

- Firecrawl scrape help.notion.com + 模板详情页
- 月度刷新 eligible countries + 抽成比例(政策可能变化)
- 每周抓 templates 分类排行,识别新的 AI 头部模板

## 典型引用

1. [Notion 帮助中心 - Selling on Marketplace](https://www.notion.com/help/selling-on-marketplace) — 平台政策原文
2. [Notion 模板市场](https://www.notion.com/templates) — 实际产品展示
3. [Eligible countries 列表](https://www.notion.com/help/selling-on-marketplace#eligible-countries) — 抽成、收款、限制
4. [AI-Powered $10K Execution Dashboard](https://www.notion.com/templates/ai-powered-10k-execution-dashboard) — AI 主题头部模板

## 抓取状态

- 2026-06-04:全部主页面可正常访问
- eligible countries 列表更新到 2026 年,大陆不在列
- 注:Notion Marketplace 政策可能 1-2 年调整一次,需季度刷新
