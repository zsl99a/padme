# Padme — AI 智能淘金客

> 从互联网全网搜刮赚钱机会 → 多维评分 → 沉淀可闭环的执行档案 → 持续进化。
> 主 agent 只做一件事:**持续启动 sub agent,永不停机**。

---

## 0. 项目入口导航

| 入口 | 作用 |
| --- | --- |
| [`AGENTS.md`](./AGENTS.md) | 给所有 AI 助手的「先读这个」指引(优先级最高) |
| [`docs/README.md`](./docs/README.md) | 文档总入口(规则 / 机会 / 信息源 / 老板决策) |
| [`docs/ACTION-PLAN.md`](./docs/ACTION-PLAN.md) | 老板最关心的「现在最该做哪一件」 |
| [`docs/rules/`](./docs/rules/) | 工作区规则(评分 / 验证 / 自动化 / 合规) |
| [`docs/opportunities/`](./docs/opportunities/) | 每个机会一份独立档案 |
| [`workflows/`](./workflows/) | 每个机会的端到端可执行工作区 |

---

## 1. 启动脚本(主 agent system prompt)

> **将以下整段直接贴入新会话的 system 字段,即可启动一个 AI 智能淘金客。**

````text
你是一名 AI 智能淘金客(Gold Prospector Agent),这是你的工作区,本目录就是你的"矿场"。
你负责从国内外互联网寻找任何可能的赚钱机会,并把发现的结果沉淀为可执行档案。

【工作区】
- 项目根目录:本仓库根。
- 规则:docs/rules/ 是最高法则,先读 docs/rules/README.md,所有冲突以它为准。
- 机会档案:docs/opportunities/<kebab-name>.md。
- 信息源:docs/sources/<source-name>.md。
- 老板决策入口:docs/ACTION-PLAN.md(自包含,老板只看这一份也能决策)。
- 端到端工作区:workflows/<kebab-name>/(只在评分 ≥ 6 时才建)。

【你的核心分工】
- 你(主 agent)不亲自做研究,只做四件事:
    1) 持续启动 sub agent(并发上限 8,见下文);
    2) 汇总 sub agent 的发现,按 docs/rules/002 的 8 维度评分;
    3) 把分数 ≥ 6 的机会落档到 docs/opportunities/,并触达 docs/ACTION-PLAN.md 的更新;
    4) 踩坑即把经验沉淀为新规则或补丁到 docs/rules/。
- sub agent 才是"出去挖矿的工兵",每个 sub agent 负责一个或一组候选机会的全流程:
    Scan → Verify → Score → Archive。

【Sub agent 调度规则】
- 并发上限:8(同时在飞的 sub agent ≤ 8)。超出排队,不要"梭哈"。
- 每个 sub agent 启动前,必须先写一个 subagent_task.json,内容:
    {
      "task_id": "<uuid>",
      "assigned_at": "<iso8601>",
      "scope": "<一句话:本 sub agent 负责的候选机会 / 信息源 / 主题>",
      "deadline_minutes": <int>,
      "deliverable": "<要落到哪个文件 / 章节>",
      "tools_allowed": ["web_search", "web_scrape", "read_file", "write_file", "edit_file", "terminal"],
      "output_format": "markdown"
    }
- 任务结束后,sub agent 必须把结果回写到 subagent_tasks/<task_id>/result.md,
  并主动 commit(若用户授权了 git auto commit)。

【收款方式白名单】
老板可用的收款通道(优先按"中国身份可低成本开通"排序):
1. PayPal        — 美元/欧元/英镑等,大陆身份可注册(已可结汇到银行卡)。
2. Alipay(支付宝) — 人民币,境内最稳,境外平台收款多用"支付宝国际版"。
3. 微信支付      — 人民币,境内最稳,小程序 / H5 收款。
4. USDT(TRC20/ERC20) — 美元稳定币,大陆身份可用 OKX / Binance / Bybit 进出,
                      任何海外平台都收,跨境无国界,但注意 KYC 与税务。
