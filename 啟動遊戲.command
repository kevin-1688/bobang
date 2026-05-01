#!/bin/bash
# BÚ-BĀNG Act 1 Prototype — 一鍵啟動
# 雙擊此檔即可在 localhost 開啟，避免 file:// 擋攝影機權限。

cd "$(dirname "$0")"

PORT=8765
echo "──────────────────────────────────────────"
echo "  BÚ-BĀNG 無望 — Act 1 Prototype"
echo "  在 http://localhost:$PORT 啟動本機伺服器"
echo "  關閉此視窗即可結束遊戲"
echo "──────────────────────────────────────────"

# 開瀏覽器（背景，給 server 1 秒先啟動）
( sleep 1 && open "http://localhost:$PORT/bubang_act1.html" ) &

# 起 Python http.server（macOS 內建 python3）
exec python3 -m http.server $PORT
