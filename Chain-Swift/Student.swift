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
