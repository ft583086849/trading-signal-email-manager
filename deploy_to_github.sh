#!/bin/bash

# TradingView信号邮件订阅管理系统 - GitHub部署脚本

echo "🚀 开始部署到GitHub..."

# 检查是否在正确的目录
if [ ! -f "index.html" ]; then
    echo "❌ 错误: 请在包含index.html的目录中运行此脚本"
    exit 1
fi

# 初始化Git仓库（如果不存在）
if [ ! -d ".git" ]; then
    echo "📦 初始化Git仓库..."
    git init
fi

# 添加所有文件
echo "📁 添加文件到Git..."
git add .

# 提交更改
echo "💾 提交更改..."
git commit -m "🚀 部署TradingView信号邮件订阅管理系统

✨ 功能特性:
- 📧 邮件订阅管理
- 👥 用户管理界面
- ⏰ 订阅时长控制
- 🔄 实时数据刷新
- 📱 响应式设计

🔗 后端API: http://128.199.68.77/api
🌐 部署平台: Vercel
📊 数据存储: JSON文件"

# 检查是否已设置远程仓库
if ! git remote get-url origin > /dev/null 2>&1; then
    echo "🔗 请先设置GitHub远程仓库:"
    echo "git remote add origin https://github.com/你的用户名/你的仓库名.git"
    echo ""
    echo "或者运行:"
    echo "git remote add origin git@github.com:你的用户名/你的仓库名.git"
    echo ""
    read -p "按回车键继续，然后手动设置远程仓库..."
fi

# 推送到GitHub
echo "⬆️ 推送到GitHub..."
git push -u origin main

echo ""
echo "✅ 部署完成！"
echo ""
echo "📋 下一步操作:"
echo "1. 在Vercel控制台连接GitHub仓库"
echo "2. 自动部署完成后获得访问链接"
echo "3. 访问您的邮件管理系统"
echo ""
echo "🔗 Vercel控制台: https://vercel.com/dashboard"
echo "📧 邮件管理页面将自动连接到: http://128.199.68.77/api"
