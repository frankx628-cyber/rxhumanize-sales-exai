# ChatGPT 安装指南

## 方式一：创建 Custom GPT（推荐）

### 步骤

1. **打开 ChatGPT** → 左侧边栏点击「Explore GPTs」
2. 右上角点击 **「Create」** 创建新 GPT
3. 在 **Configure** 标签页：
   - **Name**: `去AI味·销售文风控`
   - **Description**: `对中文销售培训/管理类文稿执行去AI味改写，保结构换血肉破节奏`
   - **Instructions**: 复制 [instructions.md](./instructions.md) 的完整内容粘贴进去
   - **Conversation starters**（可选，建议填）：
     - 帮我把这段销售报告去一下AI味
     - 这段文字机器味太重，帮我改得自然一点
     - 用去AI味技能处理这份管理汇报
4. 点击 **Save** → 选择 **Only me**（私有）或 **Public**（公开到 GPT Store）
5. 完成后在对话中直接使用

### 使用方式

创建完成后，在 ChatGPT 主界面左侧选择你的 Custom GPT，直接发送要改写的文稿即可。

---

## 方式二：Custom Instructions（全局生效）

如果你希望所有 ChatGPT 对话都自动应用此规则：

1. 点击头像 → **Settings** → **Personalization** → **Custom Instructions**
2. 在 **"How would you like ChatGPT to respond?"** 框中粘贴 [instructions.md](./instructions.md) 的内容
3. 点击 **Save**

**限制**：Custom Instructions 有字符数上限（约 1500 字），完整版可能超限。如遇超限，使用方式一的 Custom GPT。

---

## 方式三：每次手动粘贴

如果以上两种方式都不方便：

1. 把 [instructions.md](./instructions.md) 的内容保存到剪贴板工具（如 Ditto、Paste）
2. 每次需要改写时，先粘贴 Instructions，再贴要改的文稿
