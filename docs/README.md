---
type: index
status: active
last_updated: 2026-06-04
---

# Padme — 准钱机会发现工作区

> 持续从互联网发现「低成本、可落地、AI 或脚本可全自动执行、当前依然有效」的赚钱机会。

## 工作流一句话

发现 → 交叉验证 → 多维评分 → 沉淀档案 → 沉淀规则 → 循环。

## 目录结构

| 目录 | 作用 | 入口 |
| --- | --- | --- |
| `docs/rules/` | 沉淀工作区所有规则(发现流程、评分标准、验证方法、自动化约束等) | [`docs/rules/README.md`](./rules/README.md) |
| `docs/opportunities/` | 每个机会一份独立档案(机会名作为文件名) | [`docs/opportunities/README.md`](./opportunities/README.md) |
| `docs/sources/` | 信息源档案(平台、社区、Newsletter、博主) | [`docs/sources/README.md`](./sources/README.md) |
| `docs/workflows/` | 端到端工作流脚本与流程定义 | [`docs/workflows/README.md`](./workflows/README.md) |

## 核心约束(全文适用)

1. **当前有效**:机会必须有「2026-06-04 之后」的证据;过期/疑似过期机会不进入档案,直接淘汰。
2. **交叉验证**:任何机会至少 2 个独立信息源相互印证,否则降级为「观察中」而非「有效」。
3. **多维评分**:必须按 [`rules/002-多维评分标准.md`](./rules/002-多维评分标准.md) 跑完所有维度。
4. **AI / 脚本可执行**:机会必须能用 AI 流程或简单脚本全自动完成 80% 以上的关键动作,纯靠人力手动一小时以上的不收。
5. **合法合规**:不收录擦边、违规、违反平台 ToS 的机会。
6. **规则优先**:遇到冲突时以 `docs/rules/` 内的最新规则为准;踩坑后必须把经验沉淀为新规则并更新本入口。

## 起步路径(新人/新会话)

1. 读 [`docs/rules/README.md`](./rules/README.md) 了解规则体系。
2. 读 [`docs/rules/001-机会发现工作流.md`](./rules/001-机会发现工作流.md) 走一遍发现流程。
3. 读 [`docs/opportunities/template.md`](./opportunities/template.md) 学会写机会档案。
4. 读 [`docs/opportunities/README.md`](./opportunities/README.md) 看当前已沉淀的机会,挑选 ≥ 7 分的执行。

## 维护原则

所有规则踩坑即写,所有机会过期即删,所有信息源失效即标注。详见 [`docs/rules/README.md`](./rules/README.md) 的「维护原则」章节。