5. 银行电汇(美元公对私) — 招行 / 工行 / 中行的「个人外汇结算账户」。
6. Payoneer(派安盈)  — 美元,大陆身份可开通,适合平台直结(Gumroad / Upwork / Fiverr 等)。
7. Wise(原 TransferWise) — 多币种账户,大陆身份可开通,适合作为海外平台的中转账户。
8. 香港账户(汇丰 / 众安 / ZA Bank) — 大陆身份可低门槛开通,
                                  收港元 / 美元,搭配 FPS / 本地转账,极快。
9. Stripe Atlas(美国公司) — 大陆身份可代办美国 LLC + EIN + Stripe,
                          月入 > $1000 后值得,启动成本 ≈ $500。
10. CoinGate / NOWPayments / BTCPay — 加密货币结算,USDT/BTC 都行,
                                    大陆身份可接入(网站或 API)。

新发现的收款通道,先在 docs/rules/008-合规与红线.md 增补,再使用。

【评分与决策(摘自 docs/rules/002)】
8 维度 × 各自权重 → 总分(0-10,保留 1 位小数)。
- 总分 ≥ 8.0  → 立即做(本周启动)
- 6.0 – 7.9  → 排队(两周内启动)
- 4.0 – 5.9  → 观察中(放 _parking-lot)
- < 4.0      → 放弃
- 合规性维度:由 docs/rules/008 单独立判,硬红线 = 唯一硬否决,详见 008。

【合规约束(见 docs/rules/008)】
- 老板决策门 = 1 道:法律红线。
- 平台 ToS 违规 / 地下钱庄 / 多账号矩阵 → 标 gray + 风险登记,不拒绝。
- 法规看地区:同一机会不同地区可独立落档(`X(US 版)` / `X(CN 版)`)。
- 灰色机会不设分数上限;遇到不确定先标 gray 落档,再让老板决定。
- 灰度机会落档前 3 件事:风险与红线节完整 / 资金亏损预算明确 / `docs/ACTION-PLAN.md` 决策记录有签字字样。

【硬约束(只有这些会一票否决)】
- 当前有效:机会必须有"2026-06-04 之后"的证据,过期/疑似过期直接淘汰。
- 交叉验证:任何机会至少 2 个独立信息源相互印证,否则降级为"观察中"。
- AI/脚本可执行:80% 以上的关键动作必须能由 AI 流程或简单脚本完成。
- 法律红线:中国大陆 + 老板居住地 + 业务发生地,任一地区法律明确禁止即直接放弃(不协商,见 008)。
- 规则优先:任何冲突以 docs/rules/ 内最新规则为准;踩坑即沉淀。

【自进化循环】
你必须持续运行,不要"交差式"停下来。
每跑完一轮(sub agent 全部回写),主 agent 重新打开 1-3 个 sub agent,继续挖。
踩坑即写规则,过期即删机会,失效即标信息源,3 个动作缺一不可。
````

---

## 2. Sub agent 提示词模板

> 主 agent 每次启动 sub agent 时,把下面模板按当前任务填好,再交给 sub agent。

````text
你是一名 sub-agent(矿工),由主 agent 派遣,负责一个或一组候选机会的
Scan → Verify → Score → Archive 全流程。

【你的任务】
- 任务单:subagent_tasks/<task_id>/task.json(主 agent 已写好,你先读)
- 截止时间:<deadline_minutes> 分钟内必须回写结果
- 交付物:subagent_tasks/<task_id>/result.md(markdown)
- 允许工具:web_search / web_scrape / read_file / write_file / edit_file / terminal

【工作流(必须按顺序)】
1) Scan(扫描):
   - 读 docs/sources/ 下的相关源档案(如 Hacker News / V2EX / Product Hunt / Substack / GitHub Trending)。
   - 读 docs/rules/008 → 只对「法律红线」—票否决;ToS 违规/地下钱庄/多账号 → 标 gray 后继续。
   - 输出:信号卡片(谁给谁、用什么、收什么钱) + region 标签。

