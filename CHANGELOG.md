---
type: changelog
status: active
last_updated: 2026-06-04
---

# Padme 工作区变更日志

按时间倒序记录工作区重要变更。详细规则参见 `docs/rules/`，机会库参见 `docs/opportunities/`。

## 2026-06-04 — 第五批扫描 + 工作区扩容

### 触发
- 用户要求"持续启动 sub agent 全网搜索赚钱机会,最大并发 8"
- 工作区已存在 63 个活跃机会档案,v2.0 评分体系已稳定

### 行动
1. **启动 8 个 sub agent 并发扫描** 8 个新赛道:
   - AI 编程 / Vibe Coding 生态
   - AI Agent / MCP 经济生态
   - AI 玩具 / AI 硬件
   - AI 心理咨询 / 情感陪伴商业化
   - 小红书 / 抖音电商 2026 新红利
   - Newsletter / Substack 付费订阅经济
   - AI 模特 / 虚拟人 / 数字分身
   - AI 安全 / 合规 / 水印 / 版权

2. **发现 36 个新机会**(评分 6.4-9.2)

3. **并行启动 4 个 sub agent 写 17 个高优先级机会档案**(≥ 8.0 normal + 1 gray)

### 落档清单(17 个,按评分降序)

| 机会 | 评分 | 标签 | region |
|---|---|---|---|
| EU AI Act 合规审计 SaaS | 9.2 | normal | global/eu |
| Agensi.io SKILL.md 销售 | 8.8 | normal | global |
| Plaud 联盟 + UGC | 8.7 | normal | global |
| AI 模特摄影 SaaS(Photo AI 复刻) | 8.6 | normal | global/cn |
| AI Dating Coach(Rizz 模式) | 8.4 | normal | us |
| 小红书个人买手电商 | 8.4 | normal | cn |
| 视频号小店分销 + 推客 | 8.3 | normal | cn |
| AI 硬件转写 + 行业模板订阅 | 8.3 | normal | global |
| AI 模拟面试 / 口语陪练 | 8.2 | normal | global |
| AI Red Team 服务 | 8.2 | normal | global |
| Beehiiv 50% Affiliate | 8.18 | normal | global |
| AI 智能眼镜深度评测 | 8.10 | normal | global |
| Voice AI Agent 集成 | 8.1 | normal | global |
| 抖音图文带货 | 8.1 | normal | cn |
| Newsletter Ghostwriting Service | 8.06 | normal | global |
| Vibe Coding 教学(PM/设计师) | 8.0 | normal | global |
| AI 角色卡多平台销售 | 8.0 | gray(突破) | global |

### 排队机会(已追加到 `_parking-lot.md`,10 个)

| 机会 | 评分 | 标签 | region |
|---|---|---|---|
| Newsletter + Skool 社群组合 | 7.94 | normal | global |
| 小红书付费笔记 / 专栏 | 7.9 | normal | cn |
| AI Agent Observability 自托管 | 7.9 | normal | global |
| 国内 AI 备案辅导 | 7.93 | gray | cn |
| Deepfake 检测 SaaS | 7.87 | normal | global |
| Newsletter 数字产品销售 | 7.73 | normal | global |
| x402 facilitator | 7.4 | gray | global |
| n8n + AI 模板销售 | 7.4 | normal | global |
| AI 商品图 / 虚拟试穿 | 7.2 | normal | global/cn |
| AI 智能玩具 IP 角色包 | 6.40 | normal | global |
| 小红书高客单线索获客 | 6.8 | gray | cn |

### 文档变更
- `docs/opportunities/README.md`: 63 → **80 个活跃机会**,重新按 v2.0 评分降序排序
- `docs/opportunities/_parking-lot.md`: 追加 10 个排队机会 + 第九批可激活机会池说明
- `docs/ACTION-PLAN.md`:
  - Top 3 调整为 **Lemon Squeezy 10.0 + EU AI Act 9.2 + Gumroad 9.2**
  - 决策记录增加 3 条: 第五批落档 / 接受 AI 角色卡灰度 / 新 gray 观察
  - 新晋 Top 5-10 备选清单

### 关键红线
- **EU AI Act 合规审计**: 严格规避"提供法律意见"红线,只做"技术审计 + 合规清单 + 模板代码"
- **AI 角色卡多平台**: 国内身份注册 GPT Store / Patreon 全部封禁,需海外身份
- **Plaud 联盟**: 严禁 Google Ads 竞品 Plaud 品牌词
- **小红书买手**: 直播需真人,纯数字人直播违规
- **视频号分销**: 完全禁止数字人直播

