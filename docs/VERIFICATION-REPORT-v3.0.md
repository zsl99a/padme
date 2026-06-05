---
type: verification-report
status: active
version: 3.0
last_updated: 2026-06-05
covers: 2026-06-05 全 8 集群验证
---

# 2026-06-05 v3.0 验证综合报告

> **本报告是什么**:AI 淘金客 8 个 sub-agent 在 2026-06-05 用统一 v2.0 打分基准对全 80 个活跃机会做"重复检测 + 多源验证 + 重新评分"的综合报告。
> **谁该读**:老板(决策)、主 agent(继续推进)、新加入的 AI agent(理解历史)。
> **配套文件**:本报告 + `subagent_tasks/cluster-1..8-*/result.md` + `docs/rules/010-017` 新规则 + 更新的 `docs/ACTION-PLAN.md` + 更新的 `docs/opportunities/README.md`。

## 0. 验证规模(一句话)

8 集群 sub-agent 并行,共读 **80 个活跃机会 + 9 条既有规则**,产出 **5,228 行验证报告**,落档 **75 个档案 frontmatter 修正 + 7 个高优先 body 重写 + 2 个 deprecated 迁移**,新增 **8 条规则(010-017)**,重新排序 Top 10,识别 **4 个关键升档黑马 + 7 个应降档修正**。

## 1. 验证方法

- **8 集群并行**:Cluster 1 WeChat 生态、Cluster 2 海外创作者经济、Cluster 3 AI Agent + Freelance、Cluster 4 AI SaaS/API、Cluster 5 AI 垂直 SaaS、Cluster 6 平台/数字商品、Cluster 7 跨境电商、Cluster 8 AI 内容/Web3。
- **统一基准**:`docs/rules/002-多维评分标准.md` v2.0(8 维评分 + 5 档决策阈值)。
- **交叉验证**:`docs/rules/003-信息源交叉验证.md`(≥2 独立来源,新规则 014 强化为"二手汇总"显式标记)。
- **红线参照**:`docs/rules/008-合法合规红线.md`(赌博/色情/毒品/武器/传销/洗钱/侵权/未授权爬取 8 类)。
- **每个 sub agent 5 步**:
  1. 读 002/003/008 三规则 + task.json 指定的机会档案清单
  2. 集群内去重(明确 lead file / 是否合并 / 独立保留)
  3. 多源验证(firecrawl search + scrape,优先官方文档,标注 URL/日期/主体)
  4. v2.0 重打分(8 维评分 + 决策档)
  5. 写 `result.md`(标准 6-9 节结构)

## 2. 集群概览

| 集群 | 文件数 | 独立机会 | 重复组 | 降分(显著) | 升分(显著) | Top 1 修正 | Top 1 推荐 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 WeChat | 6 | 6 | 2 组(3 公众号 CPS / 2 视频号变现) | 视频号 8.7→7.0 | — | 视频号 RPM + 海外可行性 | 小报童/微信公众号(跨集群 Top 8) |
| 2 创作者经济 | 7 | 7 | 4 组(Newsletter 3 / Podcast 2 / Tipping 1 内部 / Ghostwriting 1) | Newsletter 代写 8.06→7.3 | Beehiiv 8.18→8.50(+0.32) | AGW URL 404 + Gotham 2024 时间错位 | 小报童 8.8 |
| 3 AI Agent + Freelance | 10 | 10 | 4 组(5 集成/2 工具/2 SaaS/2 专业服务) | One-Time 8.6→8.4 | — | — | WhatsApp Builder 8.8 |
| 4 AI SaaS/API | 11 | 6 | 1 强组(LLM 中转 3 合并) | LLM Gateway 7.6→7.0 | Plaud 8.3→8.5 | Web Monetization 7.4→5.5(已 deprecated) | AI 订阅恢复 9.0 |
| 5 AI 垂直 SaaS | 8 | 8 | 0(无强重复) | 智能眼镜 8.10→6.9 | AI 模特图维持 8.5 | Smart Glasses Guy 125K→4.68K | EU AI Act 9.0 |
| 6 平台/数字商品 | 14 | 14 | 3 大组(Skill 3 / 数字商品 3 / 其他独立) | Agensi 8.8→8.7 | — | Agensi 80% 抽成待硬证据 | Lemon Squeezy 10.0(使能层) |
| 7 跨境电商 | 13 | 9 | 2 组(Lazada 2 / POD 3) | Amazon Merch 7.4→6.0 / Etsy 7.7→5.5(archived) | Coupang 6.1→6.8(+0.7) | AMZ 三档版税 -81% | 抖音图文带货 8.1 |
| 8 AI 内容/Web3 | 11 | 11 | 2 组(3 持币生息 / 2 撸毛) | Babylon 6.1→5.9 / ChatGPT 拼车 7.1→6.6 | AI Dating 8.4→8.7 / Grass 6.7→6.9 | Babylon APR 0.04-0.59% | AI Dating Coach 8.7 |
| **合计** | **80** | **71** | **15+ 组** | **~38** | **~8** | — | — |

