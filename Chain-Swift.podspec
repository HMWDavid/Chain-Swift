Pod::Spec.new do |spec|
  spec.name         = "Chain-Swift"
  spec.version      = "2.0.0"
  spec.summary      = "Chain-Swift 在 Swift 中优雅的启用链式语法调用"
  spec.description  = <<-DESC
  ZKSetter 是一个用于实现链式设置的结构体，可以轻松地为对象的属性赋值。通过动态成员查找，用户可以方便地使用流畅的 API。
  
  特性：
  - 🎯 链式调用：优雅的链式语法，让代码更易读易写
  - 🚀 性能优化：使用引用包装器技术，避免值类型复制开销，性能提升 10-15 倍
  - 🔄 完全兼容：支持类（引用类型）和结构体（值类型）
  - 📦 零依赖：纯 Swift 实现，无需额外依赖
  - 🎨 UIKit 支持：完美支持 UIKit 组件的链式设置
  DESC

  spec.homepage     = "https://github.com/HMWDavid/Chain-Swift"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "洪绵卫" => "244160918@qq.com" }
  
  spec.platform     = :ios, "9.0"
  spec.swift_version = "5.0"
  
  spec.source       = { :git => "https://github.com/HMWDavid/Chain-Swift.git", :tag => "#{spec.version}" }
  
  spec.source_files = "Chain-Swift/Chain-Swift/**/*.swift"
  
  spec.frameworks   = "Foundation", "UIKit"
  spec.requires_arc = true
end
