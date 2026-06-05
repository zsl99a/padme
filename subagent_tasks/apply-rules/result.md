# Apply Rules:把 8 集群验证发现的新规则沉淀到 docs/rules/

> 任务:Cluster 1-8 验证报告 → 落档为 docs/rules/010-017 八条新规则
> 执行人:sub agent
> 完成日期:2026-06-05
> 输入:subagent_tasks/cluster-{1..8}-*/result.md
> 输出:docs/rules/010-017.md(8 个新规则文件)+ docs/rules/README.md(更新索引)

---

## 1. 已落档的 8 个规则文件

| 编号 | 标题 | 路径 | 来源集群 | 一句话核心 |
| --- | --- | --- | --- | --- |
| 010 | 平台政策时效性验证 | `docs/rules/010-平台政策时效性验证.md` | 2/7/5/1 | 政策类声明 ≤ 6 个月时效 + 1 官方 + 1 独立交叉源;剧变立即复核 |
| 011 | 平台/支付方生态依赖验证 | `docs/rules/011-平台与支付方生态依赖验证.md` | 4 | `depends_on` 显式化 + 30 天复查上游存活 + 失效自动降分 |
| 012 | OSS / 平台月检机制 | `docs/rules/012-OSS与平台月检机制.md` | 4/5/7 | 每月 1 号对 active 档案做"上游存活检查";强对手出现自动降分 |
| 013 | 案例引用准确性验证 | `docs/rules/013-案例引用准确性验证.md` | 4/5/3 | 数字案例必查三要素(URL/日期/主体);二手汇总降级;YouTube 频道直接查 |
| 014 | 二手汇总源标记规则 | `docs/rules/014-二手汇总源标记规则.md` | 2/3/4/6 | 二手源加 `[二手汇总]` 前缀;仅二手源不可作唯一证据,降证据强度 1-2 分 |
| 015 | Web3 / 链上 APR 实时数据 | `docs/rules/015-Web3与链上APR实时数据.md` | 8 | APR/APY 以协议官方 Dashboard 实时数据为准;周复检;APR vs APY 必须区分 |
| 016 | 灰度签字流程与 NSFW 红线 | `docs/rules/016-灰度签字流程与NSFW红线.md` | 8/5/7 | gray/NSFW 启动前 4 项签字清单;Chub/Patreon 国内身份禁注册;24 月窗口期 |
| 017 | 短视频/RPM 数据归属 + 海外可行性 | `docs/rules/017-短视频RPM数据归属与海外可行性.md` | 1 | RPM 三级标签(官方/范围/孤证);海外"开通"≠"收钱";5 个粉丝门槛区分 |

---

## 2. 文件结构(8 个规则统一格式)

每个规则文件遵循与 001-009 一致的结构:

```markdown
---
type: rule
id: 010..017
status: active
last_updated: 2026-06-05
---

# 010..017 - <规则名>

## 目的
<为什么需要这条规则>
## 适用范围
<什么情况下用>
## 具体规则
<5-10 条条文,引用其他规则编号>
## 踩坑记录
<具体哪些机会验证时踩了哪些坑,引用 cluster result.md 章节>
## 变更日志
- 2026-06-05:初始建立(来自 v3.0 验证 8 集群发现)
```

---

## 3. 关键引用(踩坑案例的 cluster 来源)

