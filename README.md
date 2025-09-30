# 📧 TradingView信号邮件订阅管理系统

## 🚀 Vercel部署指南

### 1. 准备文件
确保以下文件在项目根目录：
- `index.html` - 主页面文件
- `vercel.json` - Vercel配置文件
- `package.json` - 项目依赖配置

### 2. 部署到Vercel

#### 方法一：通过GitHub部署（推荐）
1. 将项目推送到GitHub仓库
2. 在Vercel控制台连接GitHub仓库
3. 自动部署完成

#### 方法二：通过Vercel CLI部署
```bash
# 安装Vercel CLI
npm i -g vercel

# 在项目目录中运行
vercel

# 按照提示完成部署
```

### 3. 配置说明

#### vercel.json配置
```json
{
  "version": 2,
  "builds": [
    {
      "src": "index.html",
      "use": "@vercel/static"
    }
  ],
  "routes": [
    {
      "src": "/",
      "dest": "/index.html"
    }
  ]
}
```

#### API服务器配置
- 后端API服务器: `http://128.199.68.77/api`
- 支持CORS跨域请求
- 自动连接状态检测

### 4. 功能特性

#### 📊 实时监控
- 服务器连接状态显示
- 自动刷新订阅者列表
- 实时统计信息

#### 👥 订阅者管理
- 添加新订阅者（支持临时/永久订阅）
- 删除订阅者
- 订阅时长管理（3天、1个月、3个月、6个月、1年）
- 到期自动过滤

#### 🎨 界面特性
- 现代化响应式设计
- 渐变背景和动画效果
- 移动端适配
- 实时状态反馈

### 5. 访问地址
部署完成后，您将获得一个Vercel域名，例如：
- `https://your-project.vercel.app`
- `https://your-project.vercel.app/email-manager`

### 6. 技术栈
- **前端**: HTML5 + CSS3 + JavaScript (ES6+)
- **后端API**: Flask (Python) - 运行在 `128.199.68.77:5000`
- **部署平台**: Vercel
- **数据库**: JSON文件存储

### 7. 故障排除

#### 连接问题
如果页面显示"连接失败"：
1. 检查后端服务器是否运行
2. 确认API地址是否正确
3. 检查网络连接

#### 部署问题
如果Vercel部署失败：
1. 检查文件结构是否正确
2. 确认vercel.json配置
3. 查看Vercel部署日志

### 8. 更新说明
- 页面每30秒自动刷新数据
- 支持手动刷新按钮
- 实时显示服务器连接状态
