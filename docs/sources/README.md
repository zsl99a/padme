---
type: sources-index
status: active
last_updated: 2026-06-04
---

# 信息源索引

按类别分组;每条来源都有独立档案 [`sources/<name>.md`](./),内含可信度、刷新频率、典型引用。

## 分类

- **official**:平台/项目官方公告页
- **first-hand**:亲测博客、技术复盘
- **media**:主流财经/科技媒体
- **community**:Reddit、HackerNews、V2EX、Discord、微信公众号
- **aggregator**:Newsletter、聚合站

## 当前来源清单

| 名称 | 类别 | 状态 | 档案 | 备注 |
| --- | --- | --- | --- | --- |
| V2EX | community | active | [v2ex.md](./v2ex.md) | 中文技术社区,创业复盘密集 |
| 小报童 (Xiaobot) | official | active | [xiaobot.md](./xiaobot.md) | 中国本土付费专栏平台,微信支付,真实排行榜 |
| Notion Marketplace | official | active | [notion-marketplace.md](./notion-marketplace.md) | Notion 官方模板市场,Stripe 收款 |
| Etsy Payments | official | active | [etsy-help.md](./etsy-help.md) | Etsy 数字商品,大陆新店不可开通 |
| Adobe Stock | official | active | [adobe-stock.md](./adobe-stock.md) | 33% 抽成,设计师分成 |
| PromptBase | official | active | [promptbase.md](./promptbase.md) | 270k+ prompts,2026 新增 Agent Skills |
| Figma Community | official | active | [figma-community.md](./figma-community.md) | Figma 模板免费分发,Plugin 可付费 |
| V2EX · 创造节点 | community | active | [v2ex-create.md](./v2ex-create.md) | 国内创造者首发与套利讨论 |
| Hacker News | community | active | [hacker-news.md](./hacker-news.md) | 英文 AI/创业变现信号 |
| HN · Algolia 检索 | community | active | [hn-algolia.md](./hn-algolia.md) | HN 结构化检索 API |
| GitHub Trending | community | active | [github-trending.md](./github-trending.md) | 日榜/周榜,新工具最早期信号 |
| WebMonetization.org | official | active | [webmonetization-org.md](./webmonetization-org.md) | W3C Web Monetization 规范 |
| Tomayac Blog | first-hand | active | [tomayac-blog.md](./tomayac-blog.md) | W3C 工作组工程师博客 |
| Stripe Atlas | official | active | [stripe-atlas.md](./stripe-atlas.md) | 美国公司注册 $500,$50K+ perks |
| Gumroad Discover | official | active | [gumroad-discover.md](./gumroad-discover.md) | 数字商品真实榜单 |
| Portkey | official | active | [portkey.md](./portkey.md) | AI Gateway 定价基线($49/月) |
| LiteLLM (BerriAI) | official | active | [litellm.md](./litellm.md) | 开源 LLM Gateway,做 #3 SaaS 必看 |
| Maxim AI Articles | first-hand | active | [getmaxim-articles.md](./getmaxim-articles.md) | 开源 LLM Gateway 横向对比 |
| TrueFoundry Blog | first-hand | active | [truefoundry-blog.md](./truefoundry-blog.md) | LiteLLM 自建 vs 托管成本 |
| OpenZiti Blog | first-hand | active | [openziti-blog.md](./openziti-blog.md) | LLM Gateway 功能矩阵 |
| Product Hunt | community | stale | [product-hunt.md](./product-hunt.md) | 抓取 404,待用 GraphQL 重抓 |
| GitHub Sponsors | official | stale | [github-sponsors.md](./github-sponsors.md) | SPA 抓不全,待走 REST API |
| Substack | community | active | [substack.md](./substack.md) | 抓不全 leaderboard,需补 RSSHub |
| OpenAI Apps SDK + ACP(2026) | official | active | [openai-apps-sdk.md](./openai-apps-sdk.md) | 2025-10 发布,2026-03 Codex Plugin 转换,2026 H2 详情公布 |
| Telegram Mini Apps 创作者经济(2026) | first-hand | active | [telegram-mini-apps-2026.md](./telegram-mini-apps-2026.md) | GramBase 6 个月支付基础设施,7 大变现模型 |
| Meta Business Agent + WhatsApp AI(2026-06) | official | active | [whatsapp-business-ai-agent-2026.md](./whatsapp-business-ai-agent-2026.md) | Meta 6-3 推,Builder 角色,BSP 生态 |
| Discord Premium Apps 70/30(2026) | official | active | [discord-premium-apps-2026.md](./discord-premium-apps-2026.md) | 750K+ app,45M MAU,2026-02 dev newsletter |

## 维护提醒

- 引用一个来源前,先确认它有独立档案。
- 来源失效:把 `status` 改为 `stale` 或 `dead`,并在本索引标注。
- 抓取失败/数据缺失时,把 `status` 改 `stale`,在档案"抓取状态"节记录,后续用替代方式补。
- 新增信息源时,同步更新本表(按"active 在上、stale 在下"排序)。