| 规则 | 关键引用案例 | 引用文件位置 |
| --- | --- | --- |
| 010 | Beehiiv 50%→分级、Spotify 6 月新规、Apple 904 表 CN not available、AMZ Merch 三档制降 81%、Etsy 中国新店关闭、Solos 15%→10/20% 双层、小绿书→贴图更名 | `subagent_tasks/cluster-2-creator-economy/result.md` §6 + `cluster-7-ecommerce/result.md` §6 + `cluster-5-ai-vertical-saas/result.md` §6 + `cluster-1-wechat/result.md` §6 |
| 011 | web-monetization-api 依赖 Coil 死亡、AGW URL 404、Plaud 实际 1M+ 出货、Rezi 真实 $273K MRR | `subagent_tasks/cluster-4-ai-saas-api/result.md` §3.11 + §6.1 |
| 012 | web-monetization-api 整年没复检、LLM Gateway 2026-05 新对手、Solos URL 404、TikTok Shop Pilot 计划、Coupang 全球化 | `subagent_tasks/cluster-4-ai-saas-api/result.md` §6.1 + `cluster-5-ai-vertical-saas/result.md` §6.1 + `cluster-7-ecommerce/result.md` §6.1 |
| 013 | Smart Glasses Guy 125K→4.68K、xAI $35-45 US-only、Praktika $2M→$1M、Final Round AI 是作弊、Mingogo 转录误当翻译、Mindgard 创始人访谈无链接、Vapi $500M 估值 | `subagent_tasks/cluster-4-ai-saas-api/result.md` §6.1 + `cluster-5-ai-vertical-saas/result.md` §6.1 + `cluster-3-ai-agent-freelance/result.md` §7.2-7.4 |
| 014 | newsletter-ghostwriting 3 条关键证据(AGW/Gotham/Cole)全失效、Substack Leaderboard 不公开收入、GetLatka 行业汇总不可信、Telegram 500-member 群 $8K 是举例 | `subagent_tasks/cluster-2-creator-economy/result.md` §6 + §3.7 + `cluster-3-ai-agent-freelance/result.md` §7.1 + `cluster-6-platform-marketplace/result.md` §6 规则 4 |
| 015 | Babylon BTC staking 4-8%→0.04-0.59%、Hyperliquid S2 speculation、李一舟 1.75 亿 2024 被告发、Aave USDC 3-6% 稳定对照 | `subagent_tasks/cluster-8-ai-content-web3/result.md` §3 + §7.2 |
| 016 | ai-character-card-multi-platform NSFW 需签字、Babylon 月入<$100 持续 3 月→暂停、NSFW 24 月窗口期、李一舟案例作废、yingtu.ai 6 月 38% 封禁率、Final Round AI 是 gray/作弊、小红书 2026-01-19 社区公约 2.0 | `subagent_tasks/cluster-8-ai-content-web3/result.md` §6 + §7 + `cluster-5-ai-vertical-saas/result.md` §6.1 + `cluster-7-ecommerce/result.md` §6.1.5 |
| 017 | wechat-shipinhao 8.7→7.0(孤证+海外不可收钱)、视频号 RPM 黑箱、小绿书→贴图更名、5 个粉丝门槛区分、视频号橱窗保证金 100+0-30000 | `subagent_tasks/cluster-1-wechat/result.md` §5 + §6.1 + §6.2 |

---

## 4. 配套更新

- **docs/rules/README.md**:
  - 表格新增 010-017 八行
  - 顶部 `last_updated: 2026-06-04` → `2026-06-05`
  - 变更日志追加 2026-06-05 条目,列出 8 条新规则

---

## 5. 验证

```bash
$ ls -1 docs/rules/*.md | sort
docs/rules/001-机会发现工作流.md
docs/rules/002-多维评分标准.md
docs/rules/003-信息源交叉验证.md
docs/rules/004-有效性时间窗口.md
docs/rules/005-自动化执行约束.md
docs/rules/006-机会档案模板.md
docs/rules/007-信息源档案模板.md
docs/rules/008-合法合规红线.md
docs/rules/009-项目工作区结构.md
docs/rules/010-平台政策时效性验证.md          # ✅ 新增
docs/rules/011-平台与支付方生态依赖验证.md     # ✅ 新增
docs/rules/012-OSS与平台月检机制.md            # ✅ 新增
docs/rules/013-案例引用准确性验证.md           # ✅ 新增
docs/rules/014-二手汇总源标记规则.md           # ✅ 新增
docs/rules/015-Web3与链上APR实时数据.md        # ✅ 新增
docs/rules/016-灰度签字流程与NSFW红线.md       # ✅ 新增
docs/rules/017-短视频RPM数据归属与海外可行性.md # ✅ 新增
```

8 个文件均已实际写盘,frontmatter 格式 + 章节结构与 001-009 严格一致;每条规则的"踩坑记录"节均明确引用 cluster result.md 章节路径。

---

## 6. 未做事项(留给后续)

- 8 条规则未触发对 001-009 既有规则的"补丁修订"(如 cluster 2 草案 013 提出 003 补丁、cluster 7 草案 002 补丁、cluster 7 草案 008 补丁、cluster 5 草案 015 平台时薪 US/International 区分)。
- 这些"补丁建议"已吸收到 010-017 中作为独立规则,但既有 001-009 文件的"踩坑记录"节未追加 cluster 引用。
- 建议下一轮做 001-009 的"回头修订"任务,把这些 cluster 经验正式写入对应规则的"踩坑记录"节。
