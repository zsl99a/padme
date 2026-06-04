---
type: opportunity
name: new-api-self-host-saas
status: active
score: 7.0
freshness_class: structural
first_seen: 2026-06-04
last_updated: 2026-06-04
region: cn
tags: [open-source, saas, ai, dev-tool, cn]
---

# new-api / sub2api 自部署 SaaS(为海外华人开发者)

## 一句话定位

把 V2EX 上反复出现的 `new-api` / `sub2api` 开源面板,包成"一键 SaaS":海外华人开发者(OpenAI/Anthropic 账号已封)按月付费即可获得稳定 API 中转 + 自动健康监控 + 自动切号。

## 自动化路径

工具栈:
- 改 `new-api` 加上自有的「账号池自动切号」「用量告警」「面板品牌化」
- Stripe / Creem 收款
- 一键 Docker 镜像 / Web 控制台

```mermaid
graph LR
    A[采购海外 API Key 池] --> B[自助 SaaS 平台] --> C[用户注册/付费] --> D[自动分配/切号] --> E[用量计费]
```

| # | 步骤 | 自动/人工 | 工具 |
| --- | --- | --- | --- |
| 1 | 改造 new-api(品牌/计费/告警) | 半自动 | Cursor / Claude Code |
| 2 | 部署(多区域 VPS 池) | 自动 | Terraform |
| 3 | 接入 Stripe / Creem | 自动 |  |
| 4 | 流量:ProductHunt + X + V2EX + 小红书 | 半自动 |  |
| 5 | 日常:自动切号/熔断 | 自动 |  |

`auto_ratio`: **0.85**

## 评分明细(按 002 标准)

| 维度 | 分数(0-10) | v2 权重 | 加权 |
| --- | --- | --- | --- |
| 启动成本(资金) | 8(2-3 个 VPS ~$100) | 0.15 | 1.20 |
| 启动成本(技能) | 6(Go + 前端 + DevOps) | 0.05 | 0.30 |
| 首笔收入速度 | 7(2-3 周) | 0.15 | 1.05 |
| 可扩展性 | 8(账号池线性扩) | 0.10 | 0.80 |
| 可持续性 | 6(1-2 年内 OpenAI/Anthropic 可能改 ToS) | 0.10 | 0.60 |
| 自动化程度 | 8 | 0.15 | 1.20 |
| 风险 | 4.1(拆分:法律 4 × 0.5 + ToS 3 × 0.3 + 市场 6 × 0.2 = 4.1) | 0.15 | 0.62 |
| 证据强度 | 8(V2EX 大量现成用户) | 0.15 | 1.20 |
| + 现实数据奖励 | 0(无月入 $1k 独立案例) | — | 0.00 |
| **总分** | — | — | **7.0** |

决策:**排队**

## 启动清单

- [ ] Fork `new-api` 加上自功能
- [ ] 至少 3 区域 VPS 池(美/日/港)
- [ ] Stripe / Creem 接入
- [ ] 品牌落地页
- [ ] V2EX / PH / X 同步 Launch
- [ ] 客服:TG + 文档站

## 风险与红线

- **上游账号池可持续性**:OpenAI / Anthropic 高频封号,需冗余采购。
- **支付**:Stripe 敏感,备选 Creem / Lemonsqueezy / USDT。
- **合规**:与 `llm-api-reselling-cn.md` 共享同样红线,但本机会增加了"产品化"价值,护城河略高。

## 监控指标

- 用户活跃数(WAU)
- 上游账号存活(健康线 > 30 天/账号)
- 净利率(健康线 > 40%)

## 参考来源

1. [V2EX #1217490 - "中转站一般都是 new-api 或者 sub2api 搭的,这俩项目是开源的"](https://www.v2ex.com/t/1217490) — first-hand — 抓取:2026-06-04
   > 直接验证技术栈选择
2. [V2EX #1217285 - OpenAI 提升账号风控(86 回复)](https://www.v2ex.com/t/1217285) — community — 抓取:2026-06-04
   > 验证风控问题真实、用户对自动切号有强需求
3. [V2EX #1217903 - 求 ChatGPT 拼车方案](https://www.v2ex.com/t/1217903) — community — 抓取:2026-06-04
   > 目标用户真实痛点

## 复盘/亲测

> 未亲测。
