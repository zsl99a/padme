---
type: source
name: product-hunt
category: community
url: https://www.producthunt.com/
status: stale
last_checked: 2026-06-04
refresh_cadence: weekly
---

# Product Hunt

## 覆盖领域

全球科技新产品的"日榜+月榜"汇总,大量 AI 工具、独立开发产品,适合:

- **趋势信号**:近 30 天哪种 AI 工具持续上榜
- **变现验证**:评论里大量"已付费 / 转化率"数据
- **可借鉴的冷启动打法**:upvote 时间窗、launch checklist

## 可信度

- **中**:大量产品靠"upvote 群刷"上首页,需要看评论数与实际流量数据交叉验证。
- **高**:少数产品有 HN/Reddit 同款讨论,真实度高。

## 抓取方式

- **首页抓取**:Firecrawl 抓 `https://www.producthunt.com/`
  - 2026-06-04 实测:`/leaderboard/monthly` 返回 404
- **API**(需认证):`https://api.producthunt.com/v2/api/graphql` 走 OAuth,需 PHA 开发者账户
- **RSS**:无官方,可用 `https://www.producthunt.com/feed` 试

## 抓取状态

- 2026-06-04:Firecrawl 抓 `https://www.producthunt.com/leaderboard/monthly` 返回 404
- 待办:重新试 `https://www.producthunt.com/leaderboard` 或申请 PHA 官方 API

## 典型引用

- 暂无(等数据回来后再补)

## 踩坑

- 抓不到具体榜单数据时,改用:`https://www.producthunt.com/topics/<topic>`(如 `/topics/artificial-intelligence`)分类页面
- 也可以用第三方聚合:`https://www.kleros.io/`、`https://www.betapage.co/`
