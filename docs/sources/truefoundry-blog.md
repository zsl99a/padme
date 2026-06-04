---
type: source
name: truefoundry-blog
category: first-hand
url: https://www.truefoundry.com/blog
status: active
last_checked: 2026-06-04
refresh_cadence: weekly
---

# TrueFoundry Blog

## 覆盖领域

TrueFoundry(MLOps / LLM 部署平台)的工程博客,典型主题:

- LiteLLM / vLLM / Ollama 等开源 LLM 部署成本拆解
- 自建 vs 托管 LLM Gateway 的 TCO 对比
- 企业级 LLM 落地最佳实践

## 可信度

- **高**:工程团队背景,内容含具体数字(GPU 价格、tokens/$)。
- **缺点**:TrueFoundry 自家做 LLM 部署,立场略偏(引导用户用他们的云)。

## 抓取方式

- **HTML 抓取**:Firecrawl 抓 `https://www.truefoundry.com/blog`
- **RSS**:无官方,可用 RSSHub 试

## 典型引用

- [Understanding LiteLLM Pricing: Cost of Open Source Gateways](https://www.truefoundry.com/blog/litellm-pricing-guide) — first-hand — 2026-06-04
  > 自建 vs 托管成本拆解

## 踩坑

- 厂商博客带销售意图,引用时把数字和对比表存档,跳过结论性推荐。
- 适合做"做 #3 海外 SaaS 时的定价参考"——把 TrueFoundry 报的"自建成本"作为我们定价的下限。
