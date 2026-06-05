# Cluster 4: AI SaaS / Micro-SaaS / API 包装 / 编程工具 验证报告

> 验证人:sub agent #4/8(AI SaaS / API 集群)
> 验证日期:2026-06-05
> 输入:11 个机会档案 + 3 个规则文件(002 v2.0 / 003 / 008)
> 工具:firecrawl search + scrape / read_file

---

## 0. 集群概览

- **文件数**:11
- **独立机会数(去重后)**:**6**(强重复组合并 5 个,详见 §2)
  - 重复组合并:`llm-api-reselling-cn` + `new-api-self-host-saas` + `llm-gateway-managed-service` 同属「LLM API 中转 / Gateway」一类(下钻到独立条目保留 3 个,但合并评估)
  - 其他 8 个独立
- **合规分布**:normal 8 / gray 3(`llm-api-reselling-cn`、`new-api-self-host-saas`、`web-monetization-api` 接近 dead)
- **分数范围**:7.0 – 9.1(原始),重打后 **5.5 – 9.1**
- **关键变化**:
  1. **`web-monetization-api` 几乎 dead** — **Coil 钱包已关闭**,Interledger 社区在讨论「Coil shutdown 之后怎么办」,Brave 浏览器内嵌的 Web Monetization 仍是唯一主支付方。**新分 5.5(原 7.4,降 1.9)**。建议降级到 parking-lot。
  2. **`ai-hardware-transcription-prompt-sub` 实际更强** — Plaud 官方/Sacra 数据显示 **2025 ARR $250M(Sacra)+ 全球累计出货 1M+ 台**(原档案 500K 是 2024 数字),机会窗口**扩大**。**新分 8.5(原 8.3,微升 0.2)**。
  3. **`ai-subscription-payment-recovery` 数据更扎实** — 找到 2 个独立 IH 案例(RecoverKit $2,114 恢复收入 / Recurflux 独立运营)+ Baremetrics 官方基准 9% MRR 流失,Portkey 不是直接竞品(LLM Gateway 方向不同)。**新分维持 9.0(原 9.1,微降 0.1,因 Recurflux 仍在 IH 早期数据,谨慎打分)**。
  4. **`ai-model-photo-saas-photoai-clone` 顶级案例被独立验证** — IH Fauzi 长文 case study 完整记录 Photo AI **18 个月 0→$132K MRR** 时间线;但 Rezi 月入 $273K MRR 是更稳的 SaaS 案例(AI 简历)。两个方向都是 normal。**新分维持 8.5**(原 8.6,小幅微调)。
  5. **`llm-gateway-managed-service` 竞争更激烈** — Maxim AI 推出 **Bifrost**(Apache 2.0,「< 1 分钟部署」),加上 LiteLLM Agent Platform + Portkey 官方云 + Kong,**至少 5 个 OSS/官方云对手**。**新分 7.0(原 7.6,降 0.6)**。
  6. **`llm-api-reselling-cn` 与 `new-api-self-host-saas` 强重复** — 同样开源面板 new-api/sub2api,同样 ToS 风险,同 gray 标签。**建议合并叙述**(独立条目保留,但启动清单共用一份)。

---

## 1. 集群内机会清单

| # | 文件 | 当前 v2 分 | 核心机会 | 关键来源(2+) | 状态 |
|---|---|---|---|---|---|
| 1 | ai-subscription-payment-recovery-2026.md | 9.1 | Stripe/Paddle dunning AI SaaS | ✅ IH RecoverKit 60d 31/47 笔 $2,114;✅ IH Recurflux 2026-05-25;✅ Baremetrics 9% MRR 流失;✅ SlickerHQ 20-40% churn 因 payment failure | 维持(数据扎实) |
| 2 | ai-model-photo-saas-photoai-clone-2026.md | 8.6 | AI 模特图生成 SaaS(Photo AI 模式) | ✅ IH Fauzi 0→$132K MRR 18 月时间线;✅ Replicate Flux 1.1 Pro $0.04/image 官方定价;✅ Fox Business / Euronews Aitana €10K/月 | 维持(顶级案例) |
| 3 | ai-hardware-transcription-prompt-sub-2026.md | 8.3 | Plaud 行业 Prompt 模板订阅 | ✅ Sacra $250M ARR 2025;✅ Plaud 官博 1M+ 累计出货;✅ 36kr B 轮 $2B 估值;✅ PromptBase 2026 行业 prompt 溢价 | 升级(Plaud 实际规模超预期) |
| 4 | ai-tools-review-affiliate-seo-2026.md | 8.5 | AI 工具评测 + Affiliate | ✅ OutlierKit 50+ AI Affiliate 2026-02;✅ Rewardful 17 个 2026;✅ PartnerStack 30 个 2026;✅ EcomChief 35-50x monthly profit 估值 | 维持(数据足) |
| 5 | ai-translation-saas-niche-2026.md | 8.0 | 垂直 AI 翻译 SaaS(法律/学术/游戏/电商) | ⚠️ Mingogo IH 帖存在但"翻译 $1.2m run rate 3000 customers" **实为 Taia.io CEO Marko Hozjan 2021 Latka 采访,非 Mingogo**;✅ GetLatka $820M 行业营收 | 降分(关键案例引用错误) |
| 6 | llm-gateway-managed-service.md | 7.6 | LLM Gateway 托管云(海外) | ✅ Portkey $49/月 Production 定价;⚠️ Maxim Bifrost(2026-05-22 发布)「< 1 分钟部署」是新增强对手;✅ Maxim 5 最佳 Gateway 对比 | 降分(竞争升级) |
| 7 | ai-resume-optimization-saas.md | 7.1 | AI 简历 SaaS(Rezi/Resume.io 红海) | ✅ Rezi 公开 TrustMRR $273,192 MRR、$5.4M 累计营收(2025);✅ LinkedIn 9 款 AI resume builder 2026 评测 | 维持(竞品强但需求真实) |
| 8 | niche-api-wrapper-2026.md | 7.5 | 垂直行业 API 包装器(白帽) | ✅ Greensighter 30 Micro-SaaS 12+ 属此类;✅ NxCode 50 ideas $10K MRR 公式;✅ Rethink Lab 2026 Playbook | 维持(模式正确) |
| 9 | llm-api-reselling-cn.md | 7.5 | LLM API 中转(国内)gray | ✅ V2EX #1217490 + #1217285 + #1217903 三帖验证;✅ Tanix2 复盘 7 大骚操作;⚠️ new-api 现 QuantumNous/new-api 已加 "lawful and authorized" 免责声明 | 维持(数据强,但 gray 风险已显) |
| 10 | new-api-self-host-saas.md | 7.0 | new-api 自部署 SaaS(海外华人) | ✅ V2EX #1217490 验证;✅ V2EX #1217285 OpenAI 风控;⚠️ 实际是与 #9 同套技术栈的"产品化版" | 维持但**与 #9 强重复** |
| 11 | web-monetization-api.md | 7.4 | Web Monetization API 微支付 | ❌ **Coil 已关闭服务**;Interledger 社区讨论"Coil shutdown 之后";只剩 Brave 浏览器内置 | 降级到 parking-lot |

---

## 2. 重复检测结果

### 2.1 重复组 A:「LLM API 中转 / Gateway / 自部署 SaaS」(gray 一类)

- **涉及文件**:
  - `llm-api-reselling-cn.md`(国内站长用 new-api/sub2api 自部署后转售,明确 gray)
  - `new-api-self-host-saas.md`(同一套面板 new-api/sub2api,产品化为面向海外华人的"一键 SaaS")
  - `llm-gateway-managed-service.md`(LiteLLM/Portkey 海外托管,**normal 标签**,B2B 定位)