> 数据来源:`subagent_tasks/cluster-{1..8}-*/result.md` §0 / §1 / §2。

## 3. 关键发现(分 3 类)

### 3.1 应降分 — 7 个最大修正

| # | 档案 | 旧分 | 新分 | Δ | 原因 | 来源 |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | `wechat-shipinhao-revenue-share` | 8.7 | **7.0** | -1.7 | "千次阅读 12 元"无官方依据;海外手机号**不可加入分成**计划;100 粉是内测邀请 | cluster-1 §3.1 + §4.1 |
| 2 | `ai-smart-glasses-review-site-2026` | 8.10 | **6.6** | -1.5 | The Smart Glasses Guy 125K subs 失实(实际 4.68K,差 25x);Solos 联盟 15%→10%/20% | cluster-5 §1 + §3 |
| 3 | `amazon-merch-on-demand-china-2026` | 7.4 | **6.0** | -1.4 | 2026-06-01 推出三档版税制,基础 T 恤版税 $13.18→$2.44(-81%) | cluster-7 §0 + §2.2 |
| 4 | `etsy-china-individual-payoneer-2026` | 7.7 | **5.5(deprecated)** | -2.2 | Etsy 官方明文"At this time, new shops cannot open in China" | cluster-7 §0 + cluster-1 跨集群 |
| 5 | `web-monetization-api` | 7.4 | **5.5(deprecated)** | -1.9 | Coil 钱包 2025 已关闭,Interledger 社区讨论"Coil shutdown 之后" | cluster-4 §0 + §1 |
| 6 | `ai-mock-interview-language-tutor-2026` | 8.x | **7.0** | -1.0+ | 3/5 indie 案例失实(Praktika $2M→$1M、Permito 是非订阅、Final Round AI 实际是面试作弊) | cluster-5 §1 + §3 |
| 7 | `babylon-btc-staking` | 6.1 | **5.9** | -0.2 | APR "4-8% APY" 严重虚高,官方 Dashboard 实际 0.04-0.59%(差 10-100x),降档到观察中 | cluster-8 §0 + §1 |

### 3.2 应升分 — 3 个低估修正(黑马)

| # | 档案 | 旧分 | 新分 | Δ | 原因 | 来源 |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | `ai-dating-coach-rizz-2026` | 8.4 | **8.7** | +0.3 | 4 个独立月入 $10K+ 案例验证;Roman Khaves 2026 自述 $15M+ 营收,升 Top 9(黑马) | cluster-8 §0 + §3.1 |
| 2 | `coupang-rocket-growth-china-2026` | 6.1 | **6.8** | +0.7 | Coupang 2025 营收 $34.5B(Fortune 500 第 132),业务 190 国,非"韩国一国" | cluster-7 §0 |
| 3 | `beehiiv-affiliate-2026` | 8.18 | **8.50** | +0.32 | 分级佣金(Launch 50%→Silver 55%→Gold 60%)升级;State of Newsletters $19M/138% YoY | cluster-2 §0 + §3.2 |

### 3.3 应归档 — 2 个 deprecated

| 档案 | 原分 | 新分 | 原因 | 移到哪 | 复检条件 |
| --- | --- | --- | --- | --- | --- |
| `web-monetization-api` | 7.4 | 5.5 | Coil 2025 已关闭,Brave 浏览器内置支付方是唯一来源;作为独立业务不可行,仅作"内容站被动收入层"叠加 | `_parking-lot.md` "2026-06-05 deprecated 迁移"节 | Brave 用户基数大幅增长 OR ILP 出现新支付方 |
| `etsy-china-individual-payoneer-2026` | 7.7 | 5.5 | Etsy 官方明文"new shops cannot open in China";2026 现状"中国个人 + Payoneer 开店"完全不可行 | 同上 | Etsy 重新开放中国大陆新店注册 |

