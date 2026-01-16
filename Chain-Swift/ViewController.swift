//
//  ViewController.swift
//  Chain-Swift
//
//  Created by 洪绵卫 on 2024/9/30.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
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
        
        // 方法调用示例：无参数、无返回值
        _ = Student().zk
            .name("张三")
            .call { $0.printInfo() } // 调用无参数、无返回值的方法
        
        // 方法调用示例：有参数、无返回值
        _ = Student().zk
            .call { $0.setName("李四") }
            .call { $0.setAge(20) }
            .name("王五") // 可以继续链式调用设置属性
        
        // 方法调用示例：多个参数、无返回值
        _ = Student().zk
            .call { $0.updateInfo(name: "赵六", age: 22) }
            .height(175.0)
        
        // 方法调用示例：无参数、有返回值
        let studentName = Student().zk
            .name("钱七")
            .call { $0.getName() } // 获取返回值
        print("学生姓名：\(studentName)")
        
        // 方法调用示例：有参数、有返回值
        let bmi = Student().zk
            .weight(70.0)
            .height(175.0)
            .call { $0.calculateBMI(weight: 70.0, height: 175.0) } // 调用有参数、有返回值的方法
        print("BMI值：\(bmi)")
        
        // 方法调用示例：两个参数、有返回值
        let sum = Student().zk
            .call { $0.addNumbers(10, 20) } // 传递两个参数
        print("计算结果：\(sum)")
        
        // 混合使用：属性设置和方法调用
        _ = Student().zk
            .name("孙八")
            .age(25)
            .call { $0.printInfo() } // 调用方法
            .height(180.0)
            .weight(75.0)
                               
        // UIKit
        let label = UILabel().zk
            .text("UILabel")
            .textAlignment( .center)
            .font(UIFont.systemFont(ofSize: 19))
            .textColor(.red)
            .backgroundColor(.gray)
            .frame(CGRect(x: 200, y: 300, width: 200, height: 50))
            .subject // 获取到真正的对象
        self.view.addSubview(label)
        
        print(student)
        
    }
}


