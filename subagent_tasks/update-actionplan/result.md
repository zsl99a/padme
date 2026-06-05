# Update ACTION-PLAN to v3.0 — Report

> 执行人:sub agent(update-actionplan 任务)
> 执行日期:2026-06-05
> 输入:apply-archives 报告 + 8 份 cluster-*/result.md + update-indexes 报告
> 输出:`docs/ACTION-PLAN.md`(v2.0 → v3.0 全面重写)

---

## 0. 工作流摘要

1. 读 `docs/ACTION-PLAN.md` 旧版(v2.0,223 行)
2. 读 apply-archives / update-indexes 报告(汇总分数变化 + 8 集群验证)
3. 用 `grep ^score:` 提取 78 个活跃机会 + 2 个 deprecated 档案分数
4. 按 v3 分数降序重排行 1 主表 + 行 5 时间线 + 行 7 风险图 + 行 9 决策记录
5. 新增行 10 关键发现(7 个 body 修正 + 2 个 deprecated + 8 条新规则 + 灰度签字项)
6. frontmatter 升级:`last_updated: 2026-06-04 → 2026-06-05`,加 `version: 3.0` + `verified_by: 8-cluster-sweep`
7. 保留 v1/v2 历史决策记录(不删,作为档案)
8. **未 commit**

---

## 1. 文件改动统计

| 文件 | 旧行数 | 新行数 | 变化 | 修改节数 |
| --- | --- | --- | --- | --- |
| `docs/ACTION-PLAN.md` | 223 | 322 | +99 | 10 节(frontmatter + 一句话总结 + 候选机会全景 + 决策矩阵 + 资源 + AI 接管 + 时间线 + 止损线 + 风险可视化 + 老板要做 + 决策记录 + 关键发现新增) |

总计:**+99 行** / **1 文件** / **10 节** 实质改动

---

## 2. frontmatter 改动

- `last_updated: 2026-06-04` → `2026-06-05`
- 新增 `version: 3.0`
- 新增 `verified_by: 8-cluster-sweep`(注明验证来源)

---

## 3. 一句话总结节改动

- v2 Top 3 → v3 Top 3:
  - LS 10.0(维持封顶)
  - EU AI Act 9.2 → **9.1**(微降,赛道热度上升)
  - Gumroad 9.2 → **9.0** / AI 订阅恢复 9.1 → **9.0**(双双微降,竞品分流)
