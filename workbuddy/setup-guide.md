# WorkBuddy 安装指南

## 了解 WorkBuddy

WorkBuddy 是飞书/字节跳动生态下的企业级 AI 助手平台，支持通过以下方式接入自定义 AI 能力：

1. **系统提示词配置**（最简单）
2. **插件开发**（需技术接入）
3. **Webhook/API 接入**（需部署服务）

---

## 方式一：系统提示词配置（推荐，无需开发）

### 前提条件

- 你是 WorkBuddy 的管理员或有 AI 配置权限

### 步骤

1. **登录 WorkBuddy 管理后台**
2. 进入 **「AI 能力」→「模型配置」→「系统提示词」**
3. 找到你要配置的 AI 助手/应用
4. 在系统提示词框中粘贴 [api-prompt.md](./api-prompt.md) 中「方式一」的完整内容
5. **保存并发布**

### 使用方式

配置完成后，用户在 WorkBuddy 中@该 AI 助手并发送要改写的文稿，助手会自动按规则处理。

---

## 方式二：开发插件（需技术资源）

如果 WorkBuddy 支持自定义插件市场：

1. 参考 [api-prompt.md](./api-prompt.md) 中的「方式二：插件开发接入"
2. 将技能封装为 WorkBuddy 插件格式
3. 提交到企业内部插件市场
4. 员工安装后即可使用

---

## 方式三：Webhook 接入（最灵活）

如果以上方式都不适用：

1. 部署一个处理服务（可用 Cloudflare Workers/Vercel/自有服务器）
2. 服务核心逻辑：接收文本 → 拼接系统提示词 → 调用大模型 API → 返回结果
3. 在 WorkBuddy 中配置 Webhook 指向你的服务

### 最小实现示例（Python + FastAPI）

```python
from fastapi import FastAPI
from openai import OpenAI

app = FastAPI()
client = OpenAI()

SYSTEM_PROMPT = """[粘贴 prompt.md 的完整内容]"""

@app.post("/humanize")
async def humanize(text: str):
    response = client.chat.completions.create(
        model="gpt-4",
        messages=[
            {"role": "system", "content": SYSTEM_PROMPT},
            {"role": "user", "content": f"请处理以下文稿：\n\n{text}"}
        ]
    )
    return {"result": response.choices[0].message.content}
```

---

## 获取帮助

如果以上方式在你的 WorkBuddy 环境中无法实施，请联系你的 WorkBuddy 管理员确认：

1. 是否支持自定义系统提示词？
2. 是否开放插件开发接口？
3. 是否支持 Webhook/自定义 API 接入？

根据支持情况选择对应的接入方式。
