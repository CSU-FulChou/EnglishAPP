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
        self.view.backgroundColor = UIColor(hexString: "fafafa")
         
        let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 64*Y_), withTitle: "学分使用说明")
        

        let backButton = UIButton(frame: CGRect(x: 22.5*X_, y: 30*Y_, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        backButton.addTarget(self, action: #selector(popBack), for:.touchUpInside)

        self.view.addSubview(bg_HeadView)
        self.view.addSubview(backButton)
        textView.font = UIFont(name:textView.font!.fontName, size:15)
        textView.textColor = UIColor(hexString: "#343434")
        textView.text = " “学伴”系列软件是针对课本同步学习的强大助手，能帮助同学快速掌握课程要点、巩固学习成果、强化知识记忆、提升考试成绩 "
    }
    @objc func popBack(_ sender: Any) {
           self.navigationController?.popViewController(animated: true)
       }

}
