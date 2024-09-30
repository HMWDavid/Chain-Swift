# Chain-Swift

Chain-Swift 在 Swift 中优雅的启用链式语法调用
ZKSetter 是一个用于实现链式设置的结构体，可以轻松地为对象的属性赋值。通过动态成员查找，用户可以方便地使用流畅的 API。

#### 安装教程

请将 ZKChain.swift 文件添加到您的项目中

#### 使用示例


```
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


English Version
Overview
ZKSetter is a structure designed to implement chain setting, allowing for easy property assignment to objects. By utilizing dynamic member lookup, users can enjoy a fluent API.

Installation
Simply add the ZKChain.swift file to your project.

Usage Example

```
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


