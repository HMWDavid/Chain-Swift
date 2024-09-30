//
//  ZKChain.swift
//  Chain-Swift
//
//  Created by 洪绵卫 on 2024/9/30.
//

import ObjectiveC

@dynamicMemberLookup
public struct ZKSetter<Subject> {
    
    public let subject: Subject
    
    subscript<Value>(dynamicMember keyPath: WritableKeyPath<Subject, Value>) -> ((Value) -> ZKSetter<Subject>) {
        
        // 获取到真正的对象
        var subject = self.subject
        
        return { value in
            // 把 value 指派给 subject
            subject[keyPath: keyPath] = value
            // 回传的类型是 ZKSetter 而不是 Subject
            // 因为使用ZKSetter来链式，而不是 Subject 本身
            return ZKSetter(subject: subject)
        }
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
