---
type: opportunities-index
status: active
last_updated: 2026-06-04
---

# 机会档案索引

按分数降序排列;`status` 不为 `active` 的机会从主表移除,挪到下方「失效/归档」表。

## 活跃机会(分数 ≥ 6)

| 名称 | 分数 | 时效类别 | 合规标签 | 档案 |
| --- | --- | --- | --- | --- |
| Web Monetization API | 7.75 | structural | normal | [web-monetization-api.md](./web-monetization-api.md) |
| LLM Gateway 托管云服务(海外向) | 7.55 | structural | normal | [llm-gateway-managed-service.md](./llm-gateway-managed-service.md) |
| LLM API 中转(国内向) | 7.25 | volatile | gray | [llm-api-reselling-cn.md](./llm-api-reselling-cn.md) |
| ChatGPT Plus 拼车 | 7.15 | seasonal | gray | [chatgpt-plus-pooling.md](./chatgpt-plus-pooling.md) |

## 失效 / 归档

| 名称 | 状态 | 失效原因 | 档案 |
| --- | --- | --- | --- |
| _暂无 |  |  |  |

## 观察中(分数 < 6)

参见 [`_parking-lot.md`](./_parking-lot.md)。

## 维护提醒

- 新增机会:写完档案后,回到本文件添加一行,放在「活跃机会」表内,按分数降序插入。
- 失效机会:从「活跃机会」表删除,迁移到「失效/归档」表,标注 `status` 与原因。
- 每月 1 号按 [004-有效性时间窗口](../rules/004-有效性时间窗口.md) 体检所有 `active` 机会。
- **gray 标签机会**:必须按 008 第 3 节补丁规定,检查「gray 标签 + 备份渠道 + 资金亏损可接受」三件套是否齐备。
