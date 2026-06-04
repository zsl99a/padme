#!/usr/bin/env bash
# 健康检查 + 异常告警(配 cron 每 5 分钟跑一次)
# 用法:*/5 * * * * /root/llm-api-relay/healthcheck.sh

set -euo pipefail
source "$(dirname "$0")/.env"

PANEL_URL="http://localhost:7000"
WEBHOOK="${ALERT_WEBHOOK_URL:-}"

check() {
  local name="$1"; shift
  if "$@" >/dev/null 2>&1; then
    echo "✅ $name OK"
  else
    echo "❌ $name FAIL"
    [ -n "$WEBHOOK" ] && curl -fsS -X POST "$WEBHOOK" \
      -H "Content-Type: application/json" \
      -d "{\"text\":\"[llm-api-relay] $name 异常,请登录 $PANEL_URL 检查\"}" || true
    return 1
  fi
}

check "panel-http"   curl -fsS "$PANEL_URL/api/status"
check "docker"       docker info
check "new-api"      docker,exec,newapi,echo,ok
check "postgres"     docker,exec,newapi-postgres,pg_isready,-U,newapi
check "redis"        docker,exec,newapi-redis,redis-cli,ping
check "disk-space"   sh,-c,"df -P / | tail -1 | awk '{print \$5}' | grep -E '^[0-9]+%$' | awk -F% '{ if (\$1 > 90) exit 1 }'"

# 余额告警:OpenAI usage > 80%
USAGE=$(curl -fsS -H "Authorization: Bearer $OPENAI_API_KEY" \
  "https://api.openai.com/v1/dashboard/billing/credit_grants" 2>/dev/null \
  | grep -oE '"remaining_grant":[0-9.]+' | cut -d: -f2 || echo "0")
if [ -n "$USAGE" ] && [ "$(echo "$USAGE < 5" | bc)" = "1" ]; then
  curl -fsS -X POST "$WEBHOOK" -H "Content-Type: application/json" \
    -d "{\"text\":\"[llm-api-relay] OpenAI 余额 \$$USAGE,需充值\"}" || true
fi
