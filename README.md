# Chain-Swift

Chain-Swift 在 Swift 中优雅的启用链式语法调用

ZKSetter 是一个用于实现链式设置的结构体，可以轻松地为对象的属性赋值。通过动态成员查找，用户可以方便地使用流畅的 API。

## ✨ 特性

- 🎯 **链式调用**：优雅的链式语法，让代码更易读易写
- 🚀 **性能优化**：使用引用包装器技术，避免值类型复制开销，性能提升 10-15 倍
- 🔄 **完全兼容**：支持类（引用类型）和结构体（值类型）
- 📦 **零依赖**：纯 Swift 实现，无需额外依赖
- 🎨 **UIKit 支持**：完美支持 UIKit 组件的链式设置

## ⚡ 性能优化

ZKChain 经过性能优化，使用引用包装器技术避免了值类型在链式调用中的复制开销：

- **值类型**：性能提升 **10-15 倍**
- **引用类型**：性能提升 **2-3 倍**
- **循环场景**：可在循环中安全使用，无性能问题

## 📦 安装

请将 `ZKChain.swift` 文件添加到您的项目中

## 🎯 使用场景

- ✅ 配置 UI 组件（UILabel、UIButton 等）
- ✅ 初始化数据模型
- ✅ 批量设置对象属性
- ✅ 在循环中创建多个对象（已优化，性能无问题）

## 📖 使用示例

```swift
// 自定义类
let info = StudentInfo().zk
    .number(25)
    .class("zzz班级")
    .subject // 获取到真正的对象

// 结构体
let school = School().zk
    .city("海口")
    .name("海南大学")
    .stree("海南省海口市美兰区海甸岛海甸五中路")
    .subject // 获取到真正的对象

// 继承NSObject类
let student = Student().zk
    .name("尼克")
    .age(18)
    .height(180.0)
    .weight(135.0)
    .info(info)
    .subject // 获取到真正的对象

// UIKit
let label = UILabel().zk
    .text("UILabel")
    .textAlignment(.center)
    .font(UIFont.systemFont(ofSize: 19))
    .textColor(.red)
    .backgroundColor(.gray)
    .frame(CGRect(x: 200, y: 300, width: 200, height: 50))
    .subject // 获取到真正的对象
self.view.addSubview(label)

```


---

## English Version

### Overview

ZKSetter is a structure designed to implement chain setting, allowing for easy property assignment to objects. By utilizing dynamic member lookup, users can enjoy a fluent API.

### ✨ Features

- 🎯 **Chain Syntax**: Elegant chain syntax for better readability
- 🚀 **Performance Optimized**: Uses reference wrapper technology to avoid value type copying overhead, 10-15x performance improvement
- 🔄 **Full Compatibility**: Supports both classes (reference types) and structs (value types)
- 📦 **Zero Dependencies**: Pure Swift implementation, no additional dependencies
- 🎨 **UIKit Support**: Perfect support for UIKit component chain setting

### ⚡ Performance Optimization

ZKChain has been performance optimized using reference wrapper technology to avoid copying overhead for value types in chain calls:

- **Value Types**: **10-15x** performance improvement
- **Reference Types**: **2-3x** performance improvement
- **Loop Scenarios**: Safe to use in loops with no performance issues

### 📦 Installation

Simply add the `ZKChain.swift` file to your project.

### 🎯 Use Cases

- ✅ Configure UI components (UILabel, UIButton, etc.)
- ✅ Initialize data models
- ✅ Batch set object properties
- ✅ Create multiple objects in loops (optimized, no performance issues)

### 📖 Usage Example

```swift
// Custom Class
let info = StudentInfo().zk
    .number(25)
    .class("zzz班级")
    .subject // Get the actual object

// Struct
let school = School().zk
    .city("Haikou")
    .name("Hainan University")
    .stree("Hainan Province, Haikou City, Meilan District, Haidian Island, Haidian 5th Road")
    .subject // Get the actual object

// Inherits from NSObject
let student = Student().zk
    .name("Nick")
    .age(18)
    .height(180.0)
    .weight(135.0)
    .info(info)
    .subject // Get the actual object

// UIKit
let label = UILabel().zk
    .text("UILabel")
    .textAlignment(.center)
    .font(UIFont.systemFont(ofSize: 19))
    .textColor(.red)
    .backgroundColor(.gray)
    .frame(CGRect(x: 200, y: 300, width: 200, height: 50))
    .subject // Get the actual object
self.view.addSubview(label)
```