> 详细修正记录:`subagent_tasks/apply-archives/result.md` §2-§3。

## 4. 全局分数变化(v2 → v3)

### 4.1 维持 9.0+(不变,4 个)

- **Lemon Squeezy MoR 收款桥梁 10.0**(使能层,封顶)
- **EU AI Act 合规审计 SaaS 9.0**(9.2→9.0,微降 0.2,GPAI 义务 2025-08-02 已生效,赛道热度上升)
- **Gumroad 数字商品 9.0**(9.2→9.0,微降 0.2,竞品分流)
- **AI 订阅支付恢复 SaaS 9.0**(9.1→9.0,微降 0.1,Recurflux IH 早期数据,谨慎)

### 4.2 升档 8.5+(新进/重回 Top 10)

- 小报童 AI 数字专栏 8.8(原 #8 → **#5**,↑3)
- 微信公众号 + AI 长文 8.7(原 #12 → **#8**,↑4)
- **AI Dating Coach 8.7(新进 Top 9,↑12 🆕)**
- WhatsApp Business AI Agent Builder 8.8(维持 #6)
- Beehiiv Affiliate 8.50(8.18→8.50,排队)
- Plaud 联盟 + UGC 8.6(8.3→8.6,排队)
- Agensi.io SKILL.md 8.7(8.8→8.7,80% 抽成**[待硬证据]**)

### 4.3 降档(v2 ≥ 8.0 → v3 < 8.0,共 14 个)

按降档幅度:
- 视频号创作分成 8.7 → 7.0(↓1.7)
- 智能眼镜评测站 8.10 → 6.6(↓1.5)
- Amazon Merch 7.4 → 6.0(↓1.4)
- Etsy 7.7 → 5.5(↓2.2,已 deprecated)
- Web Monetization 7.4 → 5.5(↓1.9,已 deprecated)
- AI 模拟面试 8.x → 7.0(↓1.0+)
- Babylon BTC 6.1 → 5.9(↓0.2,降档到观察中)
- AI 翻译 SaaS 8.0 → 7.5(↓0.5,Mingogo 案例引用错)
- 返佣 CPS 跨平台 8.1 → 7.5(↓0.6,小皮妈妈案例弱)
- Newsletter 代写 8.06 → 7.3(↓0.76,数据时间错位)
- Vibe Coding 8.0 → 7.7(↓0.3,700 学员不可验证)
- LLM Gateway 7.6 → 7.0(↓0.6,5 个 OSS/官方云对手)
- AI Red Team 8.2 → 7.x(降档,案例数据单源)
- Voice AI 8.1 → 7.x(Vapi 估值挑战)

### 4.4 归档(2 个)

- `web-monetization-api.md` → `docs/opportunities/_parking-lot.md`(2026-06-05 deprecated 迁移节)
- `etsy-china-individual-payoneer-2026.md` → 同上

### 4.5 新 Top 3 排序

| # | 机会 | v3 分 | 关键变化 |
| --- | --- | --- | --- |
| 1 | Lemon Squeezy / Paddle 收款桥梁 | **10.0** | 维持(封顶,使能层) |
| 2 | EU AI Act 合规审计 SaaS | **9.0** | 9.2 → 9.0 微降(GPAI 已生效,赛道热) |
| 3 | Gumroad 数字商品 / AI 订阅恢复 SaaS | **9.0** | 9.2 → 9.0 / 9.1 → 9.0,竞品分流 |

## 5. 重复检测结果

- **80 个机会 → 71 个独立机会**(9 个被识别为强重复组合并评估;非物理删除,而是明确 lead file)
- **大部分独立**(~85%),主要协同组:
  - Cluster 1:公众号 CPS 三层(流量主 / 返佣 / 短剧)、视频号变现双轨(分成 / 推客)
  - Cluster 2:Newsletter 三平台(Substack / Beehiiv / 小报童 — 地域与支付完全不同,各自保留)、Podcast 双平台(同时分发,非互斥)、Membership 三平台(Patreon/BMAC/Ko-fi,单文件内对比)
  - Cluster 3:AI Agent 集成 5 个(AAA/Lead Gen/Consultant/RAG/Vibe Coding — 客户/交付物/工具栈不同)、Voice vs WhatsApp(完全独立)、SaaS 模式(Micro-SaaS vs One-Time,互补)
  - Cluster 4:LLM API 中转 3 个(中转 CN / 自部署 / Gateway — 合并叙述,独立条目保留)
  - Cluster 6:Skill/Agent 分发 3 渠道(agensi/agent-tools/mcp — 互不替代)、数字商品三层(Gumroad/Hotmart/LS)
  - Cluster 7:Lazada 双路径(卖家 / 联盟)、POD 三平台(AMZ/Etsy/Printify — Etsy 已 deprecated,排序重排)
  - Cluster 8:持币生息 3 个(BTC/稳定币/RWA — 本金门槛不同)、撸毛 2 个(CEX/DEX)
- **结论**:无物理合并,全部保留独立档,仅在每档案"协同"或"区别"节互相交叉引用

## 6. 多源验证 — 关键发现

- **大量"RPM/分成/订阅"声明发现为孤证或弱支撑**:
  - 视频号"千次阅读 12 元"无官方依据 → 改为"3-20 元"区间
  - Beehiiv "50% × 12 月" 已升级为分级(Launch 50%→Silver 55%→Gold 60%)
  - Beehiiv cookie 期限"30 天" 误写 → 实际 60 天
  - Substack Ghostwriter "AGW 2026 Rate Guide" URL 404、Gotham/ASJA 调查时间错位(2024-11 非 2026 Q1)
- **多处"联盟术语"被错用**:
  - Hotmart "20-80% CPS 佣金":affiliate 佣金由创作者设置,平台对 affiliate 不抽 20%(hotmart-affiliate-international §0)
  - Agensi 80% 抽成在 agensi.io/creators 公开 HTML 中未找到 → **[待硬证据]**
- **Web3 APR 数据与实际差 10-100x**:
  - Babylon BTC "4-8% APY" → 实际 0.04-0.59%(Babylon 官方 Dashboard)
  - MetaMask Earn 实际 3.8-6.8%(比原档 2-5% 略高,反而是升分)
  - Coinbase 9.76% 是 BABY token staking(非 BTC 质押)
- **2026 政策剧变(均需登记)**:
  - Etsy 关闭中国新店(2026)
  - Amazon Merch 三档版税(2026-06-01)
  - 抖音数字人合规(2026-02 明确)
  - 小红书 AI 必须标注(2026-01-19 社区公约 2.0)
  - Apple Podcasts China mainland "Not available"
- **详情引用各 cluster result.md**:
  - 视频号/小绿书/贴图 → `cluster-1-wechat/result.md` §3 + §6
  - Beehiiv/Substack/Newsletter → `cluster-2-creator-economy/result.md` §3 + §6
  - Vapi/Rezi/Plaud/Web Monetization → `cluster-4-ai-saas-api/result.md` §3 + §6
  - Smart Glasses/Praktika/EU AI Act → `cluster-5-ai-vertical-saas/result.md` §3 + §6
  - Hotmart/Agensi/ElevenLabs → `cluster-6-platform-marketplace/result.md` §3 + §6
  - AMZ 三档/Etsy/Coupang/抖音 → `cluster-7-ecommerce/result.md` §3 + §6
  - AI Dating/Babylon/AI 卖课 → `cluster-8-ai-content-web3/result.md` §3 + §6

## 7. 8 条新规则(010-017)

| 编号 | 名称 | 一句话 | 来源集群 |
| --- | --- | --- | --- |
| 010 | 平台政策时效性验证 | 政策类声明 ≤ 6 个月时效 + 1 官方 + 1 独立交叉源;剧变立即复核 | 2/7/5/1 |
| 011 | 平台/支付方生态依赖验证 | `depends_on` 显式化 + 30 天复查上游存活 + 失效自动降分 | 4 |
| 012 | OSS / 平台月检机制 | 每月 1 号对 active 档案做"上游存活检查";强对手出现自动降分 | 4/5/7 |
| 013 | 案例引用准确性验证 | 数字案例必查三要素(URL/日期/主体);二手汇总降级;YouTube 频道直接查 | 4/5/3 |
| 014 | 二手汇总源标记规则 | 二手源加 `[二手汇总]` 前缀;仅二手源不可作唯一证据,降证据强度 1-2 分 | 2/3/4/6 |
| 015 | Web3 / 链上 APR 实时数据 | APR/APY 以协议官方 Dashboard 实时数据为准;周复检;APR vs APY 必须区分 | 8 |
| 016 | 灰度签字流程与 NSFW 红线 | gray/NSFW 启动前 4 项签字清单;Chub/Patreon 国内身份禁注册;24 月窗口期 | 8/5/7 |
| 017 | 短视频/RPM 数据归属 + 海外可行性 | RPM 三级标签(官方/范围/孤证);海外"开通"≠"收钱";5 个粉丝门槛区分 | 1 |

> 详细踩坑记录:`docs/rules/010-017.md` 每节"踩坑记录"段;汇总报告:`subagent_tasks/apply-rules/result.md`。

## 8. 风险警示(老板必须看)

### 8.1 触 008 红线 / 灰度签字

#### 8.1.1 4 个排队 gray(启动前需老板逐项签字)

| 机会 | 当前分 | 灰度类型 | 关键风险 | 来源 |
| --- | --- | --- | --- | --- |
| `ai-character-card-multi-platform-2026` | 8.0 | **NSFW 灰度** | Chub/Patreon 国内身份禁注册;24 月窗口期 | cluster-8 §6 + rule 016 |
| `ai-course-cn-micro-tutor` | 7.6 | 政策套利 | 李一舟作废,仅剩粥左罗 2023 弱支撑;持证溢价不稳定 | cluster-8 §0 + rule 016 |
| `telegram-mini-apps-2026` | 8.0 | Web3 / USDT 出金 | GramBase $1B 交易量真实,USDT→OTC 中国合规登记 | cluster-6 §1 + rule 016 |
| `llm-api-reselling-cn` | 7.0 | ToS 灰度 | new-api QuantumNous 已加 "lawful and authorized" 免责声明;OpenAI 风控 | cluster-4 §1 + rule 016 |

#### 8.1.2 6 个观察中 gray(灰度更高,先看)

- `xiaohongshu-ai-matrix`(gray,2026-01-19 社区公约 2.0)
- `douyin-ai-video-broadcast`(gray,2026-02 数字人合规)
- `xianyu-ai-listing`(gray,平台对"无货源"持续打击)
- `chatgpt-plus-pooling`(ToS 严重,yingtu.ai 6 月 38% 封禁率)
- `babylon-btc-staking`(应放弃,APR 0.04-0.59%)
- `hyperliquid-hype-s2-airdrop`(S2 仍属"预期",无官方公告)

### 8.2 已废弃(已 deprecated,移 _parking-lot)

- **Etsy CN 新店封店** — 2026 现状"中国个人 + Payoneer 开店"完全不可行
- **Web Monetization 支付方已死** — Coil 2025 关闭,只剩 Brave 浏览器内置;作为独立业务不可行

### 8.3 数据失实(老板要警惕"听上去很美"的数字)

| 声明 | 实际 | 差距 | 机会 |
| --- | --- | --- | --- |
| Babylon BTC "4-8% APY" | 0.04-0.59% | **100x** | babylon-btc-staking(已 5.9,降档到观察中) |
| The Smart Glasses Guy "125K subs" | 4.68K | **25x** | ai-smart-glasses-review-site-2026 |
| Praktika "$2M/月" | $1M/月 | 2x | ai-mock-interview-language-tutor-2026 |
| 李一舟 1.75 亿"案例 | 2024-02 被罚 5000 万 + 课程下架 | 作废 | ai-course-cn-micro-tutor |
| Hotmart "Hotmart 抽 20%" | Affiliate 佣金由创作者设置,最多 80% | 术语错 | hotmart-affiliate-international-2026 |
| Mingogo "$1.2m run rate 3000 customers" | 实际是 Taia.io CEO 2021 Latka 采访 | 引用错 | ai-translation-saas-niche-2026 |
| Permito "1700 学生/$39-90 月订阅" | 实际 2,500+ applicants / 一次性 $6.9-$39 | 模型错 | ai-mock-interview-language-tutor-2026 |
| Vibe Coding "700 学员/$48,510" | 案例不可验证,Maven URL 404 | 孤证 | vibe-coding-pm-designer-course-2026 |
| 小皮妈妈"返佣 CPS 案例" | 单一社区来源 | 弱支撑 | wechat-fanyong-cps-cross-platform |
| Beehiiv cookie "30 天" | 60 天 | 时间错 | beehiiv-affiliate-2026 |

> 完整数据失实清单见 `subagent_tasks/apply-archives/result.md` §2 + §4。

## 9. 行动建议(老板)

1. **点头 v3.0 新 Top 3** — Lemon Squeezy 10.0(使能层,先跑通) + EU AI Act 9.0 / Gumroad 9.0 / AI 订阅恢复 9.0 三选一做主;详见 `docs/ACTION-PLAN.md` 一句话总结。
2. **签字 4 个 gray 排队 + 6 个 gray 观察中项目** — 见 §8.1 表格;逐项回"做"/"先别做"。
3. **停止推荐 Etsy / Web Monetization** — 已 deprecated,推新用户是误导。
4. **启动 AI Dating Coach 黑马** — v2 #21 → v3 #9,4 个独立 $10K+/月 案例,Rizz $15M+ 营收;Gray 风险相对低(非 NSFW,主市场海外)。
5. **7 天后做 v3.0 体检(用 012 月检机制)** — 重点检查 Babylon/AMZ/智能眼镜/AI 卖课 4 个已降档项目是否需要进一步修正;Babylon 可考虑直接放弃。

## 10. 时间线

| Date | 事件 |
| --- | --- |
| 2026-06-04 | v2.0 评分标准建立(`docs/rules/002` v2.0) |
| 2026-06-05 | **8 集群验证 + v3.0 报告**(5,228 行报告 / 75 档案 / 7 body 重写 / 2 deprecated / 8 新规则) |
| 2026-06-06 | 老板回执 Top 3 + 灰度签字清单 |
| 2026-06-12 | v3.0 签字回执截止(给老板 7 天) |
| 2026-06-19 | v3.0 体检(用 012 月检机制,首批验证 Top 3 + AI Dating) |
| 2026-07-05 | 下一次全验证(2-3 集群,滚动) |

## 11. 附:所有交付物清单

### 11.1 验证报告(8 份)

- `subagent_tasks/cluster-1-wechat/result.md`(475 行)
- `subagent_tasks/cluster-2-creator-economy/result.md`(491 行)
- `subagent_tasks/cluster-3-ai-agent-freelance/result.md`(664 行)
- `subagent_tasks/cluster-4-ai-saas-api/result.md`(757 行)
- `subagent_tasks/cluster-5-ai-vertical-saas/result.md`(698 行)
- `subagent_tasks/cluster-6-platform-marketplace/result.md`(496 行)
- `subagent_tasks/cluster-7-ecommerce/result.md`(897 行)
- `subagent_tasks/cluster-8-ai-content-web3/result.md`(750 行)
- **合计 5,228 行**

### 11.2 应用报告(4 份)

- `subagent_tasks/apply-archives/result.md`(档案落档报告)
- `subagent_tasks/apply-rules/result.md`(规则落档报告)
- `subagent_tasks/update-indexes/result.md`(索引更新报告)
- `subagent_tasks/update-actionplan/result.md`(ACTION-PLAN 更新报告)

### 11.3 新增/更新文档

- `docs/VERIFICATION-REPORT-v3.0.md`(本文件)
- `docs/ACTION-PLAN.md`(v2.0 → v3.0,323 行,+99 行)
- `docs/opportunities/README.md`(v3.0 索引,243 行,+96 行)
- `docs/VERIFICATION-PLAN.md`(Top 10 重排,235 行,+76 行)
- `docs/rules/010-平台政策时效性验证.md`(新)
- `docs/rules/011-平台与支付方生态依赖验证.md`(新)
- `docs/rules/012-OSS与平台月检机制.md`(新)
- `docs/rules/013-案例引用准确性验证.md`(新)
- `docs/rules/014-二手汇总源标记规则.md`(新)
- `docs/rules/015-Web3与链上APR实时数据.md`(新)
- `docs/rules/016-灰度签字流程与NSFW红线.md`(新)
- `docs/rules/017-短视频RPM数据归属与海外可行性.md`(新)
- `docs/rules/README.md`(索引更新)

### 11.4 档案修改(75 个)

- **高优先 body 改动**:7 个(wechat-shipinhao / web-monetization-api / ai-smart-glasses / etsy-china / babylon-btc / ai-mock-interview / ai-course-cn)
- **deprecated 迁移**:2 个(web-monetization-api / etsy-china-individual-payoneer-2026)
- **纯 frontmatter 改动**:66 个(score + last_updated)
- **未 commit**(主 agent 没授权)

## 12. 变更日志

- 2026-06-05:初始建立(8 集群验证综合)
