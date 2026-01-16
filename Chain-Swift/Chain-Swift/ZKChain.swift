//
//  ZKChain.swift
//  Chain-Swift
//
//  Created by 洪绵卫 on 2024/9/30.
//

import ObjectiveC

// MARK: - 引用包装器：用于避免值类型的复制开销
/// 内部使用的引用包装器，避免值类型在链式调用中的复制开销
private final class ReferenceWrapper<T> {
    var value: T
    init(_ value: T) {
        self.value = value
    }
}

@dynamicMemberLookup
public struct ZKSetter<Subject> {
    
    // 使用引用包装器存储 subject，避免值类型的复制开销
    // 对于引用类型，这也避免了不必要的复制操作
    private let subjectRef: ReferenceWrapper<Subject>
    
    public init(subject: Subject) {
        self.subjectRef = ReferenceWrapper(subject)
    }
    
    /// 获取真正的对象
    public var subject: Subject {
        return subjectRef.value
    }
    
    subscript<Value>(dynamicMember keyPath: WritableKeyPath<Subject, Value>) -> ((Value) -> ZKSetter<Subject>) {
        // 捕获引用包装器，避免复制 subject
        return { [subjectRef] value in
            // 直接修改引用包装器中的值，避免复制开销
            subjectRef.value[keyPath: keyPath] = value
            // 返回新的 ZKSetter，共享同一个引用包装器
            // 这样在链式调用中不会产生多次复制
            return ZKSetter(subjectRef: subjectRef)
        }
    }
    
    // MARK: - 方法调用支持
    
    /// 调用无参数、无返回值的函数（使用闭包）
    /// - Parameter closure: 接受 Subject 并执行操作的闭包
    /// - Returns: 返回 ZKSetter 以支持链式调用
    @discardableResult
    public func call(_ closure: (Subject) -> Void) -> ZKSetter<Subject> {
        closure(subjectRef.value)
        return ZKSetter(subjectRef: subjectRef)
    }
    
    /// 调用有返回值的函数（使用闭包）
    /// - Parameter closure: 接受 Subject 并返回值的闭包
    /// - Returns: 返回方法的返回值
    public func call<R>(_ closure: (Subject) -> R) -> R {
        return closure(subjectRef.value)
    }
    
    // 私有初始化器，用于共享引用包装器（避免重复创建）
    private init(subjectRef: ReferenceWrapper<Subject>) {
        self.subjectRef = subjectRef
    }
}

public protocol ZKSetterWrapperCompatible {
    associatedtype SetterWrapper

    //实例调用
    var zk: ZKSetter<SetterWrapper> { get set }
}

extension ZKSetterWrapperCompatible {
   
    public var zk: ZKSetter<Self> {
        //返回具体的ZKSetter
        get { ZKSetter(subject: self) }
        set {}
    }
}

/// 对继承NSObject的类实现链式
extension NSObject:ZKSetterWrapperCompatible{
    
}
