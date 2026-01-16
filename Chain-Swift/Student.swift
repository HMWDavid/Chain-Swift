//
//  Student.swift
//  Chain-Swift
//
//  Created by 洪绵卫 on 2024/9/30.
//

import UIKit

class Student: NSObject {
    var name:String = ""
    var age:Int = 0
    var height:Double = 0.0
    var weight:Double = 0.0
    var info = StudentInfo()
    var school = School()
    
    func getInfos(){
        print("学生信息：\(name), \(age)岁")
    }
    
    // 无参数、无返回值的方法
    func printInfo() {
        print("打印学生信息：\(name)")
    }
    
    // 有参数、无返回值的方法
    func setName(_ name: String) {
        self.name = name
    }
    
    func setAge(_ age: Int) {
        self.age = age
    }
    
    // 有两个参数、无返回值的方法
    func updateInfo(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    // 无参数、有返回值的方法
    func getName() -> String {
        return name
    }
    
    func getAge() -> Int {
        return age
    }
    
    // 有参数、有返回值的方法
    func calculateBMI(weight: Double, height: Double) -> Double {
        let heightInMeters = height / 100.0
        return weight / (heightInMeters * heightInMeters)
    }
    
    // 有两个参数、有返回值的方法
    func addNumbers(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
}

class StudentInfo: ZKSetterWrapperCompatible {
    var number:Int = 0
    var `class`:String = ""
}

struct School:ZKSetterWrapperCompatible {
    var name:String?
    var city:String?
    var stree:String?
}