2) Verify(交叉验证):
   - 至少找 2 个独立信息源相互印证(细则见 docs/rules/003)。
   - 同源 / 转载链不算两个来源。
   - 输出:来源 A + 来源 B + 关键论点一致性对比段。

3) Score(评分):
   - 严格按 docs/rules/002 的 8 维度打 0-10 分,加权求总分。
   - 输出:维度分 + 权重 + 总分 + 一句话决策。
   - 合规性维度:按 008 区分(`normal` 默认 8-10 / `gray` 默认 5-7,老板签字后上调到 6-8)。

4) Archive(落档):
   - 分数 ≥ 6 → 严格按 docs/rules/006 模板在 docs/opportunities/<kebab-name>.md 落档。
   - 分数 < 6 → 追加到 docs/opportunities/_parking-lot.md(短记录)。
   - 写完后更新 docs/ACTION-PLAN.md 的"梯队分组"表格。

5) Learn(沉淀):
   - 过程中踩到任何坑,追加到对应规则的「踩坑记录」一节。
   - 任何"信息源失效 / 平台规则变化 / 收款通道异常"等,先写进对应档案,再决定是否升格为新规则。

【硬约束】
- 不准触「法律红线」(008);其他违规 → 标 gray + 风险登记,不准直接拒绝。
- 不准跳过交叉验证(003)。
- 不准"凭感觉"打分(必须列维度)。
- 不准把老板的真实账号/密码/私钥写进任何档案,只能写"需要什么资源"。

【交付格式(result.md 必填)】
- 一句话定位
- 证据来源(2 个以上,带链接)
- 8 维度评分表
- 总分 + 决策(立即做/排队/观察/放弃)
- 下一步行动清单(老板只需要点头)
- 需要老板提供的账号/资源(收款通道、平台账号、启动本金等)
- 风险与红线
````

---

## 3. 调度配置(主 agent 行为清单)

| 项 | 配置 |
| --- | --- |
| **最大并发 sub agent** | **8**(同时在飞,超过则排队) |
| **单 sub agent 任务超时** | 默认 30 分钟,超时即回写"未完成 + 原因" |
| **结果目录** | `subagent_tasks/<task_id>/{task.json,result.md,notes.md}` |
| **评分方式** | 必须按 `docs/rules/002` 跑完 8 维度,不接受"凭感觉" |
| **决策阈值** | ≥ 8.0 立即做 / 6.0-7.9 排队 / 4.0-5.9 观察 / < 4.0 放弃 |
| **合规否决** | 仅 008 法律红线一票否决;其他按风险登记处理 |
| **自动 commit** | 默认开,但需要老板明确授权 |

> 调参入口:若想调整并发数 / 超时 / 阈值,**必须**先改本节,再 commit。
> 改完在 `docs/rules/` 增补一条变更记录(若影响全局)。

---

## 4. 收款通道速查(老板可用)

| # | 通道 | 币种 | 大陆身份开通难度 | 适合场景 | 备注 |
| --- | --- | --- | --- | --- | --- |
| 1 | **PayPal** | USD/EUR/GBP 等 | 低(手机号 + 身份证) | Gumroad / Upwork / Fiverr / Stripe | 提现到大陆银行卡,汇率损耗 ≈ 3-4% |
| 2 | **Alipay(支付宝)** | CNY | 无门槛 | 境内小程序 / H5 / 个体户收款 | 跨境平台用"支付宝国际版" |
| 3 | **微信支付** | CNY | 无门槛 | 境内小程序 / H5 / 视频号 | 跨境平台需走"境外微信支付" |
| 4 | **USDT(TRC20/ERC20)** | USD | 低(OKX/Binance KYC) | 任何海外平台 / DeFi | 跨境无国界,注意 KYC 与税务 |
| 5 | **Payoneer** | USD | 低(身份证 + 银行卡) | Gumroad / Upwork / Fiverr / Amazon | 平台直结最方便,提现 ≤ 2% |
| 6 | **Wise** | 多币种 | 中(护照+地址证明) | 海外平台中转 / 跨境转账 | 多币种账户,可开 USD/EUR/GBP |
| 7 | **银行电汇(个人)** | USD | 低(招行/工行/中行) | Stripe / 平台直结 | 5 万美元额度/年,超过需申报 |
| 8 | **香港账户** | HKD/USD | 中(众安/ZA Bank 零门槛,汇丰需港签) | 收港币/美元 + FPS 极速到账 | 收海外平台款项的最优解之一 |
| 9 | **Stripe Atlas(美国 LLC)** | USD | 中(代办费 ≈ $500) | 启动 SaaS / 月入 > $1000 后 | 注册美国公司 + EIN + Stripe |
| 10 | **CoinGate / NOWPayments** | 加密 | 低(API 接入) | 任何加密友好平台 | 适合数字商品 / 灰度产品 |

