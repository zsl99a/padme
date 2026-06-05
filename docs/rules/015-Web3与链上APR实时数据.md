---
type: rule
id: 015
status: active
last_updated: 2026-06-05
---

# 015 - Web3 / 链上 APR 实时数据

## 目的

Web3 质押 / DeFi / DePIN 类机会的 APR / APY / 收益率数字极易失真——协议早期媒体估算、官方宣传、历史峰值等常被误当作"当前可获得收益率",而实际协议官方 Dashboard 的实时数据往往差 10x 甚至 100x。本规则强制:所有链上收益率类声明必须以**协议官方 Dashboard 实时数据**为准,不可信媒体估算值、历史均值或官方宣传值。

## 适用范围

所有 Web3 / 链上 / DeFi / DePIN / 质押 类机会档案,凡是涉及以下任一字段:

- APR / APY(年化收益率)
- 奖励代币发放率(每 X 区块 N 代币)
- 流动性质押收益率(stETH / rETH / 类似)
- 节点/验证者收益(运行节点预期月/年回报)
- DePIN 设备收益(每日/每月挖矿代币)
- 空投预期收益率("S2 投后 X 倍")

## 具体规则

1. **官方 Dashboard 唯一权威**:APR / APY / 收益率声明必须以"协议官方 Dashboard 实时数据"为准,来源示例:
   - Lido:`lido.fi/ethereum` stETH 7 日移动平均
   - Babylon:`babylonchain.io/dashboard` BTC Staking APR
   - EigenLayer:`app.eigenlayer.xyz` restaking 收益
   - Aave:`app.aave.com` 各资产 supply APY
   - Compound / MakerDAO 等同样以官方 app 实时数据为准
2. **数字抓取与标注**:
   - 抓取日期精确到日(YYYY-MM-DD),最好精确到小时
   - 在档案"参考来源"节标 `last_checked: YYYY-MM-DD HH:MM UTC`
   - 截图保存为 `evidence/web3/<protocol>-<date>.png`(可选,推荐)
3. **不可信来源黑名单**:
   - 媒体估算值("X% APR" 来自 CryptoSlate / The Block / Cointelegraph 等)
   - 协议早期宣传("最高 8% APR" 来自白皮书 / 官方公告)
   - 历史均值("前 30 天均值" / "前 90 天均值")
   - 第三方数据聚合(DeFiLlama 等可作补充,但不可作主要证据)
   - 网红/分析师主观估计
4. **单点查证 + 周复检**:
   - 第一次查证:单点抓官方 Dashboard 实时数据
   - 复检节奏:每周一次(周一),若数字波动 > 30%,立即更新档案
   - 月检(规则 012)时必做:刷新 last_checked 字段
5. **APR / APY 区分**:
   - **APR**(Annual Percentage Rate):不含复利,简单年化
   - **APY**(Annual Percentage Yield):含复利,实际收益更高
   - 档案必须明确是 APR 还是 APY,不可混用
6. **波动率标注**:高波动 APR(如 DePIN 设备收益、空投预期):
   - 在档案 frontmatter 加 `yield_volatility: high | medium | low`
   - 在"风险与红线"节明确"收益率可能短期内下降 Nx"
7. **"前 30 天均值"陷阱**:
   - 很多协议早期 30 天均值远高于稳定后均值(Babylon 等)
   - 任何"前 30 天均值"必须明确"可能因新参与者涌入/奖励减半/空投结束而下降"
8. **空投预期特殊处理**(扩展踩坑 §5):
   - "X% 未来分配" ≠ "X 个月内一定有 S2"
   - 不可把"等 S2"作为收入来源
   - 在档案 frontmatter 加 `airdrop_status: confirmed | speculation | none`

## 踩坑记录

- **2026-06-05 Cluster 8 验证**(`subagent_tasks/cluster-8-ai-content-web3/result.md` §3 babylon-btc-staking):
  - **babylon-btc-staking 声称 4-8% APR,实际 Babylon 官方 Dashboard 0.04-0.59%**:数字失真 10-100x;原档 4-8% 来自早期白皮书或媒体估算,非实时 Dashboard。
  - **结论**:babylon-btc-staking 评分大幅下调(进入 parking-lot 档),因实际收益远低于宣传,无法支撑"月入 $100+ 持续 3 月"红线(规则 008 + 本规则叠加)。

- **2026-06-05 Cluster 8 验证**(`subagent_tasks/cluster-8-ai-content-web3/result.md` §7.2 跨集群踩坑):
  - **数字通胀陷阱**:Babylon 4-8% APR 严重虚高 → **所有"yield/APR/APY"数字必须查官方实时 Dashboard,媒体估算值不可信**(本规则核心条款)。
  - **历史案例作废**:李一舟 1.75 亿 2024 已被告发 → **"曾经赚过 N 亿" 不等于 "现在可复制";案例需 < 12 月时效**(与规则 010 §1 时效约束一致)。
  - **空投预期陷阱**:Hyperliquid S2 2026-06 仍属"speculation" → **"X% 未来分配" ≠ "X 个月内一定有 S2";不可把"等 S2"作为收入来源**(本规则第 8 条)。

- **2026-06-05 Cluster 8 验证**(`subagent_tasks/cluster-8-ai-content-web3/result.md` §3 metamask-stablecoin-earn):
  - **Aave USDC supply APY 3-6% 相对稳定**:作为对照案例,稳定币借贷 APY 通常波动小,适合作为"Web3 起步"机会(100-500 USDC 试跑 30 天);但仍需周复检。

## 变更日志

- 2026-06-05:初始建立(来自 v3.0 验证 8 集群发现,核心来自 Cluster 8 验证 Babylon 案例 + §7.2 跨集群踩坑)。
