#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

REMOTE_HOST="marley"
REMOTE_DIR="/home/ubuntu/net/ethanjalexander"

rsync -avz --chmod=F644,D755 \
    --exclude 'deploy.sh' \
    avatar.png favicon-32.png favicon-64.png apple-touch-icon.png fonts \
    "$REMOTE_HOST:$REMOTE_DIR/"

rsync -avz --chmod=F644 index.html "$REMOTE_HOST:$REMOTE_DIR/index.html"

echo "Deployed to https://ethanjalexander.ca"
