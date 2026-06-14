#!/bin/bash
set -e

echo "🚀 Starting Arvin VPS Server..."

# Start SSH service
service ssh start

echo "✅ SSH started"
echo "✅ Starting Wetty on port ${PORT:-3000}..."

# Start wetty - connects via SSH for real terminal experience
exec wetty \
  --port ${PORT:-3000} \
  --host 0.0.0.0 \
  --ssh-host localhost \
  --ssh-port 22 \
  --ssh-user root \
  --title "Arvin VPS" \
  --base /