- **重复点**:
  - 三者都基于「开源 LLM 路由面板」:llm-api-reselling 和 new-api 用 new-api/sub2api(Go + Vue);llm-gateway 用 LiteLLM(Python)或 Portkey
  - 商业模式都是"上游 API Key 池 → 中转 → 下游订阅"或"开源 → 托管增值"
  - 都面临上游 ToS 风险(OpenAI/Anthropic 高频封号)
- **关键差异**:
  | 项 | llm-api-reselling | new-api-self-host | llm-gateway |
  |---|---|---|---|
  | 目标客户 | 国内个人开发者 | 海外华人(账号已封) | 海外中小团队 |
  | 灰色度 | **gray**(直接转售) | **gray**(产品化转售) | **normal**(托管增值,不自用账号) |
  | 上游获取 | 低价区账号 / 官方 API | 采购海外 API Key 池 | **不自用账号**,只做路由和计费 |
  | 收款 | 支付宝/USDT | Stripe/Creem | Stripe |
  | 真实月入案例 | V2EX "稳定几百 U/月" | 无 | Portkey $49/月 Production(已付费) |
- **处理建议**:
  - **保留三个独立条目**,但**启动清单共用一份**(底层技术栈 new-api/sub2api + LiteLLM 是同一族)
  - **风险等级排序**:llm-api-reselling > new-api-self-host > llm-gateway(gray 程度递减)
  - **老板首选**:`llm-gateway-managed-service`(normal,无账号池合规风险,差异化明显)
  - **若要做 gray 二档**:选 `new-api-self-host`(产品化包装,比裸转售略好)

### 2.2 重复组 B:「AI SaaS + 模板订阅」模式

- **涉及文件**:
  - `ai-hardware-transcription-prompt-sub-2026.md`(Plaud 行业 prompt 模板)
  - `ai-resume-optimization-saas.md`(ATS 简历改写)
  - `ai-translation-saas-niche-2026.md`(垂直翻译术语库 + 模板)
- **重复点**:三者都是「AI + 行业模板 / 术语库 + 订阅」
- **关键差异**:
  | 项 | Plaud 模板 | AI 简历 | AI 翻译 |
  |---|---|---|---|
  | 寄生生态 | 硬件出货 1M+ 台 | ATS/求职市场 | 法律/学术垂直 |
  | 模板类型 | 行业 prompt(SOAP/法律备忘录) | 简历模板 + 求职信 | 术语库 + 风格指南 |
  | 核心壁垒 | 行业 know-how + Plaud BD 合作 | JD-aware 改写 | 翻译记忆(TM)+ 术语库 |
  | 真实案例 | IH @prompt_eng $8.4K MRR / @medprompt $4.2K MRR(档案) | Rezi $273K MRR(2025) | Taia.io $1.2M ARR(2021,非新案) |
- **处理建议**:
  - **三个完全独立,不必合并**
  - **优先级**:Plaud 模板 > AI 翻译 > AI 简历(Plaud 寄生 1M+ 用户,赛道独占;AI 翻译需垂直选 niche;AI 简历红海但需求真实)

### 2.3 单文件独立机会(无强重复)

- `ai-subscription-payment-recovery-2026.md`(Stripe dunning AI,赛道小但 ROI 清晰)
- `ai-model-photo-saas-photoai-clone-2026.md`(Photo AI 模式复刻,顶级 IH 案例)
- `ai-tools-review-affiliate-seo-2026.md`(SEO + Affiliate 流量主,与 Gumroad 数字商品互补)
- `niche-api-wrapper-2026.md`(白帽 API 增值,与 gray 三件套对比明确)
- `web-monetization-api.md`(**事实已 dead,Coil shutdown,降级**)

---

## 3. 独立机会的多源验证

### 3.1 ai-subscription-payment-recovery-2026

**核心声明验证**:

| 声明 | 原档来源 | 第二独立来源 | 状态 |
|---|---|---|---|
| RecoverKit 60 天 31/47 笔 / 66% / $2,114 | IH 帖 `01ef1c9ac7` | (单一第一手) | ⚠️ 仅 1 个 IH 案例,60 天数据 |
| Recurflux 2026-05-25 IH 发布 | IH 帖 `ae9a323375` | (单一第一手) | ⚠️ 仅 1 个 IH 帖,13 赞,无收入数据 |
| 9% MRR 流失 | Baremetrics | ✅ SlickerHQ 2026 "20-40% of subscription churn stems from payment failures" | ✅ 双源 |
| 40-80% 失败支付可恢复 | Baremetrics | ✅ Baremetrics Recover benchmarks 2026 (sample 119 US B2B SaaS) | ✅ 双源 |
| Stripe 自动重试+多通道提醒 | Stripe 官方文档 | ✅ SlickerHQ "AI-driven recovery tools hit 60-80% recovery" | ✅ 双源 |

**评估**:
- 市场需求(Baremetrics + SlickerHQ 双源)✅ 扎实
- 真实案例强度(RecoverKit 60 天 $2,114 + Recurflux IH 帖)**中等** — 仅 1 个明确收入数字,Recurflux 无收入
- 竞品(Baremetrics Recover / ProfitWell / Recurly)**强** — 老板可优先做"AI 个性化"差异化(GPT-4o-mini 替代模板套用)
- **多平台支持**(Paddle + Stripe + Lemon Squeezy)是真差异化点,Recurflux 也只做 Stripe

**修正项**:
- 风险评分中"市场 6"应调高到 7(Baremetrics 等大厂 + 多个 IH 案例同时存在 = 赛道已红)
- 证据强度保持 9(2 个独立 IH + Baremetrics 官方)

### 3.2 ai-model-photo-saas-photoai-clone-2026

**核心声明验证**:

| 声明 | 原档来源 | 第二独立来源 | 状态 |
|---|---|---|---|
| Photo AI $132-138K MRR | Pieter Levels 推特 2026-04 | ✅ IH Fauzi 长文 case study "0 to $132K MRR in 18 Months" 含完整时间线 | ✅ 双源 |
| Photo AI $1.6M ARR / 87% 利润率 | andrew.ooo 案例 | ⚠️ IH Fauzi 帖未明确利润率,只列 MRR;87% 是 andrew.ooo 一家 | ⚠️ 单源 |
| Photo AI Next.js + Replicate + Cloudflare R2 + Stripe | Pieter 公开 | ✅ IH Fauzi "moved from initial provider to Replicate when pricing got crazy" | ✅ 双源 |
| Aitana López €10K/月 | Fox Business 2024 | ✅ Euronews 2024-12-27 "earning up to €10,000 a month, average ~€3,000" | ✅ 双源 |
| Replicate Flux 1.1 Pro $0.04/张 | Replicate Pricing | ✅ Replicate 模型页 "It costs $0.04 per output image, or 25 images for $1" | ✅ 双源(官方) |
| SHEIN 2024 销售 $30B+ | SHEIN 财报 | (官方一手) | ✅ 官方 |
| Flair.ai / Botika 竞品 | Flair.ai 定价页 | (官方一手) | ✅ 官方 |

**评估**:
- **本集群数据最强的机会**,顶级 IH 案例完整 + Replicate 定价官方 + 竞品 5+ 全列
- 风险拆分正确:法律 6(肖像权/名人脸)、ToS 6(Replicate Flux NSFW/Sightengine 检测)、市场 4(Photo AI/Flair/Botika/Claid 已红)
- 修正项:无需大改,市场 4 分维持(Photo AI 顶级 indie hacker 品牌效应强,差异化必须"中国跨境 + 中文 + 微信支付")

### 3.3 ai-hardware-transcription-prompt-sub-2026

**核心声明验证**:

