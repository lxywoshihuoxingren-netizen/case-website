#!/bin/bash

echo "======================================"
echo "GitHub 推送向导"
echo "======================================"
echo ""

# 设置 Git 配置（本地）
export HOME=/tmp
cd /Users/didi/dchat-workplace/case-website-v3

git config user.name "case-admin"
git config user.email "admin@example.com"

echo "步骤 1: 检查当前 Git 状态"
git status
echo ""

echo "步骤 2: 添加 GitHub 远程仓库"
echo "请确保你已在 GitHub 创建了名为 'case-website' 的仓库"
echo ""
read -p "输入你的 GitHub 用户名: " username

git remote remove origin 2>/dev/null
git remote add origin "https://github.com/$username/case-website.git"

echo ""
echo "步骤 3: 推送到 GitHub"
echo "注意：你需要输入 GitHub Token 作为密码"
echo "获取 Token: https://github.com/settings/tokens"
echo ""
git push -u origin main

echo ""
echo "======================================"
echo "推送完成！"
echo "======================================"
echo ""
echo "下一步：导入 CodeSandbox"
echo "1. 访问 https://codesandbox.io/"
echo "2. 点击 'Import from GitHub'"
echo "3. 输入: https://github.com/$username/case-website"
echo "4. 点击 'Import' 即可在线编辑"
echo ""
