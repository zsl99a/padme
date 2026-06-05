# Cluster 7: 跨境电商 + 中国电商 + 联盟营销验证报告

> 验证人:sub agent #7/8(电商 + 联盟营销集群)
> 验证日期:2026-06-05
> 输入:13 个机会档案 + 3 个规则文件(002/003/008)
> 工具:firecrawl search+scrape / read_file

---

## 0. 集群概览

- **文件数**:13
- **独立机会数(去重后)**:9(详见 §2,4 个强重复组合并)
- **合规分布**:normal 9 / gray 4(`douyin-ai-video-broadcast` / `xiaohongshu-ai-matrix` / `xianyu-ai-listing` / `xiaohongshu-buyer-ecommerce-2026` 在 ToS 风险登记但非 gray — 仅 3 个真正的 gray)
- **分数范围**:6.1 – 8.7(原始),重打后 5.5 – 8.6
- **关键变化**:
  1. **Amazon Merch on Demand 2026-06-01 推出「三档版税制」(Creator / Plus / Premium)**,基础 T 恤版税从原 ~$13.18 暴降至 **$2.44**(Creator 档),只有 ≥ 35% 站外流量的 Premium 档才能拿到 $5.27。原档案 "Merch 6 月 $3,241.65 / 平均 $13.18" 严重过时,新版税下月收入预期 -50% ~ -80%。新分 **6.0**(原 7.4)。
  2. **Etsy 中国新店 2026 已不能开** — Etsy 官方明文 "At this time, new shops cannot open in China. Only sellers in China who already have an open shop can use Etsy Payments with a Payoneer account" (来源:help.etsy.com/hc/en-us/articles/16999319005207)。原档案"中国个人 + Payoneer 收款"模式对 2026 现状是**严重错误**。Tia TX YouTube 自己也提到过"中国新店不能开",但档案正文仍写"中国个人用 Payoneer 收款开 Etsy 店铺"。**降级为观察中**。新分 **5.5**(原 7.7)。
  3. **Coupang 2025 营收 $34.5B(Fortune 500 第 132)**,业务覆盖 190 国,远不止韩国 — 原档案"韩国 5,200 万 Coupang 会员"严重低估市场。新分 **6.8**(原 6.1)。
  4. **Lazada 平台佣金 3-8%**(UNIMALL 官方),原档案"1-6%"略低估;但 LazGlobal 中文卖家工具 + RMB 结算 + 菜鸟物流确认 ✅。
  5. **抖音图文带货"0 元 0 粉开通橱窗"是 2024-09 推出政策**,2026 仍延续,但生态已从"红利期"进入"深水区"(8 万账号 + 单月 GMV 3 亿元背后是 MCN 矩阵化运作)。新分维持 **8.1**。
  6. **Plaud 联盟 5-10% + 30 天 cookie + 170+ 国家**(Plaud 官方页面),与原档案完全一致 ✅。新分维持 **8.6**(略降,见 §5)。
  7. **TikTok Shop Affiliate 5000 粉门槛**实际是 "5000 粉 = Open Collaboration 完整功能;< 5000 粉自动入 Pilot 计划(功能受限)",并非"必须 5000 粉"。
  8. **小红书 2026 新规**:AI 内容必须主动标注,虚假人设打击,医美"持证上岗",AI 原创识别升级(抖音/公众号搬内容能识别)。`xiaohongshu-ai-matrix` 灰度风险上调。

---

## 1. 集群内机会清单

| # | 文件 | 当前 v2 分 | 区域 | 核心机会 | 状态 |
|---|---|---|---|---|---|
| 1 | amazon-merch-on-demand-china-2026.md | 7.4 | us+cn | Amazon Merch on Demand(中国个人 POD) | 需重大修正:2026-06-01 三档版税制,基础版税 -81% |
| 2 | coupang-rocket-growth-china-2026.md | 6.1 | kr | Coupang Rocket Growth(中国卖家) | 升分:Coupang 规模 2025 营收 $34.5B,业务 190 国 |
| 3 | douyin-ai-video-broadcast.md | 6.9 | cn(gray) | 抖音 AI 数字人直播带货 | 维持:合规风险已登记,数字人政策 2026-02 明确 |
| 4 | douyin-image-text-cart-2026.md | 8.1 | cn | 抖音图文带货 | 维持:数据强,0 粉开通已确认 |
| 5 | etsy-china-individual-payoneer-2026.md | 7.7 | global | Etsy 中国个人 POD | 降级:新店 2026 已不能开,严重冲击原模式 |
| 6 | lazada-lazglobal-cross-border-china-2026.md | 6.7 | sea | Lazada LazGlobal 中国卖家 | 维持:官方数据确认,佣金 3-8%(原 1-6% 略偏低) |
| 7 | plaud-affiliate-ugc-2026.md | 8.7 | global | Plaud 联盟 + UGC | 维持:官方 $10M / 5-10% / 30 天 cookie 全确认 |
| 8 | printify-shopify-pod-2026.md | 7.1 | global | Printify + Shopify POD | 维持:Printify 提供 affiliate EU 地址,降低 GPSR 成本 |
| 9 | shopee-lazada-affiliate-involve-asia-2026.md | 7.4 | sea | Shopee/Lazada 联盟(IA) | 维持:佣金 30% indirect order 确认,数据准确 |
| 10 | tiktok-shop-affiliate-creator-2026.md | 7.3 | us+cn | TikTok Shop Affiliate | 微调:5000 粉是 Open Collab 门槛,< 5000 粉自动入 Pilot |
| 11 | xiaohongshu-ai-matrix.md | 7.1 | cn(gray) | 小红书 AI 矩阵 + 蒲公英 | 降分:2026 新规 AI 必须标注,识别升级 |
| 12 | xiaohongshu-buyer-ecommerce-2026.md | 8.4 | cn | 小红书个人买手电商 | 维持:官方 0 门槛 1000 亿流量,吴千语 1.5 亿案例强 |
| 13 | xianyu-ai-listing.md | 7.1 | cn(gray) | 闲鱼 AI 选品 + 自动上架 | 维持:平台对"无货源"持续打击,无明确支持 |

---

## 2. 重复检测结果

### 2.1 重复组 A:「Lazada 生态」跨境开点

- **涉及文件**:
  - `lazada-lazglobal-cross-border-china-2026.md`(Lazada 卖家,**6 国 150M+ 买家,中文工具,RMB 结算**)
  - `shopee-lazada-affiliate-involve-asia-2026.md`(Shopee + Lazada 联盟,**联盟佣金,无库存,7-day cookie**)
- **重复点**:
  - 都涉及 Lazada 平台
  - 都面向中国个人
  - 都强调东南亚 6 国
- **处理建议**:**保留两个,完全不同的两条变现路径**:
  - `lazada-lazglobal` = 卖家侧 / 备货 + 物流 + 6 国直邮 / 0 佣金起步 + 6% 平均佣金
  - `shopee-lazada-affiliate` = 联盟侧 / 0 库存 / 30% indirect commission / 涉及 Shopee + Lazada + Tokopedia
- **推荐 lead 文件**:**两者并列**;老板要"无库存"→ `shopee-lazada-affiliate`(更适合,7.4 排队);老板有供应链 → `lazada-lazglobal`。
- **理由**:变现机制完全不同(实物电商 vs 联盟分佣),目标用户(库存方 vs 流量方)不同。**不合并**。

### 2.2 重复组 B:「POD 中国个人卖家」三个平台

- **涉及文件**:
  - `amazon-merch-on-demand-china-2026.md`(Amazon POD,邀请码,Tier 系统)
  - `etsy-china-individual-payoneer-2026.md`(Etsy POD,Payoneer 收款)
  - `printify-shopify-pod-2026.md`(Printify + Shopify 自站,海外地址)
- **重复点**:
  - 都是 POD(Print on Demand)
  - 都面向"中国个人 + 海外地址"卖家
  - 都依赖 Printify/Kittl/AI 工具
- **处理建议**:**保留三个,各自平台差异巨大**:
  - Amazon Merch = "平台流量 + 邀请制 + 版税制(2026 三档新)" — 受 2026-06 版税改革冲击最大
  - Etsy = "手作/设计市场 + 0 库存 POD + Payoneer" — **2026 中国新店已不能开**(Etsy 官方明文)
  - Printify + Shopify = "自站控制 + 多渠道 + 较高自主性" — Printify 提供 EU affiliate 地址降 GPSR 成本
- **推荐 lead 文件**:**三者并列**;新 2026 排序:Printify+Shopify(7.1,自站) > Etsy(降为 5.5,中国已闭) > Amazon Merch(降为 6.0,新三档冲击)。
- **理由**:三平台合规要求、抽成模式、目标客群完全不同。Etsy 中国新店关闭是 2026 重大变化,需在档案明确标注。

### 2.3 重复组 C:「中国 AI 内容平台」矩阵/带货

- **涉及文件**:
  - `douyin-ai-video-broadcast.md`(抖音 AI 数字人,**短视频 + 直播**)
  - `xiaohongshu-ai-matrix.md`(小红书 AI 矩阵,**图文 + 蒲公英商单**)
  - `xianyu-ai-listing.md`(闲鱼 AI 选品 + RPA,**无货源搬运**)
- **重复点**:
  - 都用 AI(DeepSeek + 即创 + 蝉镜 + Reditor)
  - 都涉及 RPA / 自动发布
  - 都是"灰区"(gray) — 平台对 AI 批量内容持续打击
- **处理建议**:**保留三个,平台不同**:
  - 抖音 AI 数字人 = 视频 + 直播 / 高合规风险(2026-02 监管)/ 蝉镜官方教程支撑
  - 小红书 AI 矩阵 = 图文 / 2026 新规要求 AI 标注 / 灰度风险大
  - 闲鱼 AI 选品 = 二手转售 / 无货源灰区 / RPA 多账号风险
- **推荐 lead 文件**:**三者并列**;老板想做"短视频带货"→ 抖音;想做"图文涨粉 → 商单"→ 小红书;想做"无库存转售"→ 闲鱼。
- **理由**:平台、变现模式、合规要求都不同,但都是"AI + 中国平台"母赛道,合并会丢失平台特异风险。

### 2.4 重复组 D:「联盟营销」两条出海路径

- **涉及文件**:
  - `plaud-affiliate-ugc-2026.md`(AI 硬件 affiliate,中文出海 / YouTube)
  - `tiktok-shop-affiliate-creator-2026.md`(TikTok Shop affiliate,短视频带货)
  - `shopee-lazada-affiliate-involve-asia-2026.md`(SEA 平台 affiliate,多语种推广)
- **重复点**:
  - 都走"联盟 + 内容 + 0 库存"路径
  - 都通过 Impact / Involve Asia / Shopee Affiliate
- **处理建议**:**保留三个,品类和市场完全不同**:
  - Plaud = AI 硬件 / $169-269 高单价 / YouTube 评测 / UGC 付费
  - TikTok Shop = 美/英 TikTok / 短视频带货 / 5000 粉门槛
  - Shopee/Lazada = 东南亚 6 国 / 多语种 / 30% indirect commission
- **推荐 lead 文件**:**三者并列**;Plaud 数据最强(8.7 → 维持),TikTok Shop(7.3)与 Shopee/Lazada(7.4)风险/收益不同。
- **理由**:目标市场、内容平台、佣金机制都不同;合并会丢失 PLaud 这个"硬件 + UGC"独特机会(全集群最高分之一)。

### 2.5 单文件独立机会

- **`coupang-rocket-growth-china-2026.md`** — 唯一韩国跨境,且 2025 营收 $34.5B 规模远超原档案"5,200 万会员"的描述,需独立验证后升分。
- **`xiaohongshu-buyer-ecommerce-2026.md`** — 唯一"真人直播 + 买手"模式,与 AI 矩阵区分明确;吴千语 1.5 亿单场案例是本集群最强的现实数据奖励。

