# 🌟 Dyson Sphere Dashboard

一个交互式的3D戴森球运作监控系统，具有现代化的科幻UI界面和实时数据可视化。

## ✨ 特性

- **3D可视化**: 使用Three.js构建的沉浸式戴森球场景
- **实时数据**: 动态更新的系统指标和能量数据
- **科幻UI**: 赛博朋克风格的界面设计
- **交互控制**: 鼠标控制的3D视角和自动旋转
- **响应式设计**: 适配不同屏幕尺寸
- **双语界面**: 中英文对照显示

## 🚀 快速开始

### 本地运行
1. 下载HTML文件
2. 直接在浏览器中打开 `dyson-sphere-dashboard.html`

### 使用本地服务器
```bash
# Python 3
python -m http.server 8080

# Python 2
python -m SimpleHTTPServer 8080

# Node.js
npx serve .
```

## 📋 GitHub Pages 部署步骤

### 1. 创建GitHub仓库
1. 登录GitHub账户
2. 点击右上角的 "+" → "New repository"
3. 仓库名称: `dyson-sphere-dashboard`
4. 设置为公开(Public)
5. 不要初始化README
6. 点击 "Create repository"

### 2. 推送到GitHub
在您的项目目录中执行：

```bash
# 添加远程仓库地址（替换为您的GitHub用户名）
git remote add origin https://github.com/YOUR_USERNAME/dyson-sphere-dashboard.git

# 推送到GitHub
git push -u origin main
```

### 3. 启用GitHub Pages
1. 进入仓库设置(Settings)
2. 滚动到 "Pages" 部分
3. 在 "Source" 下选择 "Deploy from a branch"
4. 选择 "main" 分支和 "/ (root)" 目录
5. 点击 "Save"
6. 等待几分钟，您的网站将可通过以下地址访问：
   `https://YOUR_USERNAME.github.io/dyson-sphere-dashboard/`

## 🎯 使用说明

- **鼠标拖拽**: 旋转视角
- **滚轮**: 缩放场景
- **自动旋转**: 相机会自动环绕戴森球

## 🔧 技术栈

- **Three.js r128**: 3D图形引擎
- **HTML5/CSS3**: 界面和样式
- **JavaScript ES6+**: 交互逻辑
- **WebGL**: 硬件加速渲染

## 📊 系统指标

- **恒星光度**: 3.828 × 10²⁶ W
- **能量捕获率**: 98.4%
- **当前输出**: 动态变化 (约382 PW)
- **结构完整性**: 100%
- **框架旋转**: 0.05 RPM

## 🎨 视觉效果

- **辉光效果**: 使用后期处理实现真实发光
- **粒子系统**: 能量收集环的动态效果
- **星空背景**: 3000颗随机分布的星星
- **脉动恒星**: 太阳的动态缩放动画

## 📱 兼容性

- ✅ Chrome 60+
- ✅ Firefox 55+
- ✅ Safari 12+
- ✅ Edge 79+

## 🤝 贡献

欢迎提交Issue和Pull Request来改进这个项目！

## 📄 许可证

MIT License - 详见LICENSE文件

---

**🌟 享受您的戴森球监控体验！**