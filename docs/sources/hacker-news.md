---
type: source
name: hacker-news
category: community
url: https://news.ycombinator.com/
status: active
last_checked: 2026-06-04
refresh_cadence: daily
---

# Hacker News (HN)

## 覆盖领域

英文技术/创业/AI 圈最活跃的高质量讨论场,适合发现:

- **Show HN** — 真实落地的 AI/开发工具
- **Launch HN** — 创业公司上线,含变现模型
- **Ask HN: monetization** — 各类变现思路、付费墙、API 计费
- **AI monetization infrastructure** — 模型路由、Token 计费、Provider 抽象
- **Bounty / grant** — 黑客松、GitHub grant、protocol 资助

## 可信度

- **很高**:用户实名/ID 一致,有具体数字披露(ARR、MRR、用户数)。
- **极高**:技术细节经得起反推,带 GitHub 仓库可一键复现。
- **缺点**:讨论偏英文 + 海外场景,不一定能直接搬运回国内。

## 抓取方式

- **Algolia 搜索 API(首选)**:免费、无需认证
  - `https://hn.algolia.com/api/v1/search?query=<keyword>&tags=story&numericFilters=points>%3D50`
  - 例:`?query=web+monetization&tags=story&numericFilters=created_at_i%3E1717200000`
- **官方 Firebase API**:`https://hacker-news.firebaseio.com/v0/<itemType>.json`
- **HTML 抓取**:Firecrawl 直接抓 `news.ycombinator.com` 首页 / 节点页
- **RSS**:无官方 RSS,可用 `hnrss.org/newest?q=...` 第三方

## 典型引用

- [Using the Web Monetization API for fun and profit - Tomayac(2025-11)](https://blog.tomayac.com/2025/11/07/using-the-web-monetization-api-for-fun-and-profit/) — first-hand — 2026-06-04
  > W3C 标准实操文,API 已稳定
- [Show HN: Sudo – AI monetization infrastructure for developers](https://news.ycombinator.com/) — community — 2026-06-04
  > 关键词命中,需在 HN Algolia 二次定位
- [Is Lovable getting monetization wrong?](https://news.ycombinator.com/) — community — 2026-06-04
  > AI 工具变现路径讨论

## 踩坑

- 搜索"passive income / make money online"基本是 SEO 垃圾,过滤掉 SEO 农场域名。
- 优先用 `points>50` 或 `created_at_i>近期` 过滤,避免老帖/低分帖占满。
- 部分 Show HN 项目跑路/无人维护,引用前先看 GitHub 最近 commit 时间。