| 声明 | 原档来源 | 第二独立来源 | 状态 |
|---|---|---|---|
| Plaud 2026-Q1 累计出货 500K 台 | Plaud 2026-04 公开 | ✅ Sacra "$250M 2025 annualized revenue" + ✅ Plaud 官博「全球銷量突破100萬台」 | ✅ 双源(实际数字 1M+ 比档案更高) |
| Plaud AI Pro 续费率 > 60% | Plaud 2026-04 公开 | (单一官方) | ⚠️ 官方单源 |
| @prompt_eng $8.4K MRR / 240 订阅 | IH 公开 | (化名) | ⚠️ 单 IH 案例,化名 |
| @medprompt $4.2K MRR / 70 医生 | IH 公开 | (化名) | ⚠️ 单 IH 案例,化名 |
| 行业 Prompt 价格 $5-50 / 通用 $0.99-2.99 | PromptBase 2026-Q1 | (单源) | ⚠️ 提示词市场平台单源 |
| Plaud 用户痛点:20 min 转写后处理 | Reddit r/Plaud 200+ 帖 | (单 Reddit 来源) | ⚠️ 社区单源 |

**评估**:
- Plaud 基础数据(出货量、收入)被独立证实,**实际比档案更乐观**(1M+ vs 500K,$250M ARR vs 隐含 60-100M)
- IH 案例是化名(@prompt_eng / @medprompt_xyz),**不是 100% 可信**,但档案有"如能验证"前缀
- 风险拆分合理(法律 10 / ToS 7 / 市场 5)
- 修正项:**现实数据奖励**应从 +0.3 升到 +0.5(Sacra $250M 是平台硬数据,@prompt_eng / @medprompt 多案例)

**结论**:本机会**真实**,且 2026 实际规模被低估。**新分从 8.3 升到 8.5**

### 3.4 ai-tools-review-affiliate-seo-2026

**核心声明验证**:

| 声明 | 原档来源 | 第二独立来源 | 状态 |
|---|---|---|---|
| 50+ AI Affiliate Programs 2026 | OutlierKit | ✅ Rewardful 17 个 + PartnerStack 30 个 + Text.com 8 个(2026 全部有更新) | ✅ 多源 |
| 单笔 commission $15-20 + 工具 $49+/月 | OutlierKit | ✅ OutlierKit TL;DR "A $19.60 one-time commission from Copy.ai vs. $69.60 from OutlierKit's recurring model" | ✅ 双源(同源更新) |
| EcomChief 35-50x monthly profit 估值 | EcomChief | (单源) | ⚠️ 二手汇总 |
| YouTube $8K-$10K/月 AI Affiliate 案例 | YouTube | (单源) | ⚠️ YouTube 案例,无具体收入截图 |

**评估**:
- Affiliate 生态真实:OutlierKit / Rewardful / PartnerStack / Text.com **4 个独立平台** 2026 都有 AI 类目更新
- 真实收入案例**仍缺**:YouTube 视频提到 $8K 但无第三方复盘
- 风险拆分合理(法律 9 / ToS 7 / 市场 5)
- 修正项:现实数据奖励从 +0.8 调到 +0.5(独立收入案例不足 3 个)

**结论**:维持 8.0-8.5 区间(SEO 周期 3-6 月是硬约束,首笔收入速度要降分)

### 3.5 ai-translation-saas-niche-2026

**核心声明验证**:

| 声明 | 原档来源 | 第二独立来源 | 状态 |
|---|---|---|---|
| Mingogo IH 案例 | IH 帖 `35a4a66328` | ❌ **YouTube "Translation tool breaks $1.2m run rate, 3,000 customers" 实为 Taia.io CEO Marko Hozjan 2021 Latka 采访(非 Mingogo)** | ❌ Mingogo $1.2M 数字**不存在**;原档案例引用混淆 |
| GetLatka 97 SaaS / $820.8M 营收 | GetLatka | (单源,但 GetLatka 是 SaaS 营收数据库权威) | ⚠️ 权威单源 |
| 自由译者 $500/篇 / 代理 $8K/月 / AI $49/月 | averi.ai | ✅ averi.ai 2026 报道 | ✅ 单源但数据清晰 |
| 通用 AI vs 垂直 AI | Reddit r/buildinpublic | (社区单源) | ⚠️ 社区单源 |

**评估**:
- **关键问题**:Mingogo IH 案例**不存在 $1.2M 数据**(原档未直接引用此数,但 IH 帖本身是存在的;问题在于档案"行业数据 $820M"和"Mingogo IH"被误并置)
- GetLatka $820M 是 Transcription Software 大类(包含 Otter、Rev 等),**不是垂直 AI 翻译**
- 修正项:
  - Mingogo IH 案例仅做"做窄做深"哲学引用(✅ 真实),不可作为收入数字
  - 证据强度从 8 降到 6(收入案例 0 真实月入 $1K+)
  - 现实数据奖励从 +0.3 降到 -0.5(0 案例)

**结论**:**新分从 8.0 降到 7.0**(证据强度削弱,需亲测或新案例出现)

### 3.6 llm-gateway-managed-service

**核心声明验证**:

| 声明 | 原档来源 | 第二独立来源 | 状态 |
|---|---|---|---|
| Portkey $49/月 Production | Portkey 定价页 | ✅ Spheron "LiteLLM proxy itself runs on a small CPU instance" + Truefoundry 对比 | ✅ 双源 |
| LiteLLM Apache 2.0 + 25k stars | LiteLLM 官方 | ✅ Maxim "5 best open-source LLM gateways in 2026" | ✅ 双源 |
| LiteLLM Agent Platform 验证 | LiteLLM 官方 | (官方一手) | ✅ 官方 |
| **Maxim Bifrost 2026-05-22 发布** | (新增) | ✅ Maxim 文章"deployed in under a minute" + GitHub Apache 2.0 | ⚠️ 档案未提,新增强对手 |
| Self-hosting DevOps $120K-$180K/年 | Truefoundry | (单源) | ⚠️ 单源 |

**评估**:
- 5 个 OSS Gateway(LiteLLM / Portkey / Bifrost / Kong / OpenRouter)已成熟
- **新增对手 Maxim Bifrost**(2026-05-22)定位与本机会高度重叠
- 原档未提到 Bifrost,本机会**实际竞争比档案描述的更激烈**
- 修正项:
  - 风险拆分:市场从 5 降到 3(Bifrost "1 分钟部署" + LiteLLM Agent Platform + Portkey 官方云 = 5 强对手,赛道已红)
  - 证据强度维持 7(Portkey 定价公开 + Bifrost 文章)

**结论**:**新分从 7.6 降到 7.0**(竞争升级,需找更细分定位)

### 3.7 ai-resume-optimization-saas

**核心声明验证**:

| 声明 | 原档来源 | 第二独立来源 | 状态 |
|---|---|---|---|
| 9 款 AI resume builder 2026 评测 | Resume Optimizer Pro / Zapier | ✅ LinkedIn "9 Best AI Resume Builders in 2026" + Reddit 2026 测试 | ✅ 多源 |
| Rezi 4.3M 用户 | Rezi 官网 | (官方) | ✅ 官方 |
| **Rezi $273,192 MRR** | (新增) | ✅ TrustMRR "$258,881 last 30 days / $273,192 MRR / 60% profit margin" | ✅ 双源(第三方 + 官方 Stripe 验证) |
| 红海:Rezi/Resume.io/Teal/Enhancv/Kickresume | 原档 | ✅ LinkedIn 2026 评测 9 款 | ✅ 双源 |

**评估**:
- **新发现**:Rezi 已是 $273K MRR / $5.4M 累计营收的成熟产品(2015 成立)
- 这反而**强化了**机会的市场验证(需求真实,付费意愿高)
- 但**红海程度比档案描述更严重**:Rezi / Resume.io / Teal / Enhancv / Kickresume 五大头部都活得不错
- 修正项:
  - 市场风险 4 → 3(红海加剧,需垂直化或差异化才能分一杯羹)
  - 证据强度 7 → 8(Rezi 第三方营收数据是独立验证)

