---
type: source
name: hn-algolia
category: community
url: https://hn.algolia.com/
status: active
last_checked: 2026-06-04
refresh_cadence: on-event
---

# HackerNews · Algolia 检索

## 覆盖领域

全球开发者社区:Show HN、Ask HN、新工具/新 SaaS、变现讨论、副业案例、技术趋势。

## 可信度

- **高**:算法排序 + 评分,信号噪声比好。
- **强项**:新机会发现、真实用户讨论、有评论有截图。
- **弱项**:英语圈,亚洲 niche 覆盖弱。

## 抓取方式

```bash
firecrawl scrape "https://hn.algolia.com/api/v1/search?query=<keyword>&tags=story&numericFilters=created_at_i%3E1750000000&hitsPerPage=20"
```

## 典型引用

- [Lovable makes $60M in 6 months(2025-06,140 分)](https://getlago.substack.com/p/lovable-makes-60m-in-6-monthsbut)
- [Using the Web Monetization API for fun and profit(2025-11,77 分)](https://blog.tomayac.com/2025/11/07/using-the-web-monetization-api-for-fun-and-profit/)
- [Ask HN: Small Utility App Monetization(2025-07)](https://news.ycombinator.com/item?id=44747577)
- [Show HN: Sudo – AI monetization infrastructure(2025-09)](https://sudoapp.dev/)
