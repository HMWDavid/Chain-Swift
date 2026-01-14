#!/bin/bash

# 这个脚本帮助设置 Carthage 支持
# 注意：由于 Xcode 项目文件的复杂性，建议在 Xcode 中手动添加 Framework target

echo "⚠️  为了支持 Carthage，您需要在 Xcode 中手动添加一个 Framework target"
echo ""
echo "步骤如下："
echo "1. 打开 Chain-Swift.xcodeproj"
echo "2. 选择项目，点击 '+' 添加新 target"
echo "3. 选择 'Framework' -> 'iOS Framework & Library'"
echo "4. 命名为 'ChainSwift'"
echo "5. 将 ZKChain.swift 添加到新 target 的 Compile Sources"
echo "6. 在 Scheme 管理器中，将 'ChainSwift' scheme 标记为 Shared"
echo ""
echo "或者，您可以使用以下命令在 Xcode 中打开项目："
echo "open Chain-Swift.xcodeproj"
