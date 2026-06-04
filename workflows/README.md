---
type: workflows-index
status: active
last_updated: 2026-06-04
---

# 项目工作区入口

> **每一个 `workflows/<slug>/` 都是一个独立套利机会的端到端可执行工作区。**
> 与 [`docs/opportunities/<slug>.md`](../docs/opportunities/README.md) 一一对应。

## 目录

| Slug | 配套机会档案 | 状态 | 当前阶段 |
| --- | --- | --- | --- |
| [`llm-api-relay/`](./llm-api-relay/) | [docs/opportunities/llm-api-reselling-cn.md](../docs/opportunities/llm-api-reselling-cn.md) | active | 等待老板点头(见 [ACTION-PLAN §9](../docs/ACTION-PLAN.md)) |

## 工作区内部标准结构

每个 `workflows/<slug>/` 都遵循以下布局(参见 [docs/rules/009-项目工作区结构.md](../docs/rules/009-项目工作区结构.md)):

```
workflows/<slug>/
├── README.md        # 入口(目标、当前状态、下一步)
├── CHANGELOG.md     # 变更日志
├── deploy/          # 部署代码(Docker/脚本/配置/.env.example)
├── ops/             # 周报模板、事故 SOP、健康检查
├── compliance/      # 风险登记册、ToS 摘要
├── pricing/         # 套餐表、落地页文案
├── promotion/       # V2EX/TG/X 推广文案
├── data/            # 业务数据快照(销量、复购、监控)
└── docs/            # 项目内补充文档(不上升到全局规则的)
```

`llm-api-relay/` 沿用了 deploy/ops/compliance/pricing/promotion 五个子目录的扁平结构(无 deploy/data/docs 二级目录),后续如有需要再扩到标准布局。

## 新建工作区的步骤

1. 在 `docs/opportunities/<slug>.md` 写机会档案(分数 ≥ 6)
2. 在 `workflows/<slug>/` 下按标准结构建工作区
3. 在 `docs/opportunities/README.md` 与 `workflows/README.md` 同步登记
4. 在 `docs/ACTION-PLAN.md` 决策表里更新

## 维护原则

- 一个 opportunity ↔ 一个 workflow,成对出现
- 失效/归档的 opportunity 同步把 workflow 改 `status: archived`,但**不删除**(留作复盘)
- `data/` 子目录默认加入 `.gitignore`(业务数据不进 git)