### 资金亏损预算
- 14 个新机会 $0 启动
- 3 个需小预算: 米多客 $2K/yr / GitHub Actions $0 / ElevenLabs $5/月起
- AI 角色卡 gray 机会: 亏损预算 $500 USD(可承受)

### 验证
- ✅ 17 个新档案 frontmatter 完整(8 字段全齐)
- ✅ 17 个新档案含 6 必填节 + 参考来源
- ✅ gray 机会 3 件套合规(风险红线 / 亏损预算 / 决策签字)
- ✅ 主索引排序与档案一致
- ✅ ACTION-PLAN 决策记录同步

### 下一步(给老板参考)
- [ ] 启动 Top 1-3 立即做(LS + EU AI Act + Gumroad)
- [ ] 30 天后看 Top 5-10 哪个先出 $1k+ MRR
- [ ] 第 6 批扫描候选: YouTube Shorts / TikTok LIVE 海外 / AI 律师 / AI 健身 / AI 营养师 / 跨境 AI 客服

---

## 2026-06-04 — v2.0 评分体系升级(第四批,回溯)

### 触发
- 63 个机会 v1 评分后发现:权重失衡(资金/风险/证据过低)、gray 与 normal 区分不够、缺乏"现实数据奖励"机制

### 关键变更
- 8 维度权重调整为: 资金 0.15 / 技能 0.05 / 首笔 0.15 / 扩展 0.10 / 持续 0.10 / 自动化 0.15 / 风险 0.15 / 证据 0.15
- 风险拆分为: `风险 = 0.5×法律合规 + 0.3×平台 ToS + 0.2×市场风险`
- 新增"现实数据奖励": -0.5(无案例) / 0(1 案例) / +0.3(明确收入) / +0.5(多独立) / +0.8($1k+/月) / +1.0($10k+/月)
- 决策阈值调整: ≥8.0 立即做 / 6.5-7.9 排队 / 5.0-6.4 观察 / <5.0 放弃
- gray 默认封顶 7.5,强月入 $1k+ 案例可 +0.5 突破到 8.0

### 升级效果
- Lemon Squeezy(原 9.2)→ 10.0(突出其"使能层"地位)
- Telegram Mini Apps 因 gray 封顶从 8.45 → 8.0
- MetaMask / 短剧 CPS 因中国法律风险跌至 6.1(观察)
- Hyperliquid 因 0 案例跌至 4.9(放弃)

### 文档变更
- `docs/rules/002-多维评分标准.md`: 升级为 v2.0,记录变更动机、变更日志
- `docs/opportunities/README.md`: 全部 63 个机会重评分
- `docs/ACTION-PLAN.md`: Top 3 决策更新

---

## 2026-06-04 — 第四批扫描(回溯,48 个新机会)

### 触发
- 用户最初要求"通过兼职接单网站 Micro-SaaS 化"
- 经讨论扩展为"全网 AI 淘金,自动建工作区"

### 行动
- 启动 5 个 sub agent 并发扫描 5 大赛道(AI 数字商品 / AI 服务 / Web3 / 国内自媒体 / 海外 Micro-SaaS)
- 启动第二轮 5 个 sub agent 扫描(平台分成 / 跨境 / 数据 API / 区域扩展 / 新平台红利)
- 启动第三轮 5 个 sub agent 扫描(垂直行业 SaaS / 政策红利 / 区域扩展 / 平台政策变化 / 利基)
- 共发现 48 个新机会,全部落档

### 关键发现
- **Lemon Squeezy 收款桥梁(10.0)**: 中国个人做海外 SaaS/数字商品的"使能层",5% MoR + Payoneer + 279+ 国收款
- **Gumroad 数字商品(9.2)**: 0 资金启动 + 多次复利
- **AI 订阅支付恢复 SaaS(9.1)**: 面向 Stripe/Paddle/LS 商家的 dunning 自动化,2 真实案例
- **Chrome 扩展付费市场(9.0)**: MV3 时代 + Plasmo 工具链 + Gmass $130K/月案例
- **WhatsApp Business AI Agent Builder(8.9)**: Meta 2026 新能力

### 文档变更
- 工作区从 0 → 63 个活跃机会
- `docs/rules/`: 001-009 系列规则建立
- `docs/sources/`: 28 个信息源档案建立
- `docs/ACTION-PLAN.md`: v1.0 决策文档
- `docs/opportunities/_parking-lot.md`: 5 个低分机会观察

---

## 工作区初始建立(2026-06-04)

- 创建 `docs/README.md`(文档总入口)
- 创建 `docs/rules/` 9 个规则文件
- 创建 `docs/sources/` 信息源档案
- 创建 `docs/opportunities/` 机会档案目录
- 创建 `docs/ACTION-PLAN.md` 决策文档
- 创建 `workflows/` 端到端工作区
