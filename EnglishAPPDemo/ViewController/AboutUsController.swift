//
//  AboutUsController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/21.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class AboutUsController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let screen = UIScreen.main.bounds
        print(SCREEN_HEIGHT)
        
        self.view.backgroundColor = UIColor(hexString: "fafafa")
        let bg_HeadView = UIImageView()
        bg_HeadView.frame = CGRect(x: 0, y: 0, width: 375, height: 75)
        bg_HeadView.image = UIImage(named: "background_head")
        //头部标签。
        let head = UILabel(frame: CGRect(x: 47.5,y: 40, width: 280, height: 30))
        // 应该在这里写一个函数，动态的修改这个 text 的显示的value
        head.text = "学分使用说明"
        head.textColor = UIColor.white
        head.font = UIFont(name: head.font.fontName, size: 17)
        head.textAlignment = NSTextAlignment.center
        bg_HeadView.addSubview(head)
        
        let backButton = UIButton(frame: CGRect(x: 22.5, y: 45, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        bg_HeadView.addSubview(backButton)
        
        self.view.addSubview(bg_HeadView)
        textView.font = UIFont(name:textView.font!.fontName, size:15)
        textView.textColor = UIColor(hexString: "#343434")
        textView.text = " “学伴”系列软件是针对课本同步学习的强大助手，能帮助同学快速掌握课程要点、巩固学习成果、强化知识记忆、提升考试成绩 "
    }

}
