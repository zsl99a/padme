---
type: source
name: webmonetization-org
category: official
url: https://webmonetization.org/
status: active
last_checked: 2026-06-04
refresh_cadence: on-event
---

# WebMonetization.org

## 覆盖领域

W3C Web Monetization 标准的官方文档站。覆盖:

- 浏览器端 `<meta name="monetization" content="$wallet.example.com/owner">` 接入
- Interledger Protocol(ILP)协议细节
- 钱包生态(Coil、Fynbos、Uphold 等收款方)
- 浏览器支持矩阵(Brave、Chrome、Edge)
- 流量统计、payment pointer 路由

## 可信度

- **极高**:W3C 工作组官方,API 文档与规范一一对应。
- **缺点**:收入数据/案例少,需要外链到 Webmonetization blog 或社区。

## 抓取方式

- **HTML 抓取**:Firecrawl / curl 直接拉
- **RSS**:`https://webmonetization.org/blog/rss.xml`(博客)
- **变更监控**:每月 diff 一次首页,新规范/新钱包出现时触发重新评估

## 典型引用

- https://webmonetization.org/ — 官方首页
- https://webmonetization.org/docs/ — API/SDK 文档
- https://webmonetization.org/blog/ — 标准进展与生态动态

## 踩坑

- 文档虽完整,但示例代码较老(以 Coil 为主),Coil 已于 2024-06 停止新订阅,需用 Fynbos 替代。
- 浏览器实际支持矩阵建议每周查一次 caniuse / MDN 对应 BCD 字段。
