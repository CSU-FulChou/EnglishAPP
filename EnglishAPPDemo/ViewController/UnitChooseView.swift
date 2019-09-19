//
//  UnitChooseView.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/14.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class UnitChooseView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let bg_HeadView = UIImageView()
        bg_HeadView.frame = CGRect(x: 0, y: 0, width: 375, height: 70)
        bg_HeadView.image = UIImage(named: "background_head")
        //头部标签。
        let head = UILabel(frame: CGRect(x: 47.5,y: 40, width: 280, height: 30))
        // 应该在这里写一个函数，动态的修改这个 text 的显示的value 
        head.text = "人教版PEP 三年级上册"
        head.textColor = UIColor.white
        head.font = UIFont(name: "Helvetica Neue", size: 17)
        head.textAlignment = NSTextAlignment.center
        bg_HeadView.addSubview(head)
        
        let backButton = UIButton(frame: CGRect(x: 22.5, y: 45, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        bg_HeadView.addSubview(backButton)
        
        let settingButton = UIButton(frame: CGRect(x: 342.5, y: 44.5, width: 20, height: 21))
        settingButton.setBackgroundImage(UIImage(named: "bt_setting"), for: UIControl.State.normal)
        bg_HeadView.addSubview(settingButton)
        self.view.addSubview(bg_HeadView)
        
        // 第一栏 单元候选项。
        let firstUiView = UIImageView()
        firstUiView.frame = CGRect(x: 22.5, y: 95, width: 330, height: 90)
        firstUiView.image = UIImage(named: "bg_unitList1")
        
        let firstTitle = UILabel(frame: CGRect(x: 20, y: 20, width: 300, height: 20))
        firstTitle.text = "Unit 1 welcome back"
        firstUiView.addSubview(firstTitle)
        
        let firstDescription = UILabel(frame: CGRect(x: 20, y: 40, width: 300, height: 20))
        firstDescription.text = "本单元共有64个单词，24个句子"
        firstDescription.font = UIFont(name: firstDescription.font.fontName, size: 10)
        firstDescription.textColor = UIColor(hexString: "#666666")
        firstUiView.addSubview(firstDescription)
        
        let firstIcon = ZFCircleProgress(frame: CGRect(x: 260, y: 20, width: 40, height: 40))
        firstIcon.pathFillColor = UIColor(hexString: "#FF706B")
        firstIcon.progress = 0.5;
        firstIcon.strokeWidth = 3;
        firstIcon.progressLabel.font = UIFont(name: firstIcon.progressLabel.font.fontName, size: 9)
        
        firstUiView.addSubview(firstIcon)
        
        let desIcon = UILabel(frame: CGRect(x: 260, y: 60, width: 40, height: 20))
        desIcon.text = "学习进度"
        desIcon.font = UIFont(name: desIcon.font.fontName, size: 10)
        desIcon.textAlignment = NSTextAlignment.left
        firstUiView.addSubview(desIcon)
        self.view.addSubview(firstUiView)
        
  //-----------------------------------------------------//
        let secondUiView = UIImageView()
        secondUiView.frame = CGRect(x: 22.5, y: 195, width: 330, height: 90)
        secondUiView.image = UIImage(named: "bg_unitList2")
        
        let secondTitle = UILabel(frame: CGRect(x: 20, y: 20, width: 300, height: 20))
        secondTitle.text = "Unit 1 welcome back"
        secondUiView.addSubview(secondTitle)
        
        let secondDescription = UILabel(frame: CGRect(x: 20, y: 40, width: 300, height: 20))
        secondDescription.text = "本单元共有64个单词，24个句子"
        secondDescription.font = UIFont(name: firstDescription.font.fontName, size: 10)
        secondDescription.textColor = UIColor(hexString: "#666666")
        secondUiView.addSubview(secondDescription)
        
        let secondIcon = ZFCircleProgress(frame: CGRect(x: 260, y: 20, width: 40, height: 40))
        secondIcon.pathFillColor = UIColor(hexString: "#FF706B")
        secondIcon.progress = 0.5;
        secondIcon.strokeWidth = 3;
        secondIcon.progressLabel.font = UIFont(name: secondIcon.progressLabel.font.fontName, size: 9)
        
        secondUiView.addSubview(secondIcon)
        
        let desSecIcon = UILabel(frame: CGRect(x: 260, y: 60, width: 40, height: 20))
        desSecIcon.text = "学习进度"
        desSecIcon.font = UIFont(name: desIcon.font.fontName, size: 10)
        desSecIcon.textAlignment = NSTextAlignment.left
        secondUiView.addSubview(desSecIcon)
        
        self.view.addSubview(secondUiView)
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
