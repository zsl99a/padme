---
type: source
name: substack
category: community
url: https://substack.com/explore
status: active
last_checked: 2026-06-04
refresh_cadence: weekly
---

# Substack

## 覆盖领域

英文 newsletter 主流平台,适合:

- **赚钱信号**:Top paid leaderboard(技术/金融/创业类 newsletter 真实订阅数与定价)
- **小众 niche 验证**:观察哪些长尾主题在做付费化
- **AI 工具用法**:多数 AI newsletter 在用本平台做付费墙实验

## 可信度

- **高**:订阅数与价格公开,但**实际收入**需要估算(订阅数 × 单价 × 抽成 10%)
- **缺点**:任何 niche 都能上 Substack,信噪比参差

## 抓取方式

- **Leaderboard 抓取**:Firecrawl 抓 `https://substack.com/leaderboard/technology/paid`
  - 2026-06-04 实测:抓到的是全局导航,无具体 leaderboard 数据
- **替代**:抓 `https://substack.com/discover` 或分类页 `/discover/category/<n>`
- **搜索**:站内搜索 `"make money with AI"` 等关键词

## 抓取状态

- 2026-06-04:Firecrawl 抓 `/leaderboard/technology/paid` 只拿到导航
- 待办:改抓分类页 `/leaderboard/technology/paid` 加 `?sort=top` 参数,或用 RSS reader 跟踪 Top newsletter

## 典型引用

- 暂无(等数据回来后再补)

## 踩坑

- 平台方对爬虫限流,优先用 RSSHub 路由:`https://rsshub.app/substack/leaderboard/technology`
- 排行榜数据存在滞后(约 1-7 天),做"风口验证"够用,做"实时套利"不够。
