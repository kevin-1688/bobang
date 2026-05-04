# BǑ-BĀNG 無望

> 台北，1947年。在一切都被剝奪的年代，身體是最後的自由。

**BǑ-BĀNG 無望** 是一款以台灣白色恐怖為背景的敘事冒險遊戲，透過攝影機姿勢偵測讓玩家「用身體感受歷史」。本 repo 為 Act 1 Prototype，免費試玩。

🎮 **[立即試玩 →](https://kevin-1688.github.io/bobang/)**

---

## 關於遊戲

時間是 1947 年，228 事件剛結束，大稻埕籠罩在白色恐怖的陰影下。你的未婚妻小美在夜裡被帶走，沒有理由，沒有審判。

你展開尋找——而這趟旅程，需要你的整個身體。

遊戲透過 **MediaPipe Pose** 偵測玩家的真實動作（深蹲、趴地、靜止），將身體感知融入敘事選擇，讓歷史不只是閱讀，而是親身經歷。

---

## Act 1 內容

| 場景 | 地點 | 機制 |
|------|------|------|
| 失蹤 | 台北街頭 · 夜 | 敘事 |
| 街市接頭 | 大稻埕茶行旁 | 三選一對話 |
| 搬貨 | 大稻埕市場 · 清晨 | 深蹲 ×3 |
| 槍響 | 市場廣場 | 8 秒內伏地 |
| 紙條 | 巷弄 | 敘事 |

**五種結局**，由累積的 FEAR 值決定：《還活著》《繼續走》《沉默的人》《霧中》《無聲的名字》

---

## 技術架構

```
前端         純 HTML / CSS / Vanilla JS（單一 index.html）
姿勢偵測     MediaPipe Tasks Vision — pose_landmarker_lite
部署         GitHub Pages
```

**主要機制：**
- 攝影機校準建立個人化基準姿勢
- 即時偵測髖關節 Y 軸位移判斷深蹲
- 肩膀與髖部水平度判斷伏地
- 慈悲模式（Mercy Mode）允許跳過動作場景
- FEAR 值驅動 CSS vignette 效果（全螢幕壓暗）

---

## 本地開發

```bash
git clone https://github.com/kevin-1688/bobang.git
cd bobang
# 直接用瀏覽器開啟 index.html
# 或啟動本地伺服器（攝影機需要 HTTPS 或 localhost）
npx serve .
```

> ⚠️ 攝影機功能需要 HTTPS 或 `localhost` 環境，直接開啟 file:// 無法使用。

---

## 檔案結構

```
bobang/
├── index.html          # 遊戲主體（全部邏輯在此）
├── bobang-og-cover.jpg # Open Graph 分享封面圖
├── robots.txt          # 允許 Facebook / 搜尋爬蟲
└── README.md
```

---

## 隱私聲明

攝影機影像**僅在本機處理**，不會上傳至任何伺服器。MediaPipe 模型在瀏覽器端執行，所有姿勢偵測在裝置本地完成。

---

## 開發狀態

| 版本 | 狀態 |
|------|------|
| Act 1 Prototype | ✅ 上線 |
| Act 2 基隆港 | 🚧 開發中 |
| Act 3 | 📋 規劃中 |

---

## 關於開發者

**Awack Studio** — Kevin  
獨立開發者 / UI 設計師，台灣台北

- 遊戲以台灣 228 事件與白色恐怖為核心主題
- 差異化定位：「同樣的歷史，完全不同的身體體驗」

---

## 授權

© 2025 Awack Studio. All rights reserved.  
本作品保留所有權利，未經授權不得複製或商業使用。