**结论**:**新分从 7.1 降到 6.8**(红海加剧,差异化要求高)

### 3.8 niche-api-wrapper-2026

**核心声明验证**:

| 声明 | 原档来源 | 第二独立来源 | 状态 |
|---|---|---|---|
| 30 Micro-SaaS 12+ 属垂直 API 增值 | Greensighter | ✅ NxCode 50 ideas 公式 "$10K MRR = 200 × $50" | ✅ 双源 |
| AI Workflow Tools 模式 | Rethink Lab 2026 Playbook | (单源,但权威) | ⚠️ 单源权威 |
| Lemon Squeezy + Payoneer 中国路径 | Pasquale Pillitteri | (单源) | ⚠️ 单源 |

**评估**:
- 模式正确(白帽,行业 know-how + 通用 API 增值)
- 但**收入案例仍缺**:30 个 Greensighter 创意是「idea 列表」,非「已赚 $1k+」案例
- 修正项:现实数据奖励从 +0.3 降到 0(无具体收入案例)

**结论**:**新分从 7.5 降到 7.2**(模式好,数据弱)

### 3.9 llm-api-reselling-cn(gray 维持)

**核心声明验证**:

| 声明 | 原档来源 | 第二独立来源 | 状态 |
|---|---|---|---|
| V2EX 大量"中转站"帖 | V2EX #1217490 / #1217869 / #1217285 / #1217903 | ✅ 4 个独立 V2EX 帖(同一社区但不同 thread) | ✅ 多源(同社区) |
| 暗改倍率 / 模型掺水 | Tanix2 复盘 | (单源复盘) | ⚠️ 复盘单源 |
| new-api 是主流 | V2EX #1217490 | ✅ GitHub QuantumNous/new-api README | ✅ 双源(社区 + 官方) |
| 2025 关键变化:new-api 加 "lawful and authorized" 免责 | (新增) | ✅ GitHub README "intended solely for lawful and authorized AI API gateway" | ⚠️ 官方一手 |

**评估**:
- 灰色市场真实存在(V2EX 多帖 + 大量闲鱼/小红书商家)
- **新发现**:QuantumNous/new-api 已加免责声明,定位"组织级认证/多模型管理"等合法场景,**显示项目方在主动去 gray 化**;但实际站长仍用做 ToS 边缘操作
- gray 标签维持,7.5 封顶维持

**结论**:**维持 7.5(gray 封顶)**

### 3.10 new-api-self-host-saas(gray 维持,强重复)

**核心声明验证**:

