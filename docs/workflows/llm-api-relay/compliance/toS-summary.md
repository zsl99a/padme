# 上游 ToS 摘要(中转站涉及)

## OpenAI Usage Policies

- ✅ 允许:转售 API 给最终用户(resale allowed)
- ❌ 禁止:账号共享 / 多账号 pool / 跨账号拆配额
- ⚠️ 灰色:低价区账号采购(违反 spirit,letter 灰色)
- **链接**:https://openai.com/policies/row-terms-of-use/

## Anthropic Terms

- ✅ 允许:集成 API 到自己的产品
- ❌ 禁止:批量转售 / sublicensing
- ❌ 禁止:多账号 split 配额
- ⚠️ 灰色:Claude Pro 账号拼车(明确 ToS 禁止,实际抽查封号)
- **链接**:https://www.anthropic.com/legal/commercial-terms

## Google Gemini API Terms

- ✅ 允许:转售(可商用)
- ❌ 禁止:多账号 split
- **链接**:https://ai.google.dev/terms

## DeepSeek Terms

- ✅ 允许:转售(目前未严格限制)
- ⚠️ 灰色:跨境数据传输(无明确禁止但有政策风险)
- **链接**:https://www.deepseek.com/terms

## 共同红线(不踩)

1. **不批量注册账号**:不养号池,只买少量自用 + 礼品卡采购
2. **不卖账号本身**:只卖 API 配额
3. **不做拼车账号分租**:见单独机会 `chatgpt-plus-pooling.md`,有独立 ToS 风险评估
4. **不接违规内容**:不接 fraud / spam / abuse / CSAM / 武器 / 赌博场景
5. **不超量**:每个账号使用量在自己"正常使用"范围内,不给"账号池"留痕迹

## 边界判断

中转站最危险的 ToS 风险不是"是否转售",而是:
- **"账号池"行为被检测到** → OpenAI 会看"一个 IP 一天内发 N 个不同账号的请求"
- **"消费曲线异常"** → 突然暴增会被风控

**对策**:
- 每个账号固定住宅 IP
- 消费曲线模拟真人使用(不要 24h 满负荷)
- 不在主账号跑生产,放 2-3 个 fallback 账号轮换
