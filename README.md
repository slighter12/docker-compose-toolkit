# Docker Compose Toolkit

一個模組化的 Docker 組件集合，用於快速部署常用的服務和應用程式。

## 特點

- 🚀 快速啟動：預設配置即可運行
- 🧩 模組化設計：按需選擇所需服務
- 🔧 可配置性：支援環境變數自定義
- 📦 獨立性：各服務間互不干擾
- 🔄 可重用性：易於整合到其他專案

## 使用方式

1. 複製環境變數範本：

   ```bash
   cp .example .env
   ```

2. 根據需求修改 `.env` 檔案

3. 啟動所需服務：

   ```bash
   docker-compose up -d [service_name]
   ```

## 可用服務

- [服務名稱] - 簡短描述
- [服務名稱] - 簡短描述
- [服務名稱] - 簡短描述

## 目錄結構

```text
.
├── .env              # 環境變數配置
├── .example          # 環境變數範本
└── docker-compose.yml # 主配置文件
```

## 注意事項

- 請確保 Docker 和 Docker Compose 已正確安裝
- 首次使用前請檢查 `.env` 配置
- 資料目錄 (`data/`) 已加入 `.gitignore`，不會被版本控制

## 授權

MIT License