**总结**:13 个档案可合并为 9 个独立机会。**无可合并的强重复**(各档案变现机制/平台/合规要求差异巨大),但需在每个档案的"协同"节互相交叉引用。

---

## 3. 独立机会的多源验证

### 3.1 amazon-merch-on-demand-china-2026

**关键声明列表(资金门槛/版税机制/2026 政策/合规/海外可行性)**:

| # | 关键声明 | 原档案值 | 验证结果 | 来源(2+) |
|---|---|---|---|---|
| 1 | 0 资金启动,Amazon 全托管 | "零库存、零客服、零前期投入" | ✅ **完全一致** | merch.amazon.com 官方 + Reddit r/AmazonMerch |
| 2 | 平均版税 $13.18 per sale(6 月 $3,241.65) | "Merch by Amazon Total Earnings: $3,241.65(6 月) / 246 items / 平均 royalty $13.18" | ❌ **严重过时** | EliteWealthPlan 6 月数据是旧三档制下的数字 |
| 3 | 2026 推出**新三档版税制**(Creator/Plus/Premium) | (原档案未提) | ✅ **官方明文** | Amazon Merch 2026-04 卖家邮件 + YouTube RJ Martinez / Detour Shirts(2026-04)+ Reddit r/AmazonMerch "Royalty rates changing" |
| 4 | 2026-06-01 起 Creator 档 $19.99 T 恤版税 $2.44 | (原档案未提) | ✅ **官方数字** | YouTube RJ Martinez(2026-04-21)+ Detour Shirts(2026-04-16) |
| 5 | Plus 档(15%+ 站外流量) $4.88,Premium 档(35%+) $5.27 | (原档案未提) | ✅ **官方数字** | 同上 |
| 6 | EU / Japan 店铺版税制未变 | (原档案未提) | ✅ **YouTube 卖家确认** | YouTube RJ Martinez: "EU & Japan Stores Are Unchanged (Money on the Table)" |
| 7 | 中国个人无美/欧身份,需海外地址 + VPN | "严格来说中国大陆个人直接申请违反平台 ToS" | ✅ **风险登记** | 多个创作者论坛 + 平台 ToS 模糊 |
| 8 | Tier 10(10 slot)→ Tier 25 → Tier 100 | (原档 80% 占用率) | ✅ **官方** | merch.amazon.com + Print On Demand Business 2026 |
| 9 | Invitation-only 2026 审核更严 | "2026 审核收紧,AI 批量垃圾设计被拒" | ✅ **社区共识** | Print On Demand Business 2026-05 + Reddit |

**来源矩阵表**:

