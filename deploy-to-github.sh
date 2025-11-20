#!/bin/bash

# 🌟 戴森球监控系统 - 一键部署脚本
# 🌟 Dyson Sphere Dashboard - One-Click Deployment Script

echo "=========================================="
echo "🚀 戴森球监控系统 GitHub Pages 部署工具"
echo "🚀 Dyson Sphere Dashboard Deployment Tool"
echo "=========================================="
echo ""

# 检查git是否安装
if ! command -v git &> /dev/null; then
    echo "❌ 错误：请先安装Git"
    echo "❌ Error: Please install Git first"
    exit 1
fi

# 获取GitHub用户名
echo "请输入您的GitHub用户名："
echo "Please enter your GitHub username:"
read github_username

if [ -z "$github_username" ]; then
    echo "❌ 错误：用户名不能为空"
    echo "❌ Error: Username cannot be empty"
    exit 1
fi

echo ""
echo "📋 部署步骤："
echo "📋 Deployment steps:"
echo "1. 创建GitHub仓库: https://github.com/new"
echo "2. 仓库名称: dyson-sphere-dashboard"
echo "3. 设置为公开(Public)"
echo "4. 不要初始化README"
echo "5. 创建仓库后，按回车继续..."
echo ""
echo "Press Enter after creating the repository..."
read -p ""

# 添加远程仓库
echo "📤 配置远程仓库..."
echo "📤 Configuring remote repository..."
git remote add origin https://github.com/$github_username/dyson-sphere-dashboard.git

# 推送到GitHub
echo "📤 推送到GitHub..."
echo "📤 Pushing to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ 推送成功！"
    echo "✅ Push successful!"
    echo ""
    echo "📋 下一步：手动配置GitHub Pages"
    echo "📋 Next step: Manually configure GitHub Pages"
    echo "1. 访问: https://github.com/$github_username/dyson-sphere-dashboard"
    echo "2. 点击 Settings 标签"
    echo "3. 滚动到 Pages 部分"
    echo "4. 选择 Source: Deploy from a branch"
    echo "5. 选择 Branch: main"
    echo "6. 点击 Save"
    echo ""
    echo "🌐 部署地址："
    echo "🌐 Deployment URL:"
    echo "https://$github_username.github.io/dyson-sphere-dashboard/"
    echo ""
    echo "⏰ 部署需要几分钟时间，请耐心等待"
    echo "⏰ Deployment takes a few minutes, please be patient"
else
    echo ""
    echo "❌ 推送失败"
    echo "❌ Push failed"
    echo "请检查："
    echo "Please check:"
    echo "- 网络连接"
    echo "- GitHub用户名是否正确"
    echo "- 仓库是否已创建"
fi