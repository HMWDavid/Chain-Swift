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