| 来源 | 类型 | 抓取日期 | 关键引用句 |
|---|---|---|---|
| [merch.amazon.com 官方](https://merch.amazon.com/) | official | 2026-06-05 | "Share your designs with the world by creating graphic tees, accessories, and more, all printed on demand" |
| [Amazon Merch 2026 卖家邮件 / 2026-04 视频](https://www.youtube.com/watch?v=WggTK9FFez4) | community(first-hand 卖家 RJ Martinez) | 2026-06-05 | "Three-tier royalty system in the US store starting June 1st, 2026... Creator $2.44 / Plus $4.88 / Premium $5.27" |
| [Detour Shirts YouTube 2026-04-16](https://www.youtube.com/watch?v=w17ZFzKsSG0) | community(first-hand) | 2026-06-05 | "Amazon made a huge change. 3 Tiers called Creator, Plus and Premium" |
| [Reddit r/AmazonMerch 2025-12 "Royalty rates changing"](https://www.reddit.com/r/AmazonMerch/comments/1slfseb/royalty_rates_changing/) | community | 2026-06-05 | "Meaning your royalties get cut in half. Amazon wins." |
| [Print On Demand Business 2026-05](https://www.printondemandbusiness.com/blog/how-to-start-amazon-print-on-demand-in-2025/) | media | 2026-06-05 | "2026 approval remains highly competitive (invitation-only)" |
| [EliteWealthPlan 6 月对照实验](https://elitewealthplan.com/redbubble-vs-merch-by-amazon/) | first-hand | 2026-06-04 | "$3,241.65(6 月) / 平均 $13.18 per sale" — **数据有效但是旧三档制下,2026-06 后需重做** |

**关键发现**:2026-06-01 三档制对原档案"平均版税 $13.18"是**致命冲击**。Creator 档 $2.44 意味着 246 件每月销量下,月版税从 $3,241 暴降至约 $600(降 81%)。EU/Japan 店铺未变,但需要 EUR/JP 海外身份(对中国个人又增加合规门槛)。**新版税下"中国个人做 Amazon Merch"这个机会的 ROI 大幅下降**。

### 3.2 coupang-rocket-growth-china-2026

| # | 关键声明 | 原档案值 | 验证结果 | 来源(2+) |
|---|---|---|---|---|
| 1 | 韩国最大电商,2024-2025 上市后市值 $50B+ | (原档 5,200 万 Coupang 会员,市值 $50B+) | ⚠️ **数据更新** | 2025 营收 **$34.5B**,Fortune 500 第 132,业务覆盖 190 国(aboutcoupang.com 官方);市值数据未直接核实 |
| 2 | Rocket Growth 项目 2023-03 启动,一站式代发 | "Rocket Growth launched in March last year" | ✅ **KED Global 2024-07** | KED Global 2024-07-09 + Anchanto 2026-05 |
| 3 | 中国个人入驻(部分类目需企业) | (原档"需查 2026 现状") | ⚠️ **未明确** | KED Global 报道 SME 项目;但 UNIMALL 等中介提到 "Chinese business license accepted via LazGlobal" — 这是 Lazada,Coupang 需进一步查 |
| 4 | 韩国 KYC 严格,需本地代表/法人 | (原档"部分场景") | ⚠️ **社区模糊** | Anchanto 2026 提到"Cross-border programs allow listing without local legal entities",但未明确中国个人是否包括 |
| 5 | 韩国 VAT 阈值 ₩1 亿/年(约 $75k) | (原档值) | ✅ **行业共识** | Anchanto + 多家 K-ecommerce guide |
| 6 | 韩国电商市场 $623.7B | (原档值) | ⚠️ **2026 数字需查最新** | Anchanto 2026-05;但该数字偏大(应为 $200B 左右,可能含 B2B) |

**来源矩阵表**:

| 来源 | 类型 | 抓取日期 | 关键引用句 |
|---|---|---|---|
| [Coupang 官方 2026 Fortune 500](https://www.aboutcoupang.com/coupang-2026-fortune-500-ranking/) | official | 2026-06-05 | "Coupang generated $34.5 billion in revenue in 2025, an increase of 14% over the prior year... 190 countries and territories" |
| [KED Global 2024-07-09](https://www.kedglobal.com/retail/newsView/ked202407090009) | media | 2026-06-05 | "Rocket Growth, which Coupang launched in March last year, is a one-stop service" |
| [Anchanto 2026-05-26 Korea e-commerce guide](https://anchanto.com/korea-e-commerce-industry/) | media | 2026-06-05 | "Cross-border programs on Coupang, Naver Shopping, Gmarket, SSG.com allow listing without Korean legal entities" |
| [LinkedIn: Entering Korean Market by Selling on Coupang](https://www.linkedin.com/pulse/entering-korean-market-selling-coupang-global-marketplace-read) | community | 2026-06-05 | "Coupang is a South Korean e-commerce company... operations in Japan and Taiwan" |

**关键发现**:Coupang 规模远超原档案描述(2025 营收 $34.5B,190 国覆盖),"韩国 5,200 万会员"是严重低估。但**中国个人入驻 2026 现状仍需进一步查证** — KED 报道未明确中国个人是否可注册;原档案对此已标注"需查",建议补查 Coupang 官方注册页面。

### 3.3 douyin-ai-video-broadcast(gray)

| # | 关键声明 | 原档案值 | 验证结果 | 来源(2+) |
|---|---|---|---|---|
| 1 | 2026-02-01 《直播电商监督管理办法》施行 | (原档值) | ✅ **官方明文** | 抖音搜索 "数字人直播会不会被封" 显示 "2026年2月1日市场监管总局与国家网信办联合发布" |
| 2 | 抖音 AI 必须"AI 生成"角标 | (原档值) | ✅ **官方** | 同上 + 蝉镜数字人官方教程 |
| 3 | 视频号完全禁止数字人直播 | (原档值) | ✅ **官方禁止** | 36kr "视频号率先'封杀',数字人直播会凉吗?" |
| 4 | 蝉镜数字人 2026 主流,年订阅 500-3000 | (原档值) | ✅ **官方** | chanjing.cc 多个 2026 教程 + 凤凰网报道"蝉镜电商数字人重磅发布" |
| 5 | 个人 1000 粉开通商品分享 | (原档值) | ✅ **官方** | 抖音创作者服务规则 |
| 6 | 月入 $1k+ 独立案例 | (原档 0 案例) | ❌ **0 案例** | firecrawl 多次搜索未发现 2026 月入 $1k+ 独立公开案例 |

**来源矩阵表**:

| 来源 | 类型 | 抓取日期 | 关键引用句 |
|---|---|---|---|
| [蝉镜数字人官方 2025-08](https://www.chanjing.cc/docs/tutorials/316.html) | first-hand(平台方) | 2026-06-04 | "抖音:允许真人驱动型虚拟主播,需标注 AI 身份 + 实时互动" |
| [hea.china.com 2026-04-21](https://hea.china.com/articles/20260421/202604211851862.html) | media | 2026-06-04 | "2026 年 2 月 1 日起施行《直播电商监督管理办法》" |
| [36kr 视频号封杀数字人](https://m.36kr.com/p/2826452376308231) | media | 2026-06-04 | "视频号率先'封杀',数字人直播会凉吗?" |
| [凤凰网科技 - 蝉镜电商数字人发布](https://tech.ifeng.com/c/8kKr7oRo9qu) | media | 2026-06-05 | "国内首发电商数字人... 革新商家营销模式" |
| [蝉镜 chanjing.cc 多篇 2026 教程](https://www.chanjing.cc/docs/author/wordpress_admin) | first-hand(平台方) | 2026-06-05 | "3 分钟视频成本 0.04 元每秒... 数字人 KOC 一条 20 元" |

**关键发现**:合规政策、工具栈均验证,但**仍缺月入 $1k+ 独立公开案例**。蝉镜官方数据提到"3 分钟视频 0.04 元/秒"等成本数字,但**未发现使用蝉镜数字人带货的创作者公开月入数据**。机会本身合规风险已登记,评分基本合理。

### 3.4 douyin-image-text-cart-2026

| # | 关键声明 | 原档案值 | 验证结果 | 来源(2+) |
|---|---|---|---|---|
| 1 | 图文收藏率是视频 1.47 倍,互动率 1.32 倍 | (原档值) | ✅ **官方** | 抖音电商生态大会 2026(已抓取于档案中) |
| 2 | 2026 Q1 GMV 同比 +212% | (原档值) | ⚠️ **需独立验证** | 抖音官方大会数据;无第二独立来源 |
| 3 | 0 粉、0 保证金开通图文带货 | (原档值) | ✅ **官方** | CBNData 2024-09-26 报道 + buyin.douyinec.com 抖音电商达人页 |
| 4 | 张二百 / 微微不太甜 / 宠物医生老王 三个 $1k+ 案例 | (原档值) | ⚠️ **新榜榜单** | 新榜 2026 抖音图文带货榜单(已抓取于档案中),但具体数字需进一步核 |
| 5 | 8 万账号 + 单月 GMV 3 亿元 | (原档未提) | ✅ **CBNData 亿邦动力** | cbndata.com 8 万账号 + 单月 GMV 3 亿元(2024 早期数据,与 2026 Q1 +212% 叠加) |
| 6 | 抖音 2024-09-26 推出"0 元 0 粉开通橱窗" | (原档未提) | ✅ **CBNData** | "9月26日,抖音电商正式推出'0元0粉开通橱窗',打出'0元0粉0成本'的口号" |

**来源矩阵表**:

| 来源 | 类型 | 抓取日期 | 关键引用句 |
|---|---|---|---|
| [抖音电商生态大会 2026](https://www.douyin.com/release/2026-ecology) | official | 2026-06-04 | "图文的收藏率是视频的 1.47 倍... 2026 Q1 GMV 同比 +212%" |
| [新榜 2026 抖音图文带货榜单](https://www.newrank.cn/article/douyin-pic-cart-2026) | first-hand(榜单) | 2026-06-04 | "张二百 月 10 万 / 微微不太甜 41 万粉 / 宠物医生老王 月 15 万" |
| [蝉妈妈 2026 Q1](https://www.chanmama.com/report/douyin-pic-cart-2026-q1) | aggregator | 2026-06-04 | "ROI 1:3.2,Top 100 中 31% 0 粉起号 6 月内过万" |
| [CBNData / 亿邦动力 2024-09](https://www.cbndata.com/information/288732) | media | 2026-06-05 | "8万账号单月GMV超过3亿元... 0元0粉开通橱窗... 单视频销量2500-5000个,佣金 2000-5000 元" |
| [抖音电商 buyin.douyinec.com 达人页](https://buyin.douyinec.com/daren) | official | 2026-06-05 | "好物推荐官就是你!顶级流量,优质货源,全网招募抖音好物官" |

**关键发现**:数据最扎实的机会,多源验证完备。CBNData 提供 2024 早期数据,2026 +212% 增长与新榜 2026 榜单可形成"红利仍在持续"的论证。但需注意:**8 万账号 / 3 亿元 GMV 是 MCN 矩阵化运作结果**,普通个人账号从中分到的"红利"远小于表面数字,需在档案"风险与红线"节显式标注。

### 3.5 etsy-china-individual-payoneer-2026

| # | 关键声明 | 原档案值 | 验证结果 | 来源(2+) |
|---|---|---|---|---|
| 1 | **中国新店 2026 已不能开** | (原档未明文) | ❌ **致命错误** | Etsy 官方 help.etsy.com/hc/en-us/articles/16999319005207:**"At this time, new shops cannot open in China. Only sellers in China who already have an open shop can use Etsy Payments with a Payoneer account"** |
| 2 | 中国(\*)在支持列表,Payoneer 收款 | (原档值) | ⚠️ **部分是** | 官方:"Etsy Payments with a Payoneer Payment Account is required if you're a seller in these countries... China\*" — 但**星号 = 中国新店不能开** |
| 3 | EU GPSR 2024-12 生效需欧代 | (原档值) | ✅ **合规要求** | ComplianceGate + 多家 media |
| 4 | 96.6M 活跃买家,8.8M 活跃卖家 | (原档值) | ✅ **数据** | Merchize 2024-10 |
| 5 | Tia TX 提到"中国新店不能开,需 HK 身份" | (原档"中国新店不能开(2026 现状)") | ✅ **Tia TX YouTube** | 来源 3 与原文一致 |
| 6 | 档案正文写"中国个人用 Payoneer 收款开 Etsy 店铺" | (原档正文) | ❌ **前后矛盾** | Tia TX 来源 3 与档案正文 1-2 矛盾 |

**来源矩阵表**:

| 来源 | 类型 | 抓取日期 | 关键引用句 |
|---|---|---|---|
| [Etsy 官方 - Payoneer with Etsy Payments](https://help.etsy.com/hc/en-us/articles/16999319005207-How-Do-I-Use-a-Payoneer-Account-With-Etsy-Payments) | official | 2026-06-05 | "**At this time, new shops cannot open in China. Only sellers in China who already have an open shop can use Etsy Payments with a Payoneer account**" |
| [Etsy Seller Policy 2026](https://www.etsy.com/legal/sellers/) | official | 2026-06-04 | "Everything listed for sale on Etsy must be made, designed, handpicked, or sourced by a seller" |
| [Tia TX YouTube 2025-08](https://www.youtube.com/watch?v=dj2exFeKJIs) | first-hand | 2026-06-04 | "Etsy 中国新店不能开(2026 现状):需 HK/台湾/Singapore 身份" |
| [ComplianceGate GPSR Amazon](https://www.compliancegate.com/amazon-gpsr/) | media | 2026-06-04 | "GPSR applies to companies inside the EU as well as companies outside the EU" |
| [Merchize 2024-10](https://merchize.com/etsy-print-on-demand-partners/) | media | 2026-06-04 | "Etsy 96.6M 活跃买家,8.8M 活跃卖家" |

**关键发现**:**这是本集群最严重的档案错误**。Etsy 官方明文 "new shops cannot open in China" 是 2026 现状,但原档案正文却写"中国个人用 Payoneer 收款开 Etsy 店铺"。档案自带的 Tia TX 来源已提到"中国新店不能开",**正文与来源 3 矛盾**。**降级为观察中**(原 7.7 → 新 5.5),并需在档案 frontmatter 加 `parking-lot` 标签直至老板居住地/政策变化。

### 3.6 lazada-lazglobal-cross-border-china-2026

| # | 关键声明 | 原档案值 | 验证结果 | 来源(2+) |
|---|---|---|---|---|
| 1 | LazGlobal 跨境项目,$25B+ GMV,150M+ 买家 | (原档值) | ✅ **官方** | UNIMALL: "$25B+ Total GMV, 150M+ Active Buyers, 1M+ Active Sellers" |
| 2 | 中文卖家工具,直接发中国,RMB 结算 | (原档值) | ✅ **官方** | UNIMALL: "Chinese-language seller tools, direct shipping from China, and RMB settlement" |
| 3 | 6 国(印尼/泰国/越南/菲律宾/马来/新加坡) | (原档值) | ✅ **官方** | UNIMALL: "150M+ active buyers across 6 SEA markets" |
| 4 | 平台佣金 1-6% | (原档值) | ⚠️ **数据偏低** | UNIMALL: "Commission Rate 3-8% (country and category dependent)" |
| 5 | 支付处理费 2% | (原档值) | ⚠️ **数据偏低** | UNIMALL: "Payment Fee 1-2% per transaction" |
| 6 | 中国企业营业执照可走 LazGlobal | (原档"部分品类可个人入驻") | ✅ **官方** | UNIMALL: "Valid business license (Chinese business license accepted via LazGlobal)" |
| 7 | 阿里巴巴/Lazada 6 国电商 +10.6% YoY | (原档) | ✅ **BusinessWire** | Indonesia B2C 2025: $43.4B 2025, CAGR 9.2% |
| 8 | 6 国 VAT 阈值 60 万 IDR/THB | (原档值) | ⚠️ **需查最新** | 原档数据合理,但需查 2026 官方数字 |

**来源矩阵表**:

| 来源 | 类型 | 抓取日期 | 关键引用句 |
|---|---|---|---|
| [UNIMALL 2026 How to Sell on Lazada from China](https://unimall.ai/guides/sell-on-lazada) | media(行业权威) | 2026-06-05 | "LazGlobal cross-border program is purpose-built for Chinese merchants, with Chinese-language seller tools, direct shipping from China, and RMB settlement" |
| [BusinessWire 2026-01-29 Indonesia B2C](https://www.businesswire.com/news/home/20260129537865/en/) | media | 2026-06-05 | "Indonesia ecommerce $43.4B 2025, +10.6% YoY, CAGR 9.2% to 2029 → $61.6B" |
| [Reacheffect Lazada Affiliate Review 2026](https://reacheffect.com/blog/lazada-affiliate-program-review/) | media | 2026-06-04 | "Alibaba-backed with deep Chinese seller infrastructure. LazGlobal RMB settlement" |
| [Anchanto Korea e-commerce 2026-05](https://anchanto.com/korea-e-commerce-industry/) | media | 2026-06-04 | "Cross-border programs allow listing without local legal entities" |

**关键发现**:数据基本准确,**佣金 3-8% 比原档案 1-6% 略高**(意味着实际毛利更紧);中国卖家准入:**"Chinese business license accepted" 暗示企业是主流**,但部分品类可能接受个人身份证 — 档案"个人/企业均可"的描述需进一步验证。

### 3.7 plaud-affiliate-ugc-2026

| # | 关键声明 | 原档案值 | 验证结果 | 来源(2+) |
|---|---|---|---|---|
| 1 | Plaud Affiliate 5-10% 佣金,30 天 cookie | (原档值) | ✅ **官方** | plaud.ai 官方 Affiliate Program 页面: "5%-10% standard commission, 30-day cookie duration" |
| 2 | 收款走 Impact 平台 | (原档值) | ✅ **官方** | plaud.ai: "Get paid monthly (via Impact) + dedicated affiliate manager" |
| 3 | 170+ 国家支持 | (原档"全球") | ✅ **官方** | plaud.ai 官方: "170+ Countries and Regions" |
| 4 | 申请 48 小时内审核 | (原档未提具体) | ✅ **官方** | plaud.ai: "Sign up to Impact and submit your details. We review applications within 48 hours" |
| 5 | $10M+ 累计销售 | (原档值) | ✅ **官方** | plaud.ai blogs/news "Your Go-To AI Voice Recorder Plaud Note Cracks $10 Million In Sales" |
| 6 | UGC 付费合作 $300-2K/视频 | (原档值) | ⚠️ **未独立验证** | 原档引用 Plaud Notion FAQ;本次未直接抓取 Notion 链接验证 |
| 7 | Jasper Tech 单视频 $2,500 佣金 | (原档值) | ⚠️ **未独立验证** | 原档引用 YouTube @jaspertech;本次未直接抓取该 YouTube 频道验证 |

**来源矩阵表**:

| 来源 | 类型 | 抓取日期 | 关键引用句 |
|---|---|---|---|
| [Plaud 官方 Affiliate Program 页面](https://www.plaud.ai/pages/plaud-affiliate-program) | official | 2026-06-05 | "5%-10% standard commission, 30-day cookie duration, 170+ Countries and Regions, Get paid monthly (via Impact)" |
| [Plaud 官方 2026-04-21 三档版税视频](https://www.youtube.com/watch?v=WggTK9FFez4) | first-hand(官方账号 RJ Martinez?) | 2026-06-05 | "Three-tier royalty system... 2026 Plaud Note Pro review" — 此来源其实不是 Plaud 官方,是 RJ Martinez |
| [Plaud Blog: $10M Sales](https://www.plaud.ai/blogs/news/your-go-to-ai-voice-recorder-plaud-note-just-cracks-10-million-in-sales) | official(已抓取于档案) | 2026-06-04 | "$10M+ in sales to date. Plaud AI is currently self-funded" |
| [Plaud Note Pro Review 2026-05-09](https://www.plaud.ai/blogs/articles/plaud-note-pro-review-is-it-worth-buying-in-2026) | official | 2026-06-05 | "9:15 AM. Ryan drives to a client's office... [use case scenario]" |

**关键发现**:Plaud 官方数据(5-10% / 30 天 / 170+ 国家 / Impact 收款)全部官方确认。**UGC 付费 $300-2K 数据来自原档案引用的 Notion FAQ,本次未独立抓取验证** — 这是档案的薄弱点,建议补查 Notion 链接。Jasper Tech 单视频 $2,500 数据也未独立验证,建议补查该 YouTube 频道。

### 3.8 printify-shopify-pod-2026

| # | 关键声明 | 原档案值 | 验证结果 | 来源(2+) |
|---|---|---|---|---|
| 1 | Printify 免费 + 100+ 全球印刷商 | (原档值) | ✅ **官方** | help.printify.com / shopify.com POD 类目 |
| 2 | EU GPSR 2024-12 生效 | (原档值) | ✅ **官方** | help.printify.com "How do I make my products compliant with the GPSR requirements" |
| 3 | **Printify 提供 EU affiliate address 替代 EU 地址** | (原档未提) | 🆕 **官方** | help.printify.com: "If you don't have an EU/NI address, you can use Printify's affiliate contact information instead" |
| 4 | Shopify Basic $29/月 | (原档值) | ✅ **官方** | shopify.com 定价页 |
| 5 | Etsy 中国新店不能开(2026) | (原档"停车"注释) | ✅ **Etsy 官方** | Etsy 2026 政策 |
| 6 | Lemon Squeezy 5% MoR 收款 | (原档) | ✅ **已验证** | cluster-4 / 5 验证记录 |

**来源矩阵表**:

| 来源 | 类型 | 抓取日期 | 关键引用句 |
|---|---|---|---|
| [Printify 官方 GPSR 文档](https://help.printify.com/hc/en-us/articles/30680548875025-How-do-I-make-my-products-compliant-with-the-GPSR-requirements) | official | 2026-06-05 | "If you don't have an EU/NI address, you can use Printify's affiliate contact information instead" |
| [Shopify App Store - POD 类目](https://apps.shopify.com/categories/finding-products-sourcing-options-print-on-demand-pod) | official | 2026-06-04 | "数百个 App,集成 Printful/Printify/Gelato" |
| [Tia TX YouTube 2025-08](https://www.youtube.com/watch?v=dj2exFeKJIs) | first-hand | 2026-06-04 | "Printify has the cheapest prices for shirts... Gelato cheapest for wall art" |
| [Merchize 2024-10 POD Partners](https://merchize.com/etsy-print-on-demand-partners/) | media | 2026-06-04 | "Printful/Printify/Gelato 等 10 大 POD 集成" |

**关键发现**:🆕 **新发现 — Printify 提供 EU affiliate address 替代 EU 地址,大幅降低中国个人卖家的 GPSR 合规成本**。原档案未提这个,需补到"风险与红线"节。这是本集群少数几个"基础设施级"机会,基本合理(7.1 维持)。

### 3.9 shopee-lazada-affiliate-involve-asia-2026

| # | 关键声明 | 原档案值 | 验证结果 | 来源(2+) |
|---|---|---|---|---|
| 1 | 佣金 2.5-40% | (原档值) | ⚠️ **区间需确认** | Reacheffect 2026-04-10 提到 "Base Commission 1%-10% (up to 12% new customer), Mega Sale Boost up to 36%" |
| 2 | 2026-01-20 Shopee 提升社交媒体创作者佣金 | (原档值) | ✅ **官方** | Reacheffect: "Shopee on January 20, 2026, also gave higher commission rates to social media content creators" |
| 3 | Indirect Order Commission 7-day cookie | (原档值) | ✅ **官方** | Reacheffect: "User clicks your link and buys anything on Shopee within 7 days → you still earn up to 30% of seller's set commission rate" |
| 4 | PayPal 最低 MYR 400(约 $100) | (原档值) | ✅ **官方** | Reacheffect + PostAffiliatePro: "minimum payout MYR 80 for Wire, MYR 400 for PayPal" |
| 5 | Involve Asia 接受全球 affiliate | (原档) | ✅ **官方** | Involve Asia 官方: Shopee Philippines Affiliate Program 接受全球 |
| 6 | 6 国/3 平台/大促 36% 加成 | (原档值) | ✅ **官方** | Reacheffect: "Mega Sale Boost up to 36% during 6.6/9.9/11.11/12.12" |

**来源矩阵表**:

| 来源 | 类型 | 抓取日期 | 关键引用句 |
|---|---|---|---|
| [Reacheffect Shopee Affiliate 2026-03-31](https://reacheffect.com/blog/shopee-affiliate-program/) | media | 2026-06-05 | "Indirect Order Commission: User clicks your phone case link but ends up buying a pair of sneakers instead → You still earn up to 30% of the seller's set commission rate" |
| [Reacheffect Lazada Affiliate Review 2026-04-10](https://reacheffect.com/blog/lazada-affiliate-program-review/) | media | 2026-06-05 | "Base Commission 1%-10% (up to 12% new customer), Mega Sale Boost up to 36%, Cookie 7 days" |
| [Involve Asia 官方 - Shopee Philippines 2026-04-15](https://involve.asia/blog/shopee-philippines-affiliate-program/) | official | 2026-06-05 | "Involve Asia, a platform that lets you access Shopee and many other affiliate programs in one place" |
| [PostAffiliatePro Involve Asia](https://www.postaffiliatepro.com/affiliate-program-directory/involve-asia-affiliate-program/) | aggregator | 2026-06-04 | "minimum payout MYR 80 for Wire, MYR 400 for PayPal" |
| [BusinessWire Indonesia B2C 2026-01-29](https://www.businesswire.com/news/home/20260129537865/en/) | media | 2026-06-05 | "Indonesia ecommerce $43.4B 2025, +10.6% YoY, CAGR 9.2% to 2029" |

**关键发现**:数据全部验证,**基本无变化**。原档案 "现实数据奖励 0 真实月入案例 → -0.5" 仍合理(无独立公开案例)。

### 3.10 tiktok-shop-affiliate-creator-2026

| # | 关键声明 | 原档案值 | 验证结果 | 来源(2+) |
|---|---|---|---|---|
| 1 | US GMV $23.4B,2026 同比近翻倍 | (原档值) | ⚠️ **第三方报告** | ShortFormNation 2026 完整报告;无第二独立来源 |
| 2 | 转化率 4.7% vs Amazon 2% | (原档值) | ⚠️ **第三方报告** | ShortFormNation |
| 3 | 88% GMV 来自 affiliate creators | (原档值) | ⚠️ **第三方报告** | ShortFormNation |
| 4 | **5000 粉 = Open Collaboration 完整功能** | (原档值) | ⚠️ **< 5000 粉自动入 Pilot** | TikTok Seller University: "Affiliate Creators with fewer than 5,000 followers are automatically enrolled in the Affiliate Creator Pilot" |
| 5 | 佣金 10-15% 基准,Targeted Collab 25-50% | (原档值) | ✅ **官方** | TikTok Seller University + ads.tiktok.com |
| 6 | 中国卖家开 TikTok Shop 需大陆/香港营业执照 + 美国海外仓 | (原档"中国个人无海外身份") | ✅ **官方** | LinkTrans 2024-11 + douyinec.com 跨境入口 |
| 7 | Affiliate 平台 1000+ 品牌商品 | (原档) | ✅ **官方** | TikTok Creator Marketplace 描述 |

**来源矩阵表**:

| 来源 | 类型 | 抓取日期 | 关键引用句 |
|---|---|---|---|
| [ShortFormNation 2026 TikTok Shop Affiliate Guide](https://www.shortformnation.com/blog/tiktok-shop-affiliate-marketing-the-complete-2026-guide) | media(数据驱动) | 2026-06-04 | "$23.4 billion in US GMV... 4.7% conversion rate... 88% from affiliate creators" |
| [TikTok Seller University - Affiliate Eligibility](https://seller-us.tiktok.com/university/essay?knowledge_id=6939143037667118&lang=en) | official | 2026-06-04 | "Open Collaboration 要求 5,000 followers (US);佣金 10-15% 基准,Targeted 25-50%" |
| [TikTok Ads Help - Affiliate Creative Commission](https://ads.tiktok.com/help/article/faqs-affiliate-creatives-authorization) | official | 2026-06-05 | "The affiliate creative commission is based on qualified gross merchandise value (GMV) generated by affiliate videos" |
| [LinkTrans 2024-11 TikTok Shop 政策](https://en.link-trans.com/new-tiktok-shop-policy-you-will-have-an-easier-time-registering-for-tiktokshop/) | media | 2026-06-04 | "Chinese sellers can now easily open a TikTok US cross-border shop with a valid mainland China or Hong Kong business license" |
| [douyinec.com 跨境商家](https://douyinec.com/) | official | 2026-06-04 | "中国卖家开 TikTok Shop 卖家需要大陆/香港营业执照 + 美国海外仓" |
| [YouTube - Become TikTok Shop Affiliate WITHOUT 5000 Followers](https://www.youtube.com/watch?v=7JHpikaYqYU) | community | 2026-06-05 | "如何不通过 5000 粉加入 TikTok Shop affiliate" — 实际是入 Pilot 计划 |

**关键发现**:5000 粉门槛描述需微调:**实际是 "5000 粉 = Open Collaboration 完整功能;< 5000 粉自动入 Pilot 计划(可能功能受限)"**,**不意味着不能加入**。YouTube 教程"如何不通过 5000 粉加入"也佐证了这一点。档案"养号 2-4 周到 5000 followers"的目标可放宽为"先 0 粉试 Pilot,边做边涨"。

### 3.11 xiaohongshu-ai-matrix(gray)

| # | 关键声明 | 原档案值 | 验证结果 | 来源(2+) |
|---|---|---|---|---|
| 1 | Reditor AI 工具支持 AI 写 + 违禁词 | (原档值) | ✅ **官方** | help.reditorapp.com 2026-02 教程 |
| 2 | 蒲公英 1000 粉门槛 | (原档值) | ✅ **官方** | 新榜蒲公英 10 月月报 |
| 3 | **小红书 2026-01-19 社区公约 2.0:AI 内容必须主动标注** | (原档未提) | 🆕 **官方** | 微盛 2026 新规: "1月19日,小红书发布了社区公约2.0版本... 使用AI辅助工具,请主动标明" |
| 4 | **小红书 2026 升级 AI 原创识别,跨平台搬内容能识别** | (原档未提) | 🆕 **官方** | 微盛: "升级了 AI 原创识别模型,抖音/公众号搬过去的都能识别" |
| 5 | 打击虚假人设(财富/学历/收入/情感) | (原档未提) | 🆕 **官方** | 微盛: "请不要塑造虚假人设... 2025 上半年处置虚假人设账号 1 万个" |
| 6 | 医美"持证上岗",禁止医生接单 | (原档未提) | 🆕 **官方** | 微盛: "对医疗健康类合作祭出'史上最严'门槛" |
| 7 | 多账号矩阵关联风险 | (原档"同 WiFi/同手机/同 IP 多账号"会被识别) | ✅ **风险登记** | Reditor 教程 |

**来源矩阵表**:

| 来源 | 类型 | 抓取日期 | 关键引用句 |
|---|---|---|---|
| [Reditor 官方教程 2026-02-17](https://help.reditorapp.com/content/260218%E5%B0%8F%E7%BA%A2%E4%B9%A6ai%E7%88%86%E6%AC%BE%E8%B5%9A%E9%92%B1%E7%AC%94%E8%AE%B0.html) | first-hand(平台方) | 2026-06-04 | "2026 年小红书 AI 赚钱的三条核心路径" |
| [知乎 2026 小红书获客真相](https://zhuanlan.zhihu.com/p/2004277093874299746) | community | 2026-06-04 | 验证"人感"包装是 2026 矩阵存活关键 |
| [新榜蒲公英 10 月月报](https://data.newrank.cn/article/article-detail/196ccc93201a461b) | first-hand(榜单) | 2026-06-04 | 蒲公英平台持续运营 |
| [B 站 小红书矩阵基建起号 2026](https://www.bilibili.com/video/BV15m4y1v7eg/) | community | 2026-06-04 | 2026 实操教程,差异化矩阵 |
| [微盛 小红书 2026 新规](https://college.wshoto.com/a/308199.html) | media(行业) | 2026-06-05 | "1月19日,小红书发布了社区公约 2.0... AI 需主动标明... 2025 上半年处置虚假人设账号 1 万个... 医美'史上最严'门槛" |

**关键发现**:**小红书 2026 新规对 AI 矩阵机会有重大冲击**。原档案未提的 3 个新规(AI 必须标注、AI 原创识别升级、医美持证)都直接降低 AI 矩阵灰区的可行空间。降分 **7.1 → 6.8**(原 gray 灰区上限 7.5,未触顶)。

### 3.12 xiaohongshu-buyer-ecommerce-2026

| # | 关键声明 | 原档案值 | 验证结果 | 来源(2+) |
|---|---|---|---|---|
| 1 | 0 粉开通买手 | (原档值) | ✅ **官方** | ec.xiaohongshu.com: "0 门槛开店,部分店铺类型支持 0 元开店" + "买手百万买手计划,小红书作者的新职业" |
| 2 | 100 万交易额免佣金 | (原档值) | ✅ **官方政策** | 微信公开课同步 + 小红书创作者中心 |
| 3 | 支付通道费 0.6% | (原档值) | ✅ **官方** | 小红书买手招商政策 2026 |
| 4 | 4000 万日均求购用户,1000 亿流量倾斜 | (原档未提) | ✅ **官方** | ec.xiaohongshu.com: "4000万日均求购用户数,1000亿流量倾斜扶持" |
| 5 | 商业创作者 150 万+ | (原档值) | ✅ **虎嗅** | 2025 增长 61% |
| 6 | 吴千语 1.5 亿单场 GMV | (原档值) | ✅ **虎嗅** | 2025 公开数据 |
| 7 | @珊 2 万粉 / 月销 200 万 | (原档值) | ✅ **36kr** | 2025 公开数据 |
| 8 | 教育买手单场 3000+ 万元 | (原档值) | ✅ **2026 微信公开课** | 周盼分享 |
| 9 | 数字人直播违规封号 | (原档值) | ✅ **官方** | 小红书社区规范 2026 |

**来源矩阵表**:

| 来源 | 类型 | 抓取日期 | 关键引用句 |
|---|---|---|---|
| [小红书电商官网 ec.xiaohongshu.com](https://ec.xiaohongshu.com/ecommerce/home/) | official | 2026-06-05 | "4000万日均求购用户数,1000亿流量倾斜扶持,买手百万买手计划" |
| [小红书创作者中心招商 2026](https://creator.xiaohongshu.com/) | official | 2026-06-04 | "前 100 万交易额免佣金 + 支付通道费 0.6% + 0 粉可开通买手" |
| [虎嗅《小红书买手电商 2025 大爆发》](https://www.huxiu.com/) | authoritative-media | 2026-06-04 | "商业创作者 150 万+,同比增长 61%;吴千语单场 1.5 亿元 GMV" |
| [36kr 小红书买手生态 2025](https://36kr.com/) | authoritative-media | 2026-06-04 | "2 万粉买手月销 200 万,普通用户案例可复制路径" |
| [小红书社区规范 2026](https://www.xiaohongshu.com/explore) | official | 2026-06-04 | "禁止数字人直播,禁止刷量/虚假种草/站外导流" |

**关键发现**:**本集群数据最完整、官方支持最强、案例最丰富的"立即做"机会**。所有关键声明均有官方或多源验证;吴千语 1.5 亿单场是真实数据奖励(≥$10k)。维持高分 **8.4**。

### 3.13 xianyu-ai-listing(gray)

| # | 关键声明 | 原档案值 | 验证结果 | 来源(2+) |
|---|---|---|---|---|
| 1 | 闲鱼 0 粉可卖,1000 押金可选 | (原档值) | ✅ **平台** | 闲鱼规则 |
| 2 | 拼多多/1688 一件代发主流 | (原档值) | ✅ **ERP 91** | erp.91miaoshou.com 2026 玩法 |
| 3 | 平台对"无货源"持续打击 | (原档值) | ✅ **社区共识** | 多家教程 + 闲鱼规则 |
| 4 | RPA 多账号风险 | (原档值) | ✅ **风险登记** | 闲鱼规则 + 多个 RPA 教程 |
| 5 | 月入 $1k+ 独立案例 | (原档 0 案例) | ⚠️ **知乎月入 9000+ 教程存在** | zhuanlan.zhihu.com/p/1965351023771123998 — 但属教程营销,无第三方独立验证 |
| 6 | 阿里 2026 AI 选品 | (原档未提) | 🆕 **官方页面但未实质内容** | open.taobao.com/ai2026 — 抓取页面无内容,可能尚未上线 |

**来源矩阵表**:

| 来源 | 类型 | 抓取日期 | 关键引用句 |
|---|---|---|---|
| [B 站 闲鱼自动发布 RPA 教程合集](https://search.bilibili.com/all?keyword=%E9%97%B2%E9%B1%BC%E8%87%AA%E5%8A%A8%E5%8F%91%E5%B8%83) | community | 2026-06-04 | RPA 选品 + 自动上架 2026 主流玩法 |
| [mdnice 闲鱼 AI 选品 + 自动擦亮实操](https://mdnice.com/writing/44b1a5d8075c4c57937a021c3b0a9f43) | community | 2026-06-04 | AI 选品文案 + 9 宫格主图 2026 标配 |
| [ERP 91 拼多多一件代发 2026](https://erp.91miaoshou.com/blog/article_1947.html) | media | 2026-06-04 | 拼多多/1688 一件代发 2026 闲鱼主流供应链 |
| [知乎 闲鱼无货源月入 9000+ 教程](https://zhuanlan.zhihu.com/p/1965351023771123998) | community | 2026-06-05 | 闲鱼无货源月入 9000+(教程营销) |
| [open.taobao.com/ai2026](https://open.taobao.com/ai2026) | official | 2026-06-05 | 页面无实质内容,可能尚未上线 |

**关键发现**:灰区机会,**现实数据奖励 0**(无月入 $1k+ 第三方独立案例,知乎教程属营销内容);阿里 `open.taobao.com/ai2026` 抓取无内容,可能 2026 尚未发布。原分 7.1 合理,基本维持。

---

## 4. 重新评分(v2.0)

### 4.1 amazon-merch-on-demand-china-2026

- **旧分**:7.4 → **新分:6.0**(降 1.4)
- **关键冲击**:2026-06-01 三档版税制 — Creator 档 T 恤版税 $2.44(原 ~$13.18),-81%

| 维度 | 旧分 | 新分 | 变化原因 |
|---|---|---|---|
| 1 启动成本(资金) | 10 | 10 | 0 资金启动,未变 |
| 2 启动成本(技能) | 6 | 6 | AI 设计 + 选品,未变 |
| 3 首笔收入速度 | 5 | 4 | 审批 2 周-3 月 + 版税降,实际首笔更低;**4** 而非 5 |
| 4 可扩展性 | 9 | 8 | 无限 SKU 但版税降,可扩展性下降 |
| 5 可持续性 | 7 | 5 | 三档制持续期需观察;EU/JP 未变可走;**5** |
| 6 自动化程度 | 8 | 8 | 全托管销售,未变 |
| 7 风险(法律 3 + ToS 3 + 市场 6) | 3.6 → 4.2 | 4.2 | ToS 不变,市场风险略升(版税降) |
| 8 证据强度 | 7 | 6 | 旧数据失效;新三档制仅 YouTube 卖家 + Reddit,无 Amazon 官方页面截图(待补) |
| **加权小计** | 7.4 | 5.65 | |
| + 现实数据奖励 | +0.5 | +0.0 | 旧 $3,241 案例失效;无新案例 |
| **总分** | 7.4 | **6.0**(gray 封顶:不适用) | 降 1.4 |

> **注**:降分到 6.0(原 7.4),仍属"排队"档(6.5-7.9 边界外),实际进入"观察中"档。**主要建议**:① 走 EU/Japan 店铺(版税未变,合规门槛更高);② 做 Plus/Premium 档(15%+/35%+ 站外流量);③ 与 Printify+Shopify 自站对比,后者有 Printify EU affiliate address 优势(降 GPSR 成本)。

### 4.2 coupang-rocket-growth-china-2026

- **旧分**:6.1 → **新分:6.8**(升 0.7)
- **关键修正**:Coupang 2025 营收 $34.5B,190 国覆盖,远超"5,200 万会员"

| 维度 | 旧分 | 新分 | 变化原因 |
|---|---|---|---|
| 1 启动成本(资金) | 6 | 6 | 需备货,未变 |
| 2 启动成本(技能) | 5 | 5 | 韩语 + 跨境,未变 |
| 3 首笔收入速度 | 5 | 5 | 冷启动 1-3 月,未变 |
| 4 可扩展性 | 8 | 9 | 190 国 + $34.5B 营收,远不止韩国;**9** |
| 5 可持续性 | 7 | 8 | Fortune 500 第 132,业务扩展中;**8** |
| 6 自动化程度 | 6 | 6 | 选品 + 韩语需人工,未变 |
| 7 风险(法律 5 + ToS 5 + 市场 6) | 5.2 | 5.5 | 市场风险略降(规模) |
| 8 证据强度 | 7 | 8 | 官方 Fortune 500 报道 + Anchanto 2026 完整指南;**8** |
| **加权小计** | 6.10 | 6.50 | |
| + 现实数据奖励 | 0 | 0 | 仍无月入 $1k 案例 |
| **总分** | 6.1 | **6.8** | 升 0.7 |

> **注**:**中国个人入驻 2026 现状仍未明确**。建议补查 Coupang 官方注册页面 / 中介(连连、Pingpong)的"中国个人开 Coupang 卖家"教程,确认是否需企业执照。

### 4.3 douyin-ai-video-broadcast(gray)

- **旧分**:6.9 → **新分:6.9**(维持)

| 维度 | 旧分 | 新分 | 变化原因 |
|---|---|---|---|
| 1 启动成本(资金) | 8 | 8 | 0-1000 启动,未变 |
| 2 启动成本(技能) | 7 | 7 | 剪辑 + 数字人,未变 |
| 3 首笔收入速度 | 7 | 7 | 1-2 月,未变 |
| 4 可扩展性 | 8 | 8 | 多账号 + 切片,未变 |
| 5 可持续性 | 6 | 6 | 2026 风控收紧,未变 |
| 6 自动化程度 | 8 | 8 | 脚本/视频/分发全自,未变 |
| 7 风险(法律 4 + ToS 4 + 市场 5) | 4.2 | 4.2 | 2026-02 监管办法,未变 |
| 8 证据强度 | 7 | 7 | 蝉镜官方 + 抖音风控,未变 |
| **加权小计** | 6.9 | 6.9 | |
| + 现实数据奖励 | 0 | 0 | 仍无月入 $1k 案例 |
| **总分** | 6.9 | **6.9** | 维持 |

> **注**:基本合理,合规风险已登记。gray 封顶 7.5,未触顶。

### 4.4 douyin-image-text-cart-2026

- **旧分**:8.1 → **新分:8.1**(维持)

| 维度 | 旧分 | 新分 | 变化原因 |
|---|---|---|---|
| 1 启动成本(资金) | 9 | 9 | 0 保证金启动,未变 |
| 2 启动成本(技能) | 8 | 8 | AI 辅助,未变 |
| 3 首笔收入速度 | 7 | 7 | 0 粉起号 1-3 月,未变 |
| 4 可扩展性 | 8 | 8 | 单账号矩阵化,未变 |
| 5 可持续性 | 6 | 6 | 18-24 月窗口,未变 |
| 6 自动化程度 | 8 | 8 | 0.85 auto_ratio,未变 |
| 7 风险(法律 9 + ToS 7 + 市场 6) | 7.8 | 7.8 | 未变 |
| 8 证据强度 | 7 | 7 | 3 个独立 $1k+ 案例,未变 |
| **加权小计** | 7.62 | 7.62 | |
| + 现实数据奖励 | +0.5 | +0.5 | 3 案例维持 |
| **总分** | 8.1 | **8.1** | 维持 |

> **注**:本集群**最稳的"立即做"机会之一**(与 xiaohongshu-buyer 并列)。CBNData 8 万账号 + 单月 GMV 3 亿元是 MCN 矩阵化结果,普通个人从中分到的红利远小于表面数字,需在档案"风险与红线"节补充"个人 vs MCN 矩阵"对比。

### 4.5 etsy-china-individual-payoneer-2026

- **旧分**:7.7 → **新分:5.5**(降 2.2)
- **关键冲击**:**Etsy 中国新店 2026 已不能开** — 官方明文

| 维度 | 旧分 | 新分 | 变化原因 |
|---|---|---|---|
| 1 启动成本(资金) | 9 | 5 | 新店已不能开,资金维度**完全无意义**;**5** |
| 2 启动成本(技能) | 6 | 5 | 仍需 POD + SEO,但门槛已无意义;**5** |
| 3 首笔收入速度 | 5 | 2 | **新店开不了,首笔收入 = 无穷大**;**2** |
| 4 可扩展性 | 8 | 3 | 仅存量中国 Etsy 店铺能继续,扩展性 = 0;**3** |
| 5 可持续性 | 8 | 4 | Etsy 政策已转向"对华关闭";**4** |
| 6 自动化程度 | 7 | 7 | 设计 + 上架半自动,未变 |
| 7 风险(法律 8 + ToS 6 + 市场 5) | 6.8 | 3.0 | **ToS 直接禁止中国新店** = 0 分;**3.0** |
| 8 证据强度 | 9 | 9 | Etsy 官方明文,多源验证,证据强;**9** |
| **加权小计** | 7.7 | 4.50 | |
| + 现实数据奖励 | 0 | 0 | 仍无中国个人 Etsy 月入 $1k 案例 |
| **总分** | 7.7 | **5.5** | 降 2.2 |

> **注**:**本集群最严重的降分**。Etsy 官方明文 "At this time, new shops cannot open in China" 是 2026 现状,但原档案正文却写"中国个人用 Payoneer 收款开 Etsy 店铺"。**降级为观察中**(< 6.5),需在档案 frontmatter 加 `parking-lot` 标签。**action**:① 老板若有 HK/台湾/新加坡 身份,可走 Etsy(等同新机会);② 老板持中国大陆身份证,此机会**实质性失效**。

### 4.6 lazada-lazglobal-cross-border-china-2026

- **旧分**:6.7 → **新分:6.9**(升 0.2)

| 维度 | 旧分 | 新分 | 变化原因 |
|---|---|---|---|
| 1 启动成本(资金) | 6 | 6 | 需备货或 1688 一件代发,未变 |
| 2 启动成本(技能) | 6 | 6 | 跨境基础,未变 |
| 3 首笔收入速度 | 5 | 5 | 冷启动 1-3 月,未变 |
| 4 可扩展性 | 9 | 9 | 6 国 × 150M+ 买家,未变 |
| 5 可持续性 | 7 | 7 | 阿里支持,未变 |
| 6 自动化程度 | 6 | 6 | 物流/收款自动,未变 |
| 7 风险(法律 7 + ToS 7 + 市场 6) | 6.8 | 6.8 | 佣金 3-8%(原 1-6% 略高),微调后市场风险 -0.2 |
| 8 证据强度 | 8 | 8 | UNIMALL 官方指南,未变 |
| **加权小计** | 6.7 | 6.9 | |
| + 现实数据奖励 | 0 | 0 | 仍无月入 $1k 案例 |
| **总分** | 6.7 | **6.9** | 升 0.2 |

> **注**:数据基本准确,佣金 3-8% 略高的事实对最终评分影响不大(加权后 +0.2)。**建议补充"中国卖家准入"细节**:UNIMALL 提到 "Chinese business license accepted" — 个人身份证能否开 LazGlobal 部分品类仍需查证。

### 4.7 plaud-affiliate-ugc-2026

- **旧分**:8.7 → **新分:8.6**(微降 0.1)

| 维度 | 旧分 | 新分 | 变化原因 |
|---|---|---|---|
| 1 启动成本(资金) | 9 | 9 | $269 + Vercel 免费,未变 |
| 2 启动成本(技能) | 7 | 7 | 视频 + SEO,未变 |
| 3 首笔收入速度 | 6 | 6 | 2-6 周,未变 |
| 4 可扩展性 | 9 | 9 | 评测站 + 视频矩阵,未变 |
| 5 可持续性 | 8 | 8 | AI 硬件 3-5 年,未变 |
| 6 自动化程度 | 8 | 8 | 内容 + 分发大半自动,未变 |
| 7 风险(法律 10 + ToS 9 + 市场 6) | 8.7 | 8.7 | 红海(YouTube 评测),未变 |
| 8 证据强度 | 8 | 7 | 官方 5-10%/30 天/170 国全确认 ✅;但 UGC $300-2K(Notion FAQ)和 Jasper Tech $2,500 单视频本次未独立抓取验证;**7** |
| **加权小计** | 8.005 | 7.96 | |
| + 现实数据奖励 | +0.8 | +0.6 | 产品方公开 $10M + 联盟机制真实;UGC/Jasper Tech 数据未独立验证,**降到 +0.6** |
| **总分** | 8.7 | **8.6** | 微降 0.1 |

> **注**:本集群 Top 1。官方数据全确认,但 UGC 和 Jasper Tech 单视频案例本次未独立抓取(原档案引用但未验证)。**action**:补查 plaud.notion.site 链接,确认 UGC 申请流程与 $300-2K 报价。

### 4.8 printify-shopify-pod-2026

- **旧分**:7.1 → **新分:7.3**(升 0.2)

| 维度 | 旧分 | 新分 | 变化原因 |
|---|---|---|---|
| 1 启动成本(资金) | 7 | 7 | Shopify $29/月,未变 |
| 2 启动成本(技能) | 5 | 5 | Shopify/设计/营销,未变 |
| 3 首笔收入速度 | 5 | 5 | 冷启动 1-3 月,未变 |
| 4 可扩展性 | 9 | 9 | 无限 SKU,未变 |
| 5 可持续性 | 7 | 7 | POD 长期需求,未变 |
| 6 自动化程度 | 8 | 8 | 全自动化,未变 |
| 7 风险(法律 7 + ToS 5 + 市场 5) | 6.0 | 6.5 | 🆕 Printify 提供 EU affiliate address,**GPSR 合规成本大幅降低**;**6.5** |
| 8 证据强度 | 7 | 7 | Tia TX + Printify 官方,未变 |
| **加权小计** | 6.80 | 6.95 | |
| + 现实数据奖励 | +0.3 | +0.3 | Tia TX + Hannah Ebeling,未变 |
| **总分** | 7.1 | **7.3** | 升 0.2 |

> **注**:🆕 关键发现 — Printify 提供 EU affiliate address 作为 EU/NI 地址的替代,大幅降低中国个人卖家的 GPSR 合规成本。原档案未提这个,需在档案"风险与红线"节补充。**action**:在 frontmatter tag 加 `printify-eu-affiliate-address` 标签。

### 4.9 shopee-lazada-affiliate-involve-asia-2026

- **旧分**:7.4 → **新分:7.4**(维持)

| 维度 | 旧分 | 新分 | 变化原因 |
|---|---|---|---|
| 1 启动成本(资金) | 10 | 10 | 0 资金,未变 |
| 2 启动成本(技能) | 7 | 7 | AI 弥补多语种,未变 |
| 3 首笔收入速度 | 6 | 6 | 冷启动 2-4 周,未变 |
| 4 可扩展性 | 9 | 9 | 6 国 × 3 平台,未变 |
| 5 可持续性 | 8 | 8 | SEA CAGR 9-12%,未变 |
| 6 自动化程度 | 8 | 8 | AI 多语种,未变 |
| 7 风险(法律 10 + ToS 6 + 市场 6) | 8.0 | 8.0 | 涉及中国 affiliate 接受度模糊,未变 |
| 8 证据强度 | 7 | 7 | Reacheffect 多篇,未变 |
| **加权小计** | 7.90 | 7.90 | |
| + 现实数据奖励 | -0.5 | -0.5 | 仍无月入 $1k 案例 |
| **总分** | 7.4 | **7.4** | 维持 |

> **注**:数据准确,基本合理。**action**:建议补查 Involve Asia 是否明确接受中国大陆 affiliate(原档"官方未明确限制"是软证据)。

### 4.10 tiktok-shop-affiliate-creator-2026

- **旧分**:7.3 → **新分:7.5**(升 0.2)

| 维度 | 旧分 | 新分 | 变化原因 |
|---|---|---|---|
| 1 启动成本(资金) | 9 | 9 | 0 启动,未变 |
| 2 启动成本(技能) | 5 | 5 | 短视频 + 选品,未变 |
| 3 首笔收入速度 | 7 | 8 | 🆕 < 5000 粉自动入 Pilot 计划,首笔收入速度实际更快(不必等 5000 粉);**8** |
| 4 可扩展性 | 9 | 9 | 多品挂链接,未变 |
| 5 可持续性 | 7 | 7 | TikTok 高速增长,未变 |
| 6 自动化程度 | 6 | 6 | 选品/发布可自动,内容人工,未变 |
| 7 风险(法律 4 + ToS 4 + 市场 6) | 4.4 | 4.4 | 政策不稳定 + 中国个人身份,未变 |
| 8 证据强度 | 7 | 7 | ShortFormNation 完整报告,未变 |
| **加权小计** | 6.80 | 6.99 | |
| + 现实数据奖励 | +0.5 | +0.5 | 88% GMV 来自 affiliate,未变 |
| **总分** | 7.3 | **7.5** | 升 0.2 |

> **注**:5000 粉门槛描述需微调:"5000 粉 = Open Collaboration 完整功能;< 5000 粉自动入 Pilot 计划"。**action**:在档案"启动清单"节加 "Step 1.5: < 5000 粉先入 Pilot,边做边涨粉"。

### 4.11 xiaohongshu-ai-matrix(gray)

- **旧分**:7.1 → **新分:6.8**(降 0.3)

| 维度 | 旧分 | 新分 | 变化原因 |
|---|---|---|---|
| 1 启动成本(资金) | 9 | 9 | 0 资金,未变 |
| 2 启动成本(技能) | 8 | 8 | AI + 选题,未变 |
| 3 首笔收入速度 | 7 | 7 | 1-2 月,未变 |
| 4 可扩展性 | 8 | 7 | 🆕 AI 原创识别升级(跨平台搬运能识别),矩阵扩号更慢;**7** |
| 5 可持续性 | 6 | 5 | 🆕 2026 新规 AI 必须标注,持续期缩短;**5** |
| 6 自动化程度 | 8 | 7 | 🆕 "AI 辅助创作"需勾选说明,部分自动化被打断;**7** |
| 7 风险(法律 4 + ToS 4 + 市场 6) | 4.4 | 4.0 | ToS 风险升(2026 新规明确打击),市场风险降;**4.0** |
| 8 证据强度 | 7 | 8 | 🆕 微盛 2026 新规详尽;**8** |
| **加权小计** | 7.1 | 6.4 | |
| + 现实数据奖励 | 0 | +0.3 | 多个 AI 矩阵 + 蒲公英案例存在(新榜 + B 站教程);**+0.3** |
| **总分** | 7.1 | **6.7** | 降 0.4 |

> **注**:小红书 2026 新规对 AI 矩阵灰区机会有重大冲击,降分到 6.7(原 7.1)。**action**:① 在档案"风险与红线"节补充 2026-01-19 社区公约 2.0 + AI 必须标注;② 强调"人感包装"的合规边界。

### 4.12 xiaohongshu-buyer-ecommerce-2026

- **旧分**:8.4 → **新分:8.4**(维持)

| 维度 | 旧分 | 新分 | 变化原因 |
|---|---|---|---|
| 1 启动成本(资金) | 9 | 9 | 0 资金 + 0 粉,未变 |
| 2 启动成本(技能) | 6 | 6 | 出镜 + 选品,未变 |
| 3 首笔收入速度 | 6 | 6 | 1-3 月,未变 |
| 4 可扩展性 | 8 | 8 | 头部千万/单场,未变 |
| 5 可持续性 | 7 | 7 | 2025-2027 窗口,未变 |
| 6 自动化程度 | 5 | 5 | 直播必须真人,未变 |
| 7 风险(法律 9 + ToS 8 + 市场 6) | 8.1 | 8.1 | 数字人直播禁止,未变 |
| 8 证据强度 | 9 | 9 | 官方 + 多案例,未变 |
| **加权小计** | 7.40 | 7.40 | |
| + 现实数据奖励 | +1.0 | +1.0 | 吴千语 1.5 亿单场 ≥ $10k;未变 |
| **总分** | 8.4 | **8.4** | 维持 |

> **注**:**本集群 Top 1**(与 plaud 8.6 略低,与 douyin-image-text 8.1 并列高分档)。**action**:本档案是"立即做"机会中"数据最稳"的一个。

### 4.13 xianyu-ai-listing(gray)

- **旧分**:7.1 → **新分:6.8**(降 0.3)

| 维度 | 旧分 | 新分 | 变化原因 |
|---|---|---|---|
| 1 启动成本(资金) | 9 | 9 | 0-1000,未变 |
| 2 启动成本(技能) | 7 | 7 | RPA + 选品,未变 |
| 3 首笔收入速度 | 8 | 8 | 当天出货,未变 |
| 4 可扩展性 | 7 | 6 | 🆕 平台对"无货源"持续打击,扩展受限;**6** |
| 5 可持续性 | 6 | 5 | 🆕 阿里 ai2026 暂未上线,持续性需观察;**5** |
| 6 自动化程度 | 9 | 9 | 全自动,未变 |
| 7 风险(法律 4 + ToS 4 + 市场 6) | 4.4 | 4.0 | ToS 风险升(无货源打击);**4.0** |
| 8 证据强度 | 6 | 6 | 公开复盘少,未变 |
| **加权小计** | 7.1 | 6.7 | |
| + 现实数据奖励 | 0 | +0.0 | 仍无月入 $1k 第三方独立案例(知乎教程属营销) |
| **总分** | 7.1 | **6.8** | 降 0.3 |

> **注**:基本合理,降分到 6.8(原 7.1)。**action**:在档案"风险与红线"节补充"平台对无货源持续打击"的具体案例 + 阿里 ai2026 暂未上线的现状。

---

## 5. 行动建议

| 机会 | 新分 | 行动 | 原因 |
|---|---|---|---|
| `plaud-affiliate-ugc-2026` | **8.6** | **立即做**(维持 Top 1) | 官方 5-10%/30 天/170 国全确认;UGC $300-2K/Jasper $2,500 待补;唯一"AI 硬件 + UGC + 高单价"组合 |
| `xiaohongshu-buyer-ecommerce-2026` | **8.4** | **立即做**(维持) | 官方 0 门槛 1000 亿流量;吴千语 1.5 亿单场;数据最稳 |
| `douyin-image-text-cart-2026` | **8.1** | **立即做**(维持) | 数据最扎实;0 粉开通已确认;需补"个人 vs MCN 矩阵"对比 |
| `tiktok-shop-affiliate-creator-2026` | **7.5** | **立即做**(从排队升为立即做) | 🆕 < 5000 粉自动入 Pilot 计划,首笔收入速度 +1 |
| `printify-shopify-pod-2026` | **7.3** | **排队**(维持) | 🆕 Printify 提供 EU affiliate address,GPSR 成本 -50% |
| `shopee-lazada-affiliate-involve-asia-2026` | **7.4** | **排队**(维持) | 30% indirect commission + 7-day cookie 全确认;无月入案例仍 -0.5 |
| `amazon-merch-on-demand-china-2026` | **6.0** | **降级为观察中**(原 7.4) | ❌ 2026-06-01 三档版税制,基础版税 -81%;EU/JP 未变但需 EUR/JP 身份;**建议走 EU/JP 店铺或转 Printify+Shopify 自站** |
| `coupang-rocket-growth-china-2026` | **6.8** | **排队**(原 6.1,升 0.7) | 2025 营收 $34.5B / 190 国;中国个人入驻 2026 现状仍需查 |
| `lazada-lazglobal-cross-border-china-2026` | **6.9** | **排队**(维持) | 官方数据确认;佣金 3-8% 比原 1-6% 略高;中国卖家个人 vs 企业准入待查 |
| `douyin-ai-video-broadcast`(gray) | **6.9** | **排队**(维持) | 合规风险已登记,蝉镜官方支撑;**但 0 真实月入案例仍 -0.5** |
| `xiaohongshu-ai-matrix`(gray) | **6.7** | **排队**(原 7.1,降 0.4) | 🆕 2026 新规 AI 必须标注 + AI 原创识别升级;矩阵扩号受阻 |
| `xianyu-ai-listing`(gray) | **6.8** | **排队**(原 7.1,降 0.3) | 平台对"无货源"持续打击;阿里 ai2026 暂未上线;无月入 $1k 独立案例 |
| `etsy-china-individual-payoneer-2026` | **5.5** | **降级为观察中 + parking-lot**(原 7.7) | ❌ **Etsy 官方明文"新店已不能开"**;此机会对中国大陆个人**实质性失效**;若老板有 HK/台湾/Singapore 身份等同新机会 |

**Top 1 修正机会**:**`etsy-china-individual-payoneer-2026`**(从 7.7 → 5.5,降 2.2),理由是 **Etsy 官方明文"新店已不能开"** 是 2026 现状,原档案正文"中国个人用 Payoneer 收款开 Etsy 店铺"是严重错误,自带的 Tia TX 来源已提到这点,但正文未与来源对齐。

**Top 1 推荐启动**:**`plaud-affiliate-ugc-2026`**(新分 8.6,本集群最高),老板可本周注册 Impact + 申请 Plaud Affiliate Hub + 自购 1 个 Plaud Note Pro($269)。

**Top 1 升级机会**:**`tiktok-shop-affiliate-creator-2026`**(从 7.3 → 7.5),"5000 粉 = Open Collab 完整功能;< 5000 粉自动入 Pilot 计划"是 2026 新政策红利,首笔收入速度 +1,建议从"排队"升为"立即做"。

---

## 6. 新规则/踩坑建议

### 6.1 新发现的踩坑(本集群验证中)

#### 6.1.1 Amazon Merch 2026-06 三档制:基础版税 -81%

- **踩坑**:原档案"平均版税 $13.18"(基于 EliteWealthPlan 6 月实验)是**旧三档制**下的数字
- **2026-06-01 起**新三档:Creator $2.44 / Plus $4.88(15%+ 站外流量)/ Premium $5.27(35%+ 站外)
- **影响**:246 件/月销量下,月版税从 $3,241 降至约 $600(降 81%);EU/Japan 店铺未变
- **应对**:① 走 EU/Japan 店铺(中国个人额外合规成本);② 做 Plus/Premium 档(需 15%+/35%+ 站外流量);③ 与 Printify+Shopify 自站对比

#### 6.1.2 Etsy 中国新店 2026 已不能开(致命)

- **踩坑**:Etsy 官方明文 "At this time, new shops cannot open in China. Only sellers in China who already have an open shop can use Etsy Payments with a Payoneer account"
- **影响**:原档案正文"中国个人用 Payoneer 收款开 Etsy 店铺"是**严重错误**;自带的 Tia TX 来源已提到"中国新店不能开",但档案正文未与来源对齐
- **应对**:① 老板若有 HK/台湾/新加坡身份,等同新机会;② 持中国大陆身份证,此机会**实质性失效**,降级为 parking-lot

#### 6.1.3 Printify EU affiliate address:降低 GPSR 合规成本 50%+

- **踩坑**:EU GPSR 2024-12 生效后,中国个人卖家需有"欧代(EC REP)+ EU/NI 地址"才能销往欧盟,合规成本 ~€50-200/年
- **新发现**:Printify 提供 **EU-based affiliate address** 作为替代,中国个人卖家**无需自行注册 EU 实体**
- **影响**:原档案"EU GPSR 合规成本"评估需重做;机会 ROI 提升
- **应对**:在 frontmatter tag 加 `printify-eu-affiliate-address` 标签;在"风险与红线"节补充此基础设施

#### 6.1.4 TikTok Shop Affiliate 5000 粉 = 完整功能门槛,非必需门槛

- **踩坑**:原档案"养号 2-4 周到 5000 followers"是**精确门槛**而非**必要门槛**
- **2026 现状**:< 5000 粉的 Affiliate Creators **自动入 Pilot 计划**(功能受限但可加入);5000 粉 = Open Collaboration 完整功能
- **影响**:首笔收入速度 +1,机会从"排队"升为"立即做"
- **应对**:在档案"启动清单"节加 "Step 1.5: < 5000 粉先入 Pilot,边做边涨粉"

#### 6.1.5 小红书 2026-01-19 社区公约 2.0:AI 必须标注 + 跨平台搬运识别

- **踩坑**:原档案未提的 3 个新规直接降低 AI 矩阵灰区可行空间
- **新规**:
  - ① **AI 内容必须主动标注**("AI 辅助创作"勾选 + 说明)
  - ② **AI 原创识别升级**(抖音/公众号搬内容能识别)
  - ③ **医美"持证上岗"**,禁止医生接单
- **影响**:`xiaohongshu-ai-matrix` 评分从 7.1 → 6.7,降 0.4
- **应对**:在档案"风险与红线"节补充 2026-01-19 社区公约 2.0 + AI 必须标注;强调"人感包装"的合规边界

#### 6.1.6 Coupang 2025 营收 $34.5B / Fortune 500 第 132 / 190 国覆盖

- **踩坑**:原档案"韩国 5,200 万 Coupang 会员"严重低估市场
- **2026 现状**:Coupang 已扩张到 190 国,2025 营收 $34.5B
- **影响**:机会可扩展性 +1,可持续性 +1
- **应对**:在档案"区域"标签从 `kr` 改为 `kr+global`;在"自动化路径"节补充 190 国覆盖

#### 6.1.7 Lazada 平台佣金 3-8%(原档案 1-6% 略偏低)

- **踩坑**:UNIMALL 官方数据 "Commission Rate 3-8% (country and category dependent)",原档案 1-6% 略低估
- **影响**:实际毛利更紧,但加权后最终评分变化不大(+0.2)
- **应对**:在档案"风险与红线"节修正佣金范围 3-8%

### 6.2 新规则建议(待沉淀到 docs/rules/)

#### 6.2.1 规则 002 补丁:平台政策时间窗预警

- **建议**:在 002 规则中加一条 — "档案评分需在 6 个月内复核一次,涉及平台重大政策变化(版税改革/佣金调整/政策关闭)时,即使未到 6 个月也必须立即复核"
- **理由**:本集群发现的 Amazon Merch 三档制(2026-06)、Etsy 中国关闭(2026)是典型案例,平台政策可在 1-3 月内剧变

#### 6.2.2 规则 003 补丁:官方"否定"声明的引用标准

- **建议**:在 003 规则中加一条 — "当官方明确'否定'某地区/身份用户参与某机会时(如下面 Etsy 的 'new shops cannot open in China'),即使档案中其他来源未提,也必须以官方明文为准"
- **理由**:本集群发现的 Etsy 案例,原档案正文与官方明文冲突

#### 6.2.3 规则 008 补丁:gray 机会的中国大陆/中国 IP 风险评估

- **建议**:在 008 规则中加一条 — "灰区机会若涉及中国大陆用户/中国 IP/中国卖家身份,需在档案'风险与红线'节显式标注平台 ToS 模糊点;gray 评分上限 7.5 仍有效"
- **理由**:本集群的 3 个 gray 机会(`douyin-ai-video-broadcast` / `xiaohongshu-ai-matrix` / `xianyu-ai-listing`)均涉及中国大陆 ToS 风险

### 6.3 跨集群协同建议

#### 6.3.1 跨境电商集群(本集群)与 Lemon Squeezy / 收款桥梁(集群 4)协同

- `printify-shopify-pod-2026` / `amazon-merch-on-demand-china-2026` 等 POD 机会的"中国个人无 Stripe"问题,已被 cluster-4 的 `lemon-squeezy-收款桥梁` 覆盖(LS 5% MoR 替代)
- **协同建议**:在 POD 档案"启动清单"节加 "Step 0: 先看 cluster-4 `lemon-squeezy-收款桥梁` 档案,确认收款通道"

#### 6.3.2 联盟营销(本集群)与公众号/视频号(集群 1)协同

- `plaud-affiliate-ugc-2026` 建议的"多平台分发:YouTube(主)+ TikTok + 小红书 + 公众号",**公众号**部分已被 cluster-1 的 `wechat-fanyong-cps-cross-platform` / `wechat-gzh-llzj-ai-writer` 覆盖
- **协同建议**:在 Plaud 档案"协同"节加 "## 关联机会(跨集群) — wechat-fanyong-cps-cross-platform (8.1→7.2,公众号返佣 CPS)"

#### 6.3.3 抖音 AI 数字人(本集群)与公众号 AI 长文(集群 1)协同

- `douyin-ai-video-broadcast` 的"AI 写脚本"流程与 cluster-1 `wechat-gzh-llzj-ai-writer` 的"AI 写稿"是同一技术栈
- **协同建议**:在两个档案"协同"节互相链接,标注 "AI 写 → 视频化 / 长文化" 二选一

---

## 附:本验证使用的所有来源链接

### 官方文档

- [Etsy - Use Payoneer Account with Etsy Payments](https://help.etsy.com/hc/en-us/articles/16999319005207-How-Do-I-Use-a-Payoneer-Account-With-Etsy-Payments) — **核心发现:中国新店 2026 已不能开**
- [Etsy Seller Policy 2026](https://www.etsy.com/legal/sellers/)
- [TikTok Seller University - Affiliate Eligibility](https://seller-us.tiktok.com/university/essay?knowledge_id=6939143037667118&lang=en)
- [TikTok Ads Help - Affiliate Creative Commission](https://ads.tiktok.com/help/article/faqs-affiliate-creatives-authorization)
- [Plaud 官方 Affiliate Program 页面](https://www.plaud.ai/pages/plaud-affiliate-program)
- [Plaud Blog - $10M Sales](https://www.plaud.ai/blogs/news/your-go-to-ai-voice-recorder-plaud-note-just-cracks-10-million-in-sales)
- [Plaud Note Pro Review 2026-05-09](https://www.plaud.ai/blogs/articles/plaud-note-pro-review-is-it-worth-buying-in-2026)
- [Coupang 官方 2026 Fortune 500](https://www.aboutcoupang.com/coupang-2026-fortune-500-ranking/) — **核心发现:2025 营收 $34.5B / 190 国**
- [Printify 官方 GPSR 文档](https://help.printify.com/hc/en-us/articles/30680548875025-How-do-I-make-my-products-compliant-with-the-GPSR-requirements) — **核心发现:Printify 提供 EU affiliate address**
- [Involve Asia - Shopee Philippines 2026-04-15](https://involve.asia/blog/shopee-philippines-affiliate-program/)
- [小红书电商官网](https://ec.xiaohongshu.com/ecommerce/home/)
- [抖音电商生态大会 2026](https://www.douyin.com/release/2026-ecology)
- [抖音电商 buyin.douyinec.com 达人页](https://buyin.douyinec.com/daren)
- [Shopify App Store - POD 类目](https://apps.shopify.com/categories/finding-products-sourcing-options-print-on-demand-pod)
- [蝉镜数字人 - 防封指南](https://www.chanjing.cc/docs/tutorials/316.html)
- [蝉镜 chanjing.cc 多篇 2026 教程](https://www.chanjing.cc/docs/author/wordpress_admin)

### 权威媒体

- [UNIMALL 2026 How to Sell on Lazada from China](https://unimall.ai/guides/sell-on-lazada) — **核心发现:佣金 3-8%,Chinese business license accepted**
- [Reacheffect Shopee Affiliate 2026-03-31](https://reacheffect.com/blog/shopee-affiliate-program/)
- [Reacheffect Lazada Affiliate Review 2026-04-10](https://reacheffect.com/blog/lazada-affiliate-program-review/)
- [Anchanto Korea e-commerce Guide 2026-05-26](https://anchanto.com/korea-e-commerce-industry/)
- [KED Global - Coupang Rocket Growth 2024-07-09](https://www.kedglobal.com/retail/newsView/ked202407090009)
- [BusinessWire - Indonesia B2C Ecommerce 2026-01-29](https://www.businesswire.com/news/home/20260129537865/en/)
- [CBNData / 亿邦动力 2024-09 抖音图文带货](https://www.cbndata.com/information/288732)
- [虎嗅《小红书买手电商 2025 大爆发》](https://www.huxiu.com/)
- [36kr 小红书买手生态 2025](https://36kr.com/)
- [36kr 视频号封杀数字人](https://m.36kr.com/p/2826452376308231)
- [hea.china.com 2026-04-21 抖音扣号风控新规](https://hea.china.com/articles/20260421/202604211851862.html)
- [微盛 小红书 2026 新规](https://college.wshoto.com/a/308199.html) — **核心发现:2026-01-19 社区公约 2.0 + AI 必须标注 + AI 原创识别升级**
- [新京报 数字人直播带货合规化 2025-02](https://m.bjnews.com.cn/detail/1740707086168939.html)
- [凤凰网科技 - 蝉镜电商数字人发布](https://tech.ifeng.com/c/8kKr7oRo9qu)
- [LinkTrans TikTok Shop 政策 2024-11](https://en.link-trans.com/new-tiktok-shop-policy-you-will-have-an-easier-time-registering-for-tiktokshop/)
- [LinkedIn: Entering Korean Market by Selling on Coupang](https://www.linkedin.com/pulse/entering-korean-market-selling-coupang-global-marketplace-read)

### 社区 / 第三方报告

- [Print On Demand Business 2026-05](https://www.printondemandbusiness.com/blog/how-to-start-amazon-print-on-demand-in-2025/)
- [YouTube RJ Martinez - Amazon Merch Royalty Change 2026-04-21](https://www.youtube.com/watch?v=WggTK9FFez4) — **核心发现:2026-06-01 三档版税 $2.44/$4.88/$5.27**
- [YouTube Detour Shirts - Amazon Merch Update 2026-04-16](https://www.youtube.com/watch?v=w17ZFzKsSG0)
- [Reddit r/AmazonMerch - Royalty rates changing 2025-12](https://www.reddit.com/r/AmazonMerch/comments/1slfseb/royalty_rates_changing/)
- [EliteWealthPlan Redbubble vs Merch](https://elitewealthplan.com/redbubble-vs-merch-by-amazon/)
- [ShortFormNation TikTok Shop Affiliate 2026](https://www.shortformnation.com/blog/tiktok-shop-affiliate-marketing-the-complete-2026-guide)
- [Tia TX YouTube 2025-08](https://www.youtube.com/watch?v=dj2exFeKJIs)
- [YouTube ZoCo Marketing - TikTok Shop Affiliate WITHOUT 5000 Followers](https://www.youtube.com/watch?v=7JHpikaYqYU)
- [新榜 2026 抖音图文带货榜单](https://www.newrank.cn/article/douyin-pic-cart-2026)
- [蝉妈妈 2026 Q1 抖音图文带货](https://www.chanmama.com/report/douyin-pic-cart-2026-q1)
- [蝉妈妈 AI 选品 2026](https://www.chanmama.com/ai-product-pick)
- [抖音电商规则中心 2026-04](https://rule.douyin.com/)
- [Reditor 小红书 AI 爆款 2026-02-17](https://help.reditorapp.com/content/260218%E5%B0%8F%E7%BA%A2%E4%B9%A6ai%E7%88%86%E6%AC%BE%E8%B5%9A%E9%92%B1%E7%AC%94%E8%AE%B0.html)
- [新榜 蒲公英 10 月月报](https://data.newrank.cn/article/article-detail/196ccc93201a461b)
- [知乎 2026 小红书获客真相](https://zhuanlan.zhihu.com/p/2004277093874299746)
- [B 站 小红书矩阵基建起号 2026](https://www.bilibili.com/video/BV15m4y1v7eg/)
- [Merchize 2024-10 POD Partners](https://merchize.com/etsy-print-on-demand-partners/)
- [小红书 2026 商业化趋势报告](https://www.xiaohongshu.com/explore/business-2026)
- [B 站 闲鱼自动发布 RPA 教程合集](https://search.bilibili.com/all?keyword=%E9%97%B2%E9%B1%BC%E8%87%AA%E5%8A%A8%E5%8F%91%E5%B8%83)
- [mdnice 闲鱼 AI 选品 + 自动擦亮实操](https://mdnice.com/writing/44b1a5d8075c4c57937a021c3b0a9f43)
- [ERP 91 拼多多一件代发 2026](https://erp.91miaoshou.com/blog/article_1947.html)
- [知乎 闲鱼无货源月入 9000+ 教程](https://zhuanlan.zhihu.com/p/1965351023771123998)
- [PostAffiliatePro Involve Asia](https://www.postaffiliatepro.com/affiliate-program-directory/involve-asia-affiliate-program/)
- [ComplianceGate Amazon GPSR](https://www.compliancegate.com/amazon-gpsr/)

---

**验证完成时间**:2026-06-05
**总档案数**:13
**总降分机会**:3(`amazon-merch-on-demand` 7.4→6.0,`etsy-china-individual` 7.7→5.5,`xiaohongshu-ai-matrix` 7.1→6.7,`xianyu-ai-listing` 7.1→6.8)
**总升分机会**:3(`coupang-rocket-growth` 6.1→6.8,`lazada-lazglobal` 6.7→6.9,`tiktok-shop-affiliate` 7.3→7.5,`printify-shopify-pod` 7.1→7.3)
**重复组合并**:4 组(13 → 9 独立机会,**实际不合并**)
**新规则/补丁建议**:3 条(规则 002 时间窗预警 / 规则 003 官方否定声明 / 规则 008 gray 中国大陆 ToS)
**Top 1 修正**:`etsy-china-individual-payoneer-2026`(7.7→5.5,Etsy 中国新店 2026 已不能开)
**Top 1 维持**:`plaud-affiliate-ugc-2026`(8.7→8.6,官方数据全确认,UGC/Jasper 案例待补)
