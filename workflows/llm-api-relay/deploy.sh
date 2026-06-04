#!/usr/bin/env bash
# LLM API 中转 一键部署
# 用法:bash deploy.sh
set -euo pipefail

echo "==> 1. 检查 .env"
if [ ! -f .env ]; then
  cp .env.example .env
  echo "    已生成 .env,请编辑后再继续"
  exit 1
fi
source .env

if [[ "$POSTGRES_PASSWORD" == "__CHANGE_ME__"* ]]; then
  echo "    POSTGRES_PASSWORD 仍是占位符,先改!"
  exit 1
fi

echo "==> 2. 创建数据目录"
mkdir -p data/{new-api,postgres,redis,nginx/{conf.d,certs,logs}}

echo "==> 3. 拉镜像"
docker compose pull

echo "==> 4. 启动"
docker compose up -d

echo "==> 5. 等待 30s 让 new-api 初始化"
sleep 30

echo "==> 6. 健康检查"
curl -fsS http://localhost:7000/api/status || {
  echo "    健康检查失败,查看日志:docker compose logs new-api"
  exit 1
}

echo
echo "✅ 部署完成!"
echo "   面板:http://<VPS_IP>:7000"
echo "   默认账号:见 .env INITIAL_ADMIN_EMAIL"
echo "   下一步:bash healthcheck.sh 注册到 cron"
