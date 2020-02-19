//
//  UnitChooseView.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/14.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class BookUnitChooseView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 64*Y_), withTitle: "人教版PEP 三年级上册")
        let backButton = UIButton(frame: CGRect(x: 22.5*X_, y: 30*X_, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        backButton.addTarget(self, action: #selector(popBack), for: .touchUpInside)
        let settingButton = UIButton(frame: CGRect(x: 370*X_, y: 29.5*Y_, width: 20, height: 20))
        settingButton.setBackgroundImage(UIImage(named: "bt_setting"), for: UIControl.State.normal)

        self.view.addSubview(bg_HeadView)
        self.view.addSubview(backButton)
        self.view.addSubview(settingButton)
        
        
        // 第一栏 单元候选项。
        let firstUiView = UIImageView()
        firstUiView.frame = CGRect(x: 42*X_, y: 95, width: 330, height: 90)
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
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapup))
        
        firstUiView.isUserInteractionEnabled = true
        firstUiView.addGestureRecognizer(tapGesture)
        self.view.addSubview(firstUiView)
        
  //-----------------------------------------------------//
        let secondUiView = UIImageView()
        secondUiView.frame = CGRect(x: 42*X_, y: 195, width: 330, height: 90)
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
        
        let myCell = UnitChooseCell(frame: CGRect(x: 42*X_, y: 300, width: 330, height: 90))
        myCell.image = UIImage(named: "bg_unitList2")
        myCell.Title.text = "Unit 3 welcome back"
        myCell.Description.text = "本单元共有1048个单词，240个句子"
    
        myCell.unDownLoadIcon.image = UIImage(named: "Icon_download")
        myCell.desIcon.text = "未下载"
        
        myCell.addSubview(myCell.Title)
        myCell.addSubview(myCell.Description)
        myCell.addSubview(myCell.unDownLoadIcon)
        myCell.addSubview(myCell.desIcon)
        self.view.addSubview(myCell)
        
        
        // Do any additional setup after loading the view.
    }
    
    @objc func popBack(){
    self.navigationController?.popViewController(animated: true)
    }
    
    @objc func tapup(){
        let bookDetailVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BookDetailController")
        self.navigationController!.pushViewController(bookDetailVC, animated: true)
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
