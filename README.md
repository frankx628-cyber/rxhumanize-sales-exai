# rxhumanize-sales-exai（去AI味 · 销售文风控）

> 一个跨平台 AI 技能包，专为中文销售培训、管理汇报、业务分析类文稿设计，执行"去 AI 味、去机器味"改写。

[![Platform](https://img.shields.io/badge/Platform-Kimi%20%7C%20ChatGPT%20%7C%20豆包%20%7C%20WorkBuddy-blue)]()
[![License](https://img.shields.io/badge/License-MIT-green.svg)]()

---

## 快速开始

| 平台 | 安装方式 | 文档 |
|---|---|---|
| **Kimi** | 下载 `.kplugin` 文件导入 | [kimi/README.md](./kimi/README.md) |
| **ChatGPT** | 创建 Custom GPT，粘贴 Instructions | [chatgpt/setup-guide.md](./chatgpt/setup-guide.md) |
| **豆包** | 创建智能体，粘贴系统提示词 | [doubao/setup-guide.md](./doubao/setup-guide.md) |
| **WorkBuddy** | 通过 API/插件接入系统提示词 | [workbuddy/setup-guide.md](./workbuddy/setup-guide.md) |
| **任意平台** | 直接复制完整提示词使用 | [prompt.md](./prompt.md) |

---

## 核心能力

- **十条黑名单句式检测**：自动识别并重写 AI 高频句式（定义式开头、总结式收尾、机械过渡、空洞升华等）
- **七条风格锚点保留**：保护你的行业框架名、编号模块、数据、短句节奏等核心风格
- **五步改写流程**：诊断 → 保骨 → 换血 → 破功 → 自检
- **自检清单**：交付前必过的 8 项检查

---

## 适用场景

- 销售培训文案去 AI 味
- 管理汇报材料润色
- 业务分析文档改写
- 任何需要"更像人写的"中文商业文稿

---

## 触发词示例

在任意支持该技能的平台中，说出以下任意一种话即可激活：

> "帮我把这段去一下 AI 味"
> "这段文字机器味太重，改得自然一点"
> "用去 AI 味技能处理这份文稿"
> "humanize 这段销售报告"
> "让这段文字读起来不像 AI 写的"

---

## 文件说明

```
.
├── README.md                 # 本文档
├── prompt.md                 # 通用完整提示词（可复制粘贴到任何平台）
├── chatgpt/
│   ├── instructions.md       # ChatGPT Custom GPT 完整 Instructions
│   └── setup-guide.md        # ChatGPT 创建步骤图文指南
├── doubao/
│   ├── system-prompt.md      # 豆包智能体系统提示词
│   └── setup-guide.md        # 豆包创建智能体步骤
├── workbuddy/
│   ├── api-prompt.md         # WorkBuddy API 接入提示词
│   └── setup-guide.md        # WorkBuddy 插件安装步骤
└── kimi/
    ├── rxhumanize-sales-exai.kplugin  # Kimi 插件安装包
    └── README.md                      # Kimi 安装说明
```

---

## 免责声明

本技能主要用于降低文本中的机器生成痕迹，提升阅读自然度。不保证能通过所有 AI 检测器（检测器本身误报率高），也不用于学术不端或规避合理的内容审核。

---

## License

MIT License