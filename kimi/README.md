# Kimi 安装指南

## 方式一：直接安装 .kplugin 插件包（推荐）

### 步骤

1. **获取插件包**

   本仓库提供两种方式获取 `.kplugin` 文件：

   **A. 从 GitHub Releases 下载（最简单）**
   - 访问 [Releases](https://github.com/frankx628-cyber/rxhumanize-sales-exai/releases) 页面
   - 下载最新版的 `rxhumanize-sales-exai.kplugin`

   **B. 从仓库文件解码**
   - 克隆或下载本仓库
   - 进入 `kimi/` 目录
   - 运行解码脚本生成 `.kplugin` 文件：
     ```bash
     # Linux / macOS
     bash decode.sh

     # Windows (PowerShell)
     .\decode.ps1
     ```
   - 或者直接使用 Python 解码：
     ```bash
     python3 -c "import base64; open('rxhumanize-sales-exai.kplugin','wb').write(base64.b64decode(open('rxhumanize-sales-exai.kplugin.b64').read()))"
     ```

2. **打开 Kimi**
   - 网页版：https://kimi.com
   - 桌面客户端或 App

3. **安装插件**
   - 左侧边栏点击「插件」
   - 切换到「自定义」tab
   - 在「我创建的」分组下方，点击「导入插件」或「上传插件包」
   - 选择获取到的 `rxhumanize-sales-exai.kplugin` 文件
   - 确认安装

4. **启用插件**
   - 在插件列表中找到「去AI味·销售文风控」
   - 点击启用

### 使用方式

安装并启用后，在 Kimi 对话中直接说：

> "帮我把这段去一下AI味"
> "这段文字机器味太重，帮我改得自然一点"
> "用去AI味技能处理这份文稿"

Kimi 会自动加载技能规则并执行改写。

---

## 方式二：手动复制提示词

如果无法使用 .kplugin 文件：

1. 打开 [prompt.md](../prompt.md)
2. 复制完整内容
3. 在 Kimi 对话开头粘贴
4. 再发送要改写的文稿

---

## 方式三：保存为常用指令

1. 把 [prompt.md](../prompt.md) 内容保存为本地文件
2. 每次使用时复制粘贴到 Kimi 对话
3. 或使用输入法的自定义短语功能（如搜狗输入 `rxai` 自动展开提示词）