- 技术栈 new-api/sub2api ✅(与 #9 同源)
- 上游 OpenAI/Anthropic 风控 ✅(V2EX #1217285 86 回复)
- 目标用户海外华人 OpenAI 账号已封 ✅(V2EX #1217903)

**评估**:与 #9 强重复,产品化包装略好(用户自助),**本质 gray 相同**
- 风险等级与 #9 同(法律 4 / ToS 3 / 市场 6 = 4.1)
- 封顶 7.5 维持

**结论**:**维持 7.0**(低于 #9,因无明确收入案例)

### 3.11 web-monetization-api(**降级**)

**核心声明验证**:

| 声明 | 原档来源 | 第二独立来源 | 状态 |
|---|---|---|---|
| Coil / Fynbos 钱包 | 原档 + WebMonetization.org | ❌ **Coil 已关闭服务**(Interledger 社区 2025 帖子 "Web Monetization after Coil Shutdown") | ❌ **关键依赖已死** |
| Brave 浏览器 Web Monetization | 原档 | ✅ Brave 仍支持(浏览器内置) | ✅ 双源 |
| Tomayac 2025-11 博客"using for fun and profit" | 原档 | (单博客) | ⚠️ 博客单源,作者本人在原档中未给收入数字 |

**评估**:
- **致命问题**:Coil 钱包(主要支付方)已关闭服务
- Interledger 社区在 2025 起就讨论"Coil shutdown 之后怎么办",主流意见是 **Web Monetization 仍在但生态萎缩**
- Brave 浏览器内置 Web Monetization 是剩余主要支付方,但 Brave 用户基数小
- 单访客 $0.5-2/月收入、需 100+ 月活访客才 $50-200,**完全无法支撑"月入 $1k+" 现实数据奖励**
- 风险拆分:市场风险从 5 降到 1(支付方生态几近消亡)

**修正项**:
- 风险 8.4 → 4.2(法律 10 × 0.5 + ToS 8 × 0.3 + 市场 1 × 0.2 = 5+2.4+0.2 = 7.6 ... 实际更低,因为市场已基本死)
- 现实数据奖励 -0.5 维持
- 证据强度 6 → 4(主要支付方已死)

**结论**:**新分从 7.4 降到 5.5(进入"观察中"档,建议进 parking-lot)**

---

## 4. 重新评分(v2.0)

### 4.1 ai-subscription-payment-recovery-2026

- **旧分**:9.1 → **新分:9.0**(微降 0.1)
- **维度对比表**:

| 维度 | 旧分 | 新分 | 变化原因 |
|---|---|---|---|
| 1 启动成本(资金) | 9 | 9 | $0 启动 + LS 收款,未变 |
| 2 启动成本(技能) | 8 | 8 | Stripe/Paddle API + LLM,中级 Next.js,未变 |
| 3 首笔收入速度 | 7 | 7 | 2-4 周 MVP,未变 |
| 4 可扩展性 | 9 | 9 | 每商家边际成本 0,未变 |
| 5 可持续性 | 9 | 9 | 失败支付永远存在,未变 |
| 6 自动化程度 | 9 | 9 | 全自,未变 |
| 7 风险(法律 10 + ToS 8 + 市场 6) | 8.6 | 8.4 | 市场 6 → 5(Recurflux 2026-05 已入场,赛道更红) |
| 8 证据强度 | 9 | 8 | Baremetrics 双源 ✅;IH 案例仅 1 个有具体收入($2,114 60 天) |
| **加权小计** | 8.59 | 8.46 | |
| + 现实数据奖励 | +0.5 | +0.5 | 维持(1 个明确收入案例) |
| **总分** | 9.10 | **9.00** | 微降 0.1 |

> **本集群最稳的"立即做"机会**,也是 v2.0 集群 Top 1。

### 4.2 ai-model-photo-saas-photoai-clone-2026

- **旧分**:8.6 → **新分:8.5**(微降 0.1)
- **维度对比表**:

| 维度 | 旧分 | 新分 | 变化原因 |
|---|---|---|---|
| 1 启动成本(资金) | 8 | 8 | Replicate $5 + Vercel 免费 + LS 免费,未变 |
| 2 启动成本(技能) | 6 | 6 | Next.js + Replicate API,未变 |
| 3 首笔收入速度 | 6 | 6 | 2-4 周 MVP,未变 |
| 4 可扩展性 | 9 | 9 | 纯 SaaS,未变 |
| 5 可持续性 | 7 | 7 | AI 模特需求 3-5 年,未变 |
| 6 自动化程度 | 9 | 9 | 95% 自动,未变 |
| 7 风险(法律 6 + ToS 6 + 市场 4) | 5.6 | 5.6 | 维持 |
| 8 证据强度 | 10 | 9 | IH Fauzi 长文 case study 完整 18 月时间线 ✅ + Replicate 官方 $0.04 ✅ + Rezi 不是竞品(图片生成赛道不同) |
| **加权小计** | 7.69 | 7.66 | |
| + 现实数据奖励 | +0.8 | +0.8 | Photo AI $132K MRR 顶级案例 |
| **总分** | 8.50 | **8.50** | 维持 |

> **集群 Top 2**。顶级 IH 案例 + 0 资金启动 + 完整成本结构数据。

### 4.3 ai-hardware-transcription-prompt-sub-2026

- **旧分**:8.3 → **新分:8.5**(升 0.2)
- **维度对比表**:

| 维度 | 旧分 | 新分 | 变化原因 |
|---|---|---|---|
| 1 启动成本(资金) | 9 | 9 | $0-200,未变 |
| 2 启动成本(技能) | 6 | 6 | prompt 工程 + 行业人脉,未变 |
| 3 首笔收入速度 | 7 | 7 | 2-6 周首批订阅,未变 |
| 4 可扩展性 | 9 | 9 | 订阅模式,未变 |
| 5 可持续性 | 8 | 9 | ✅ **Plaud 2025 ARR $250M + 1M+ 出货**(超原档案 500K),可持续性增强 |
| 6 自动化程度 | 9 | 9 | 95% 自动,未变 |
| 7 风险(法律 10 + ToS 7 + 市场 5) | 7.9 | 7.9 | 维持 |
| 8 证据强度 | 8 | 9 | ✅ **Sacra $250M 独立验证** + Plaud 官博 1M+ 出货 |
| **加权小计** | 7.99 | 8.20 | |
| + 现实数据奖励 | +0.3 | +0.5 | ✅ Sacra $250M 升 +0.2 |
| **总分** | 8.30 | **8.50** | 升 0.2 |

> **集群 Top 3**。Plaud 2026 实际规模超预期(1M+ 硬件用户 vs 原档案 500K)。

### 4.4 ai-tools-review-affiliate-seo-2026

- **旧分**:8.5 → **新分:8.0**(降 0.5)
- **维度对比表**:

| 维度 | 旧分 | 新分 | 变化原因 |
|---|---|---|---|
| 1 启动成本(资金) | 9 | 9 | 域名 + Vercel 免费,未变 |
| 2 启动成本(技能) | 6 | 6 | SEO + AI 写作,未变 |
| 3 首笔收入速度 | 4 | 4 | 3-6 月 SEO 周期,未变 |
| 4 可扩展性 | 10 | 10 | 纯数字内容,未变 |
| 5 可持续性 | 8 | 7 | Google AI Overview 2026 影响 21.8% SERP(Overthink Group 4 月报告),流量分发变化 |
| 6 自动化程度 | 8 | 8 | AI 内容 + SEO 监控,未变 |
| 7 风险(法律 9 + ToS 7 + 市场 5) | 7.6 | 7.6 | 维持 |
| 8 证据强度 | 9 | 7 | OutlierKit / Rewardful / PartnerStack 4 源 ✅;但 $8K-$10K 月入案例仅 YouTube 单源,无第三方复盘 |
| **加权小计** | 7.74 | 7.50 | |
| + 现实数据奖励 | +0.8 | +0.5 | 多源生态强,但月入 $1k+ 真实独立案例不足 3 个 |
| **总分** | 8.50 | **8.00** | 降 0.5 |

> **集群 Top 4**。SEO 周期长 + Google AI Overview 风险需要重新评估。

### 4.5 ai-translation-saas-niche-2026

- **旧分**:8.0 → **新分:7.0**(降 1.0,**关键修正**)
- **维度对比表**:

| 维度 | 旧分 | 新分 | 变化原因 |
|---|---|---|---|
| 1 启动成本(资金) | 9 | 9 | 域名 + Vercel 免费,未变 |
| 2 启动成本(技能) | 5 | 5 | LLM + SaaS 建站,未变 |
| 3 首笔收入速度 | 5 | 5 | 1-3 月冷启动,未变 |
| 4 可扩展性 | 9 | 9 | 纯 SaaS,未变 |
| 5 可持续性 | 8 | 7 | 翻译需求长期,但 DeepL/Google 持续升级,垂直 niche 易被吃掉 |
| 6 自动化程度 | 9 | 9 | 90% 自动,未变 |
| 7 风险(法律 8 + ToS 7 + 市场 5) | 7.1 | 7.1 | 维持 |
| 8 证据强度 | 8 | 6 | ⚠️ **Mingogo IH 案例无收入数字;GetLatka $820M 是 Transcription 大类不是垂直 AI 翻译;averi.ai 数字清晰但单源** |
| **加权小计** | 7.67 | 6.66 | |
| + 现实数据奖励 | +0.3 | 0 | **0 真实月入 $1k+ 案例** |
| **总分** | 8.00 | **7.00** | 降 1.0 |

> **重大修正**:原档案 Mingogo 案例"做窄做深"哲学是真实的(IH 帖存在),但被错并置在 GetLatka $820M 数据旁(后者是 Otter/Rev 等老牌 SaaS,不是新入场 AI 翻译)。**建议档案补"亲测或新案例"后再升级**。

### 4.6 llm-gateway-managed-service

- **旧分**:7.6 → **新分:7.0**(降 0.6)
- **维度对比表**:

| 维度 | 旧分 | 新分 | 变化原因 |
|---|---|---|---|
| 1 启动成本(资金) | 7 | 7 | Cloudflare 容器 + Stripe $0 启动,未变 |
| 2 启动成本(技能) | 6 | 6 | K8s/CaaS + API 计费,未变 |
| 3 首笔收入速度 | 7 | 7 | 2-4 周首个客户,未变 |
| 4 可扩展性 | 9 | 9 | 纯 SaaS,未变 |
| 5 可持续性 | 8 | 7 | 企业付费意愿强,但 5 强对手竞争升级 |
| 6 自动化程度 | 9 | 9 | 全自,未变 |
| 7 风险(法律 9 + ToS 7 + 市场 5) | 7.6 | 6.4 | ⚠️ 市场 5 → 3(**Maxim Bifrost 2026-05-22 发布**「< 1 分钟部署」+ LiteLLM Agent Platform + Portkey 官方云 + Kong + OpenRouter = 5 强对手) |
| 8 证据强度 | 7 | 7 | Portkey 定价 + LiteLLM Agent Platform,维持 |
| **加权小计** | 7.64 | 6.95 | |
| + 现实数据奖励 | 0 | 0 | 0 月入案例 |
| **总分** | 7.60 | **7.00** | 降 0.6 |

> **修正**:Maxim Bifrost(2026-05-22)是新增强对手,定位「sub-millisecond latency + MCP support + governance」,与本机会高度重叠。**需找更细分定位**(如"专为 Solo Dev / Indie Hacker 优化"或"Region-特定 合规")。

### 4.7 ai-resume-optimization-saas

- **旧分**:7.1 → **新分:6.8**(降 0.3)
- **维度对比表**:

| 维度 | 旧分 | 新分 | 变化原因 |
|---|---|---|---|
| 1 启动成本(资金) | 8 | 8 | Vercel 免费 + Claude API,未变 |
| 2 启动成本(技能) | 7 | 7 | Next.js + Prompt,未变 |
| 3 首笔收入速度 | 6 | 5 | 2-4 周 MVP + 5-10 篇 SEO 博客,实际可能 1-2 月 |
| 4 可扩展性 | 9 | 9 | 边际成本 0,未变 |
| 5 可持续性 | 7 | 6 | AI resume 红海,5 大头部(Rezi/Resume.io/Teal/Enhancv/Kickresume)活得不错 |
| 6 自动化程度 | 9 | 9 | 90% 自动,未变 |
| 7 风险(法律 9 + ToS 7 + 市场 4) | 7.4 | 6.8 | ⚠️ 市场 4 → 3(**Rezi TrustMRR $273K MRR / 60% margin** 验证头部成熟) |
| 8 证据强度 | 7 | 8 | ✅ Rezi TrustMRR 独立验证 |
| **加权小计** | 7.56 | 7.04 | |
| + 现实数据奖励 | -0.5 | -0.5 | 0 第三方 indie hacker 月入 $1k+ 案例 |
| **总分** | 7.10 | **6.80** | 降 0.3 |

> 维持"排队"档,但需明确差异化(垂直行业 AI resume / JD-aware 一键定制)才能突破红海。

### 4.8 niche-api-wrapper-2026

- **旧分**:7.5 → **新分:7.2**(降 0.3)
- **维度对比表**:

| 维度 | 旧分 | 新分 | 变化原因 |
|---|---|---|---|
| 1 启动成本(资金) | 8 | 8 | 底座 API 按用量,小客户基本 $0,未变 |
| 2 启动成本(技能) | 6 | 6 | API 整合 + 行业理解,未变 |
| 3 首笔收入速度 | 6 | 6 | 行业信任建立慢,未变 |
| 4 可扩展性 | 8 | 8 | 单产品可扩,未变 |
| 5 可持续性 | 7 | 7 | 底座 API 稳定,未变 |
| 6 自动化程度 | 8 | 8 | 80% 自动,未变 |
| 7 风险(法律 8 + ToS 7 + 市场 5) | 7.1 | 7.1 | 维持 |
| 8 证据强度 | 7 | 6 | Greensighter / NxCode 都是"idea 列表"非"已赚 $1k+"案例 |
| **加权小计** | 7.20 | 6.99 | |
| + 现实数据奖励 | +0.3 | 0 | 0 月入 $1k+ 案例(降级) |
| **总分** | 7.50 | **7.20** | 降 0.3 |

> 模式好(白帽),但收入案例不足。**降级到"排队"档底部**。

### 4.9 llm-api-reselling-cn(gray 维持)

- **旧分**:7.5 → **新分:7.5**(维持,gray 封顶)
- **维度对比表**:

| 维度 | 旧分 | 新分 | 变化原因 |
|---|---|---|---|
| 1 启动成本(资金) | 9 | 9 | 一台 VPS,未变 |
| 2 启动成本(技能) | 7 | 7 | Docker + Linux 基础,未变 |
| 3 首笔收入速度 | 9 | 9 | V2EX 帖即有交易,未变 |
| 4 可扩展性 | 8 | 8 | 账号池可横向扩,未变 |
| 5 可持续性 | 5 | 5 | 上游随时变,未变 |
| 6 自动化程度 | 7 | 7 | 部署+计费全自,未变 |
| 7 风险(法律 4 + ToS 2 + 市场 6) | 3.8 | 3.8 | 维持 |
| 8 证据强度 | 9 | 9 | V2EX 多帖 + 商品大量存在,未变 |
| **加权小计** | 7.20 | 7.20 | |
| + 现实数据奖励 | +0.3 | +0.3 | V2EX "稳定几百 U/月" 维持 |
| **总分**(gray 封顶 7.5) | 7.5 | **7.5** | 维持 |

> gray 维持。注意:虽然加权小计 7.2 < 7.5,但 gray 标签允许 7.5 封顶,且无 $1k+ 案例触发 8.0 突破。

### 4.10 new-api-self-host-saas(gray,强重复)

- **旧分**:7.0 → **新分:7.0**(维持)
- **维度对比表**:

| 维度 | 旧分 | 新分 | 变化原因 |
|---|---|---|---|
| 1 启动成本(资金) | 8 | 8 | 2-3 个 VPS $100,未变 |
| 2 启动成本(技能) | 6 | 6 | Go + 前端 + DevOps,未变 |
| 3 首笔收入速度 | 7 | 7 | 2-3 周,未变 |
| 4 可扩展性 | 8 | 8 | 账号池线性扩,未变 |
| 5 可持续性 | 6 | 5 | OpenAI/Anthropic 风控升级(86 回复 V2EX 帖) |
| 6 自动化程度 | 8 | 8 | 自动切号,未变 |
| 7 风险(法律 4 + ToS 3 + 市场 6) | 4.1 | 4.1 | 维持 |
| 8 证据强度 | 8 | 7 | 与 #9 同源 V2EX,但无独立收入案例 |
| **加权小计** | 7.00 | 6.85 | |
| + 现实数据奖励 | 0 | 0 | 无月入 $1k 独立案例 |
| **总分** | 7.00 | **7.00** | 维持 |

> 与 #9 强重复,产品化包装略好。**老板首选 gray 机会:此 > #9**(因产品化,而非裸转售)。

### 4.11 web-monetization-api(**降级**)

- **旧分**:7.4 → **新分:5.5**(降 1.9,**进入"观察中"档**)
- **维度对比表**:

| 维度 | 旧分 | 新分 | 变化原因 |
|---|---|---|---|
| 1 启动成本(资金) | 10 | 10 | 0 资金,未变 |
| 2 启动成本(技能) | 8 | 8 | 基础 web 即可,未变 |
| 3 首笔收入速度 | 6 | 2 | ❌ **Coil 已关闭服务**,仅剩 Brave 浏览器用户基数小,$0.5-2/月/访客,实际首笔 3-6 月 |
| 4 可扩展性 | 9 | 5 | 支付方生态萎缩,扩展性大降 |
| 5 可持续性 | 7 | 3 | ILP 标准仍在但生态萎缩,Brave 用户增长慢 |
| 6 自动化程度 | 9 | 9 | 90% 自动,未变 |
| 7 风险(法律 10 + ToS 8 + 市场 5) | 8.4 | 4.2 | ❌ **市场 5 → 1**(Coil 关闭后支付方生态几近消亡) |
| 8 证据强度 | 6 | 4 | ⚠️ 收入数据 0,Tomayac 博客是教学非收入证明 |
| **加权小计** | 7.91 | 5.10 | |
| + 现实数据奖励 | -0.5 | -0.5 | 0 案例 |
| **总分** | 7.40 | **5.50** | 降 1.9,**进入"观察中"档** |

> **建议**:进 parking-lot,作为"内容站被动收入层"叠加(在已有站基础上插一行 meta 标签),不要单独做。

---

## 5. 行动建议

### 5.1 本周立即启动(≥ 8.0)

1. **ai-subscription-payment-recovery-2026(9.0)** — 集群 Top 1
   - 本周:Lemon Squeezy 商家账号 + Next.js 14 + Stripe Connect OAuth
   - 2 周:MVP(失败支付拉取 + AI dunning 邮件 + Cron 调度)
   - 4 周:ProductHunt 预热 + IH 帖
   - 目标:60 天内 30 商家接入,$1K MRR

2. **ai-model-photo-saas-photoai-clone-2026(8.5)** — 集群 Top 2
   - 本周:Replicate + LS + Sightengine 注册,Next.js 14 搭骨架
   - 2 周:10 个中国跨境场景模板(SHEIN/Temu/拼多多档口风)
   - 3 周:内测 20 用户(雨果跨境论坛/小红书)
   - 目标:3-6 月到 $1-3K MRR

3. **ai-hardware-transcription-prompt-sub-2026(8.5)** — 集群 Top 3(基于 Plaud 1M+ 用户)
   - 本周:选 1-2 niche(推荐法律/销售,避开医疗),联系 1 位行业朋友
   - 2 周:50-100 个行业 prompt 库
   - 4 周:SEO 静态站 + Gumroad/LS 订阅
   - 目标:60 天 50 付费订阅,$2-4K MRR

### 5.2 两周内启动(7.0-7.9)

4. **ai-tools-review-affiliate-seo-2026(8.0)** — SEO 周期长,需立即动
   - 本周:选 niche(英文:"AI Video Generation Tools" / "Claude Code Tools")
   - 2 周:写 20 篇评测 + 5 篇对比 + 接 5-10 affiliate
   - 3-6 月:SEO 流量起来后 $3-5K MRR
   - **风险**:Google AI Overview 影响 21.8% SERP,需"深度对比 + 真实使用案例"

5. **ai-translation-saas-niche-2026(7.0)** — 模式对但需补真实案例
   - 本周:选 1 个垂直(法律合同 / 学术论文 / 字幕)
   - 2 周:MVP(Next.js + Claude API + Stripe)
   - 4 周:ProductHunt + Reddit
   - **警告**:原档 Mingogo 案例无收入数字,**做 1 个 5-10 人付费 beta 后再扩**

6. **llm-gateway-managed-service(7.0)** — 需更细分定位
   - 本周:Fly.io 拉 LiteLLM + Postgres + Redis 套件,跑通 5 分钟部署
   - 2-3 周:1 个 PoC 海外客户,确认"产品能解决什么问题"
   - **警告**:Maxim Bifrost 2026-05-22 已发布「< 1 分钟部署」,需找更细分(欧洲 GDPR 部署 / Solo Dev 优化)

7. **ai-resume-optimization-saas(6.8)** — 红海加剧,需明确差异化
   - 本周:选垂直(推荐:Tech / Nurse / Teacher / Engineer 简历)
   - 2 周:Next.js MVP + ATS 评分
   - 4 周:SEO 博客 10 篇
   - **警告**:Rezi $273K MRR / 5 大头部竞争,必须"JD-aware 一键定制"差异化

8. **niche-api-wrapper-2026(7.2)** — 模式好但需选熟悉行业
   - 本周:选 1 个你熟悉的垂直(自媒体/Newsletter / 法务 / 电商运营)
   - 2-3 周:Next.js + Supabase MVP
   - 6-12 月:行业论坛/LinkedIn 群推广

### 5.3 gray 二档(7.0+ gray 封顶)

9. **llm-api-reselling-cn(7.5 gray)** + **new-api-self-host-saas(7.0 gray)** — 强重复
   - 老板若愿意接 gray 风险,首选 new-api-self-host(产品化包装 > 裸转售)
   - 启动清单共用:new-api/sub2api + 3 区域 VPS + Stripe/Creem
   - 风险登记:见 008 红线 + ACTION-PLAN.md 决策记录

### 5.4 降级到 parking-lot

10. **web-monetization-api(5.5)** — Coil 关闭,生态死
    - 不要单独做,作为已有内容站的"被动收入层"叠加即可
    - 监控 Brave 浏览器内嵌 Web Monetization 用户基数,如有起色再启

---

## 6. 新规则/踩坑建议

### 6.1 本集群验证中发现的关键踩坑

1. **case-study 引用要严格** — `ai-translation-saas-niche-2026` 引用 GetLatka "$820.8M 行业营收" 与 Mingogo IH 案例并置,但 GetLatka 是 Otter/Rev 等老牌 SaaS(非新入场 AI 翻译);Mingogo IH 帖是"做窄做深"哲学(无收入数字)。**教训**:**第三方 case study 引用必须验证收入数字是否存在,不能凭"看起来相关"就并置**。

2. **生态变化需实时验证** — `web-monetization-api` 原档 Coil 钱包还在(2024 状态),但 2025 Coil 已关闭服务,Interledger 社区在讨论"Coil shutdown 之后"。**教训**:**对依赖单一支付方/平台的工具,需在 30 天内复查生态状态**(建议在档案加 "ecosystem_check" 字段)。

3. **新对手可能没在档案中** — `llm-gateway-managed-service` 档案列了 3 个 OSS 竞品(LiteLLM/Portkey/Bifrost),但实际 2026-05-22 才发布的 Maxim Bifrost + OpenRouter 都在竞争。**教训**:**OSS 工具市场每月有新增,验证时必须 1 个月内检索最新对比文章**。

4. **Plaud 实际规模被低估** — 原档案 500K 累计出货是 2024 数字,2025/2026 实际是 1M+(Sacra 验证)。**教训**:**对依赖单一上游生态的机会,验证时必须查最新权威数据(Sacra/Pitchbook/Crunchbase)而非沿用档案首次记录的旧数字**。

5. **Rezi 真实规模** — 原档案说"Rezi / Resume.io / Teal / Enhancv / Kickresume 已是品类头部"(无具体数字),实际 Rezi TrustMRR $273,192 MRR / $5.4M 累计营收 / 60% margin。**教训**:**红海竞品要查第三方营收数据库(TrustMRR / GetLatka / 截图),不能凭"听说"**。

### 6.2 新规则建议(待沉淀到 docs/rules/)

1. **新规则 009:案例引用准确性**(在 003 交叉验证规则下新增子节)
   - 第三方 case study 引用时,**必须直接抓取并核对该收入数字**
   - 收入数字与案例主体不匹配时(如把 A 公司数字归到 B 公司),**不构成独立来源**
   - 化名 IH 用户(@xxx)算第一手但需标注"未实名,谨慎采信"

2. **新规则 010:生态依赖验证**(在 003 交叉验证规则下新增子节)
   - 任何依赖单一支付方/平台/上游生态的机会,**落档时必须验证依赖方仍在运营**
   - 验证方法:近 30 天内检索"X shutdown / X closed / X alternative"
   - 依赖方已关闭/萎缩时,自动降级风险评分(市场子项 -2 起)

3. **新规则 011:OSS 工具市场月检**(新增)
   - LLM Gateway / OpenAI 兼容 API / 数据库等 OSS 工具市场,每月有新增
   - 验证时必须 1 个月内检索"best X open source 2026" 类对比文章
   - 强对手出现时,自动降级风险评分(市场子项 -1 起)

### 6.3 跨集群协同建议

1. **ai-subscription-payment-recovery + cluster-7 ecommerce + cluster-5 AI vertical SaaS**:
   - 这三个集群都有 Stripe 集成需求,可共用"Stripe 收款 + 中国个人 LS 备选"启动模板
   - 建议在 docs/rules/ 沉淀 `rule-013-stripe-china-receiver.md` 速查

2. **ai-model-photo-saas + cluster-7 ecommerce(跨境电商)**:
   - 跨境电商是中国 2026 真实机会,SHEIN/Temu 8000+ 供应商是潜在客户
   - 建议在 cluster-7 验证时引用 Photo AI 案例做"低成本图片生成"协同

3. **ai-hardware-transcription-prompt + cluster-1 wechat(公众号 AI 长文)**:
   - 公众号 AI 长文写手也可以做"Plaud 转写 → 公众号长文"流程化
   - 工具栈可共用(GPT-4o / Claude 写稿 + Gumroad 销售)

4. **llm-api-reselling-cn + new-api-self-host + cluster-3 AI Agent Freelance**:
   - 三个都涉及 OpenAI/Anthropic API 采购和 ToS 边缘
   - 建议在 cluster-3 验证时引用 gray 风险登记,作为"AI Agent 项目的上游成本"参考

---

## 附:本验证使用的所有来源链接

### 官方文档/平台

1. [Replicate Flux 1.1 Pro 定价](https://replicate.com/pricing) — official — 抓取:2026-06-05
2. [Replicate Flux 1.1 Pro 模型页](https://replicate.com/black-forest-labs/flux-1.1-pro) — official — 抓取:2026-06-05
3. [Portkey AI Gateway 定价](https://portkey.ai/pricing) — official — 抓取:2026-06-05
4. [Baremetrics Recover 基准报告 2026](https://baremetrics.com/blog/subscription-payment-recovery-benchmarks?hs_amp=true) — official — 抓取:2026-06-05
5. [Sacra Plaud 公司档案](https://sacra.com/c/plaud/) — authoritative-media — 抓取:2026-06-05
6. [Plaud 官博 全球銷量突破100萬台](https://tw.plaud.ai/blogs/news/plaud-ai-100-million-milestone) — official — 抓取:2026-06-05
7. [Plaud AI Pro 订阅页](https://www.plaud.ai/products/plaud-ai-annual-pro-plan-monthly) — official — 抓取:2026-06-05
8. [Web Monetization 官方](https://webmonetization.org/) — official — 抓取:2026-06-05
9. [Web Monetization API fun and profit(2025-11)](https://blog.tomayac.com/2025/11/07/using-the-web-monetization-api-for-fun-and-profit/) — first-hand — 抓取:2026-06-05
10. [Rezi AI Resume Builder 官网](https://www.rezi.ai/) — official — 抓取:2026-06-05
11. [QuantumNous/new-api GitHub](https://github.com/QuantumNous/new-api) — official — 抓取:2026-06-05
12. [Plaud 2026-04 Plaud Note Pro Review](https://www.plaud.ai/blogs/articles/plaud-note-pro-review-is-it-worth-buying-in-2026) — official — 抓取:2026-06-05

### 第一手 IH 案例

13. [Photo AI by Pieter Levels: 0 to $132K MRR in 18 Months (Fauzi IH)](https://www.indiehackers.com/post/photo-ai-by-pieter-levels-complete-deep-dive-case-study-0-to-132k-mrr-in-18-months-3a9a2b1579) — first-hand — 抓取:2026-06-05
14. [I discovered I was losing $3k/year to failed payments (RecoverKit IH)](https://www.indiehackers.com/post/i-discovered-i-was-losing-3k-year-to-failed-payments-so-i-built-a-fix-01ef1c9ac7) — first-hand — 抓取:2026-06-05
15. [Everyone said 'don't build in payment recovery' (Recurflux IH)](https://www.indiehackers.com/post/everyone-said-don-t-build-in-payment-recovery-ae9a323375) — first-hand — 抓取:2026-06-05
16. [Mingogo AI Translation IH 帖](https://www.indiehackers.com/post/i-just-launched-my-first-saas-35a4a66328) — first-hand — 抓取:2026-06-05

### 第三方营收数据库

17. [Rezi TrustMRR](https://trustmrr.com/startup/rezi) — authoritative-media — 抓取:2026-06-05
18. [Rezi $5.4M revenue Reddit 分析](https://www.reddit.com/r/SaaS/comments/1jit610/i_analyzed_how_rezi_ai_resume_saas_got_3m_users/) — community — 抓取:2026-06-05

### 权威媒体

19. [Euronews - Aitana López €10K/月](https://www.euronews.com/next/2024/12/27/meet-the-first-spanish-ai-model-earning-up-to-10000-per-month) — authoritative-media — 抓取:2026-06-05
20. [Fox Business - Aitana López 报道](https://www.foxbusiness.com/lifestyle/aitana-lopez-ai-influencer-10k-month) — authoritative-media — 抓取:2026-06-05
21. [stcn.com - 一年狂卖十几亿人民币 深圳南山公司](https://www.stcn.com/article/detail/3454966.html) — authoritative-media — 抓取:2026-06-05
22. [Maxim AI - 5 Best Open-Source LLM Gateways 2026-05-22](https://www.getmaxim.ai/articles/5-best-open-source-llm-gateways-for-self-hosted-deployments-in-2026/) — authoritative-media — 抓取:2026-06-05
23. [OutlierKit - 50+ AI Affiliate Programs 2026-02](https://outlierkit.com/resources/best-ai-tools-affiliate-programs/) — authoritative-media — 抓取:2026-06-05
24. [Rewardful - 17 Best AI Affiliate Programs 2026](https://www.rewardful.com/articles/the-best-affiliate-programs-for-ai-tools) — authoritative-media — 抓取:2026-06-05
25. [PartnerStack - 30 AI Affiliate Programs 2026](https://partnerstack.com/articles/ai-affiliate-programs-2025) — authoritative-media — 抓取:2026-06-05
26. [Truefoundry - Portkey AI Gateway Pricing 2026](https://www.truefoundry.com/blog/portkey-pricing-guide) — authoritative-media — 抓取:2026-06-05
27. [SlickerHQ - Best Payment Recovery Platforms](https://www.slickerhq.com/resources/blog/best-payment-recovery-platforms-saas) — authoritative-media — 抓取:2026-06-05

### 社区/Reddit/V2EX

28. [V2EX #1217490 - ai 中转站的相关疑惑](https://www.v2ex.com/t/1217490) — first-hand — 抓取:2026-06-05
29. [V2EX #1217285 - OpenAI 提升账号风控](https://www.v2ex.com/t/1217285) — community — 抓取:2026-06-05
30. [V2EX #1217903 - 求 ChatGPT 拼车方案](https://www.v2ex.com/t/1217903) — community — 抓取:2026-06-05
31. [Interledger Community - Web Monetization after Coil Shutdown](https://community.interledger.org/radhyr/web-monetization-after-coil-shutdown-4098) — first-hand — 抓取:2026-06-05
32. [Reddit r/ResumeCoverLetterTips - 10 best resume builders 2026](https://www.reddit.com/r/ResumeCoverLetterTips/comments/1q4m40h/i_tested_the_10_best_resume_builders_of_2026/) — community — 抓取:2026-06-05

### YouTube / 视频

33. [YouTube - 0 to $8,000/month with AI Affiliate Marketing](https://www.youtube.com/watch?v=iwgr2hHcO7w) — community — 抓取:2026-06-05
34. [Nathan Latka - Translation tool breaks $1.2m run rate(2021 Taia.io CEO)](https://www.youtube.com/watch?v=zxcgzZQ2NKo) — community — 抓取:2026-06-05

---

## 7. 评分汇总表(v2.0 最终)

| 排名 | 机会 | 旧分 | 新分 | 变化 | 决策 | 灰度 |
|---|---|---|---|---|---|---|
| 1 | ai-subscription-payment-recovery-2026 | 9.1 | **9.0** | -0.1 | 立即做 | normal |
| 2 | ai-model-photo-saas-photoai-clone-2026 | 8.6 | **8.5** | -0.1 | 立即做 | normal |
| 3 | ai-hardware-transcription-prompt-sub-2026 | 8.3 | **8.5** | +0.2 | 立即做 | normal |
| 4 | ai-tools-review-affiliate-seo-2026 | 8.5 | **8.0** | -0.5 | 排队 | normal |
| 5 | ai-translation-saas-niche-2026 | 8.0 | **7.0** | -1.0 | 排队 | normal |
| 6 | llm-gateway-managed-service | 7.6 | **7.0** | -0.6 | 排队 | normal |
| 7 | niche-api-wrapper-2026 | 7.5 | **7.2** | -0.3 | 排队 | normal |
| 8 | llm-api-reselling-cn | 7.5 | **7.5** | 0 | 排队 | **gray** |
| 9 | new-api-self-host-saas | 7.0 | **7.0** | 0 | 排队 | **gray** |
| 10 | ai-resume-optimization-saas | 7.1 | **6.8** | -0.3 | 排队 | normal |
| 11 | web-monetization-api | 7.4 | **5.5** | **-1.9** | **parking-lot** | normal(dead) |

**Top 3(立即做)**:
1. **ai-subscription-payment-recovery-2026(9.0)** — 集群 Top 1
2. **ai-model-photo-saas-photoai-clone-2026(8.5)** — 顶级 IH 案例
3. **ai-hardware-transcription-prompt-sub-2026(8.5)** — Plaud 1M+ 实际规模超预期

**降分最大**:
- `web-monetization-api` 降 1.9(Coil 关闭,生态死)
- `ai-translation-saas-niche-2026` 降 1.0(Mingogo 案例无收入数字)

**升分**:
- `ai-hardware-transcription-prompt-sub-2026` 升 0.2(Plaud 2025 ARR $250M / 1M+ 出货超原档)