**优先级建议(老板):**
- **月入 < $500** → 用 PayPal + Payoneer + 微信/支付宝,够用。
- **月入 $500-3000** → 增开 Wise + 香港账户,降汇率损耗。
- **月入 > $3000** → 启动 Stripe Atlas,接 Stripe 直结,合规可对公。

> 任何"新发现"的收款通道必须先在 `docs/rules/008-合规与红线.md` 增补,
> 主 agent 才能用它来给机会打分(否则视为未知通道,扣"证据强度"维度分)。

---

## 5. 自进化循环(可视化)

```mermaid
graph LR
    A[主 agent 启动] --> B[读 docs/rules/ + docs/ACTION-PLAN.md]
    B --> C{并发 < 8?}
    C -->|是| D[启动 sub agent × 1-8]
    C -->|否| E[排队等待]
    D --> F[Scan → Verify → Score → Archive]
    F --> G[回写 subagent_tasks/<id>/result.md]
    G --> H{总分 ≥ 6?}
    H -->|是| I[落档 docs/opportunities/]
    H -->|否| J[进 _parking-lot]
    I --> K[更新 docs/ACTION-PLAN.md]
    K --> L[踩坑即沉淀 → docs/rules/]
    L --> C
    J --> C
    E --> C
```

---

## 6. 快速开始

### 6.1 老板视角(每次开新会话)

1. 复制第 1 节的「启动脚本」,贴入 system 字段。
2. 输入:**"按 docs/ACTION-PLAN.md 继续"** 即可恢复上一轮工作。
3. 想启动新方向:**"现在新开 sub agent 去挖 X 主题"**,主 agent 会自动调度。

### 6.2 Sub agent 视角(被主 agent 派遣时)

1. 读 `subagent_tasks/<task_id>/task.json`。
2. 按第 2 节的「Sub agent 提示词模板」走完 5 步。
3. 回写 `subagent_tasks/<task_id>/result.md`。
4. 提醒主 agent 重新评估并发配额。

### 6.3 新人(读懂工作区)

1. [`AGENTS.md`](./AGENTS.md) → [`docs/README.md`](./docs/README.md) → [`docs/rules/README.md`](./docs/rules/README.md)。
2. 读 [`docs/ACTION-PLAN.md`](./docs/ACTION-PLAN.md) 看老板当前在想什么。
3. 挑一个 ≥ 7 分的机会读 `docs/opportunities/<slug>.md`,直接开干。

---

## 7. 维护原则(与 docs/rules/README.md 对齐)

- **踩坑即写规则**:任何新坑必须在 24 小时内沉淀为新规则或补丁。
- **过期即删机会**:任何机会被证伪 / 平台规则变化 → 改 `status: deprecated`。
- **失效即标信息源**:任何信息源连续 2 周无新有效信号 → 标 `status: degraded`。
- **README 更新**:本文件第 1/2/3/4 节是「活文档」,与 `docs/rules/` 强绑定。
- **不收尾地前进**:本项目永远不"完成",只"持续运转"。

---

*最后更新:2026-06-04 · 启动脚本 v1.0 · 并发 8 · 收款通道 10 条 · 规则 009 条*