- v2 Top 5-10 → v3 Top 5-10(按 v3 分重排):
  - 小报童 8.8(v2 #8 → v3 #5,↑3)
  - WhatsApp Builder 8.8(维持 #6)
  - Chrome 扩展 8.8(v2 #5 → v3 #7,↓2)
  - 微信公众号 8.7(v2 #12 → v3 #8,↑4)
  - **AI Dating Coach 8.7(v2 #21 → v3 #9,↑12 🆕)**
  - Agensi.io 8.7(v2 #7 → v3 #10,↓3)
- 加 v3.0 关键变化节(升分/降分/归档/规则)

---

## 4. 候选机会全景节改动

主表重排(63 个 → 78 个活跃 + 2 个归档):

- **第零梯队(使能层)**: Lemon Squeezy 10.0(1 个)
- **第一梯队(≥8.0 共 26 个)**: v2 的 23 个 + AI Dating Coach + Beehiiv + Plaud 硬件 + Agensi + AI 模特摄影
- **第二梯队(6.5-7.9 共 43 个)**: 含 4 个 gray 突破项
- **第三梯队(<6.5 观察中 9 个)**: 含 6 个 gray
- **放弃区**: Hyperliquid HYPE 4.7
- **归档**: etsy-china-individual-payoneer-2026(7.7→5.5)/ web-monetization-api(7.4→5.5)

---

## 5. 决策矩阵节改动

v3 Top 5 对比表:
- LS 10.0(维持)
- EU AI Act 9.1(9.2→9.1 微降,热度上升)
- Gumroad 9.0(9.2→9.0,竞品分流)
- 小报童 8.8(中文 normal 最高,新进 Top 5)
- AI Dating Coach 8.7(黑马,新进 Top 9)

对比维度含:启动本金 / 收款通道 / 中国个人可行性 / 真实月入案例 / 增量价值 / 风险 / 长期可叠加 / v3.0 变化

---

## 6. 时间线节改动

- Day 0 资源清单增加 EU AI Act 部署项
- Day 1-3 加 EU AI Act 1 页落地页上线 + 小报童首发
- Day 4-7 加 EU AI Act 首批询盘 + 小报童 1 元试读转化
- Day 15-30 目标:$50-300 + ¥500+(原 v2 $20-200 + ¥1000+)
- Day 31-90 目标:$2000-5000(原 v2 $500-2000,翻 4 倍)

---

## 7. 止损线节改动

- 加 EU AI Act 30 天 0 询盘暂停
- 加小报童 20 篇 0 付费暂停
- 加 AI Dating Coach 30 天 0 订阅暂停(海外灰度高)
- 视频号止损线加注 "v3.0 海外用户不可加入分成计划后,海外个人放弃视频号"

---

## 8. 风险可视化节改动

flowchart 重写为 v3 视角:
- 区分 EU 子线(Gumroad + EU AI Act + AI Dating)与中文子线(小报童 + 公众号)
- 加"接受 gray 风险?"决策点
- 月入目标升级:$500 → $5000

---

## 9. 决策记录节改动(关键)

按时间倒序追加新决策,v3.0 验证记录在顶部:

```
- 2026-06-05:**v3.0 验证完成** — 8 集群 sub-agent 验证(5,228 行报告)
  - 75 个档案 frontmatter 修正,7 个高优先档案 body 修正
  - 2 个档案 deprecated(etsy / web-monetization)
  - 8 条新规则 010-017 落档 `docs/rules/`
  - 关键分数变化:视频号 8.7→7.0 / 智能眼镜 8.10→6.6 / etsy 7.7→5.5(archived) / babylon 6.1→5.9
  - 关键升分:AI Dating Coach 8.4→8.7 / Beehiiv 8.18→8.50 / Plaud 硬件 8.3→8.5
  - 立即做档:40 → 26(v2 → v3);观察档:6 → 9;归档:+2
```

后续 v2.0 / v1.0 决策记录完整保留作为历史档案(未删)

---

## 10. 新增节:"v3.0 验证关键发现"

### 10.1 7 个高优先档案 body 修正清单
| 档案 | v2 → v3 | 关键修正 |
| --- | --- | --- |
| wechat-shipinhao-revenue-share | 8.7→7.0 | RPM "12元"→"3-20元";海外用户不可加入分成 |
| ai-smart-glasses-review-site-2026 | 8.10→6.6 | 125K subs 失实,实际 4.68K |
| babylon-btc-staking | 6.1→5.9 | APR "4-8%"→"0.04-0.59%" |
| ai-mock-interview-language-tutor-2026 | 8.x→7.0 | 3/5 indie 案例失实 |
| ai-course-cn-micro-tutor | 7.1→7.4 | 李一舟作废,粥左罗 2023 保留 |
| newsletter-ghostwriting-service-2026 | 8.x→7.3 | 数据时间误标,Cole 业务错位 |
| vibe-coding-pm-designer-course-2026 | 8.x→7.7 | 700 学员案例不可验证 |

### 10.2 2 个 deprecated 档案
- `etsy-china-individual-payoneer-2026.md`(7.7→5.5)
- `web-monetization-api.md`(7.4→5.5)

### 10.3 8 条新规则(010-017)
覆盖:平台政策时效(010) / 支付方生态依赖(011) / OSS 月检(012) / 案例引用(013) / 二手汇总标记(014) / Web3 APR 实时(015) / 灰度签字+NSFW(016) / 短视频 RPM 归属(017)

### 10.4 Web3 / 灰度警示(老板必须签字项)
10 个 gray 项目清单,启动前老板必须逐项签字接受三重风险(资金亏损 + 法律边缘 + 平台政策剧变)
- 4 个排队 gray: Telegram 7.8 / AI 角色卡 7.8 / AI 卖课 7.4 / LLM API 7.0
- 6 个观察中 gray: 短剧 CPS / Babylon / MetaMask / Ondo / ChatGPT 拼车 / Hyperliquid(放弃)

### 10.5 老板下一步 2 件事
1. 本周决定 Top 3(LS + EU AI Act + Gumroad/AI 订阅恢复 三选二)
2. v3 验证后 2 周内:看 VERIFICATION-PLAN 第 1 批 / 确认 _parking-lot 复检条件 / 准备灰度签字清单

---

## 11. 硬约束检查

- ✅ frontmatter `last_updated: 2026-06-05` + `version: 3.0` + `verified_by: 8-cluster-sweep`
- ✅ 一句话总结按 v3 新分重排 Top 3 + Top 5-10
- ✅ 候选机会全景按 v3 分数重排(78 个活跃 + 2 个归档)
- ✅ 决策矩阵 v3 Top 5 对比表(LS / EU AI Act / Gumroad / 小报童 / AI Dating)
- ✅ 时间线按 v3 Top 5 重写
- ✅ 风险可视化 flowchart 反映 v3 Top 5
- ✅ 决策记录按时间倒序,v3.0 验证记录在最前
- ✅ 新增节 10 关键发现(7 body 修正 + 2 deprecated + 8 新规则 + 灰度签字 + 老板下一步)
- ✅ 保留 v1/v2 历史记录作为档案(未删)
- ✅ 自包含,老板只看这一份能决策
- ✅ 未 commit

---

## 12. 老板看完这一份的 2 个决策点

1. **点头 Top 3** — LS + EU AI Act + Gumroad/AI 订阅恢复 三选二(回"做"或"先别做")
2. **看灰度签字清单** — 10 个 gray 项目逐项签字或拒绝

---

**完成时间**: 2026-06-05
**任务状态**: ✅ 完成
