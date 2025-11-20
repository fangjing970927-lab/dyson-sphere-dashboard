#!/bin/bash

# 戴森球监控系统 - GitHub Pages 部署脚本
# Dyson Sphere Dashboard - GitHub Pages Deployment Script

echo "🌟 开始部署戴森球监控系统到GitHub Pages..."
echo "🌟 Starting deployment of Dyson Sphere Dashboard to GitHub Pages..."

# 检查git是否已初始化
if [ ! -d ".git" ]; then
    echo "❌ 错误：请先初始化git仓库"
    echo "❌ Error: Please initialize git repository first"
    exit 1
fi

# 检查是否有未提交的更改
if [ -n "$(git status --porcelain)" ]; then
    echo "📥 发现未提交的更改，正在提交..."
    echo "📥 Found uncommitted changes, committing..."
    git add .
    git commit -m "Update: $(date '+%Y-%m-%d %H:%M:%S')"
fi

# 推送到GitHub
echo "📤 推送到GitHub..."
echo "📤 Pushing to GitHub..."
git push origin main

if [ $? -eq 0 ]; then
    echo "✅ 推送成功！"
    echo "✅ Push successful!"
    echo ""
    echo "📋 下一步："
    echo "📋 Next steps:"
    echo "1. 访问您的GitHub仓库"
    echo "1. Visit your GitHub repository"
    echo "2. 进入 Settings > Pages"
    echo "2. Go to Settings > Pages"
    echo "3. 选择 Source: Deploy from a branch"
    echo "3. Select Source: Deploy from a branch"
    echo "4. 选择 Branch: main 和 Directory: / (root)"
    echo "4. Select Branch: main and Directory: / (root)"
    echo ""
    echo "🌐 部署地址将类似于："
    echo "🌐 Deployment URL will be like:"
    echo "https://YOUR_USERNAME.github.io/dyson-sphere-dashboard/"
else
    echo "❌ 推送失败，请检查网络连接和GitHub配置"
    echo "❌ Push failed, please check network connection and GitHub configuration"
fi