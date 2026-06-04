---
type: workflow
name: llm-api-relay
status: draft
target_opportunity: llm-api-reselling-cn
last_updated: 2026-06-04
---

# 工作流:LLM API 中转(国内向) 一键启动包

> 配套机会档案:`../../opportunities/llm-api-reselling-cn.md`
> 决策来源:`../../ACTION-PLAN.md`(第一梯队推荐)

## 目标

把"LLM API 中转"做成可一键复制的脚手架,任何具备 VPS + 上游 API Key 的人 30 分钟内可上线。

## 目录结构

```
llm-api-relay/
├── README.md                ← 本文件
├── docker-compose.yml       ← 一键启动 new-api + Postgres + Redis + Nginx
├── .env.example             ← 环境变量模板
├── deploy.sh                ← 一键部署脚本(VPS 上)
├── healthcheck.sh           ← cron 跑的健康检查 + 告警
├── promotion/               ← V2EX / TG / X 推广文案模板
│   ├── v2ex-create.md
│   ├── v2ex-promo.md
│   ├── tg-channel-pinned.md
│   └── x-thread.md
├── pricing/                 ← 套餐表 + 落地页文案
│   └── tiers.md
├── compliance/              ← 风控清单 + 风险话术
│   ├── risk-register.md
│   └── toS-summary.md
└── ops/                     ← 运营模板
    ├── weekly-report.md     ← 周报模板
    └── incident-runbook.md  ← 事故 SOP
```

## 启动步骤(老板/AI 各自负责)

| # | 步骤 | 谁 | 时间 |
| --- | --- | --- | --- |
| 1 | 准备 VPS(2C2G,HK/JP) | 老板 | Day 0 |
| 2 | 准备上游 API Key(OpenAI/Claude) | 老板 | Day 0 |
| 3 | clone 本目录到 VPS | AI | Day 0,10 分钟 |
| 4 | 填 .env,运行 deploy.sh | AI | Day 0,10 分钟 |
| 5 | 接入支付(Stripe Atlas / Creem / USDT) | AI | Day 1 |
| 6 | 上 V2EX / TG 推广 | AI | Day 1-2 |
| 7 | 收到第一个付费客户 | — | Day 2-7 |
| 8 | 启动 weekly-report | AI | Day 7+ |

## 预期里程碑(对应 ACTION-PLAN §5)

| Day | 验证点 |
| --- | --- |
| 1 | new-api 在 5 分钟内跑通,返回 OK |
| 2 | 落地页上线,Stripe Checkout 可付款 |
| 3 | V2EX 帖 100+ 浏览 |
| 7 | 第一个付费客户,¥10-50 |
| 14 | 累计 5+ 付费客户 |
| 30 | 累计 20+ 付费客户,月流水 ¥500-2000 |

## 止损线(对应 ACTION-PLAN §6)

- 月亏 ≥ ¥200 → 自动停
- 上游账号被封 ≥ 3 次/周 → 切渠道
- 老板任何时候喊停 → 立刻停
