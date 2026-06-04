---
type: opportunities-index
status: active
last_updated: 2026-06-04
---

# 机会档案索引

按分数降序排列;`status` 不为 `active` 的机会从主表移除,挪到下方「失效/归档」表。

## 活跃机会(分数 ≥ 6)

| 名称 | 分数 | 时效类别 | 标签 | 档案 |
| --- | --- | --- | --- | --- |
| Web Monetization API 内容付费化 | 7.8 | structural | web, passive, api, global | [web-monetization-api.md](./web-monetization-api.md) |
| Micro-SaaS 小工具月费订阅 | 7.4 | structural | saas, micro, passive, global | [micro-saas-utility-app.md](./micro-saas-utility-app.md) |
| Substack 时事通讯付费化 | 7.4 | structural | content, newsletter, passive, global | [substack-newsletter-monetization.md](./substack-newsletter-monetization.md) |
| LLM API 中转(中国大陆向) | 7.3 | volatile | ai, api, reselling, gray, cn | [llm-api-reselling-cn.md](./llm-api-reselling-cn.md) |
| ChatGPT Plus / Claude Pro 拼车平台 | 7.2 | seasonal | ai, pooling, subscription, cn | [chatgpt-plus-pooling.md](./chatgpt-plus-pooling.md) |
| new-api / sub2api 自部署 SaaS | 7.1 | structural | open-source, saas, ai, dev-tool, cn | [new-api-self-host-saas.md](./new-api-self-host-saas.md) |

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
