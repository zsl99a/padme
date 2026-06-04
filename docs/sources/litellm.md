---
type: source
name: litellm
category: official
url: https://litellm.vercel.app/
status: active
last_checked: 2026-06-04
refresh_cadence: monthly
---

# LiteLLM (BerriAI)

## 覆盖领域

最流行的开源 LLM Gateway(GitHub 25k+ stars,Apache 2.0):

- **Python SDK**:统一 100+ LLM 接口
- **Proxy Server**:中心化 LLM 网关,支持多租户、虚拟 key、cost tracking
- **Admin Dashboard**:UI 监控用量
- **LiteLLM Agent Platform**:官方云服务(验证"开源 + 托管云"双轨)

## 可信度

- **极高**:开源、文档完整、API 稳定。
- **关键参考价值**:Proxy Server 的功能集 = 我们 #3 海外 SaaS 的功能基线。

## 抓取方式

- **官方文档**:Firecrawl 抓 `https://litellm.vercel.app/`
- **GitHub**:定期拉 `https://github.com/BerriAI/litellm` 的 release notes
- **Discord**:社区反馈含真实使用场景

## 典型引用

- [LiteLLM 官方文档](https://litellm.vercel.app/) — official — 2026-06-04
  > "Call 100+ LLMs using the OpenAI Input/Output Format" + "LiteLLM Agent Platform"

## 踩坑

- LiteLLM 自己做云服务,做 #3 需差异化(定位"Solo Developer 优化版"或"特定行业版")。
- Watch 官方 changelog 节奏,避免做"他们下一个版本要做的功能"。
