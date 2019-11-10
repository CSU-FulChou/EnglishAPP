//
//  DailyLearnController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/11/10.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class DailyLearnController: UIViewController {
    var key = " "
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 71*Y_), headLableFrame: CGRect(x: 119*X_, y: 35*Y_, width: 176*X_, height: 23*Y_), withTitle: "日常用语")
        let backButton = UIButton(frame: CGRect(x: 22*X_, y: 37*Y_, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        backButton.addTarget(self, action: #selector(popBack), for:.touchUpInside)
        
        let chooseView = ChooseVIew(frame: CGRect(x: 0, y: 71*Y_, width: SCREEN_WIDTH, height: 52*Y_))
        
//        chooseView.backgroundColor = UIColor(hexString: "#fff8f2")
//
//        let lastCourseBtn = UIButton(frame: CGRect(x: 15*X_, y: 13*Y_, width: 47*X_, height: 25*Y_))
//        lastCourseBtn.backgroundColor = UIColor(hexString: "#FFB289")
//        lastCourseBtn.titleLabel?.font = UIFont(name: (lastCourseBtn.titleLabel?.font.fontName)!, size: 11)
//        lastCourseBtn.layer.masksToBounds = true
//        lastCourseBtn.layer.cornerRadius = 10
//        lastCourseBtn.setTitle("上一篇", for: .normal)
//
//        let nextCourseBtn = UIButton(frame: CGRect(x: 353*X_, y: 13*Y_, width: 47*X_, height: 25*Y_))
//        nextCourseBtn.backgroundColor = UIColor(hexString: "#FFB289")
//        nextCourseBtn.titleLabel?.font = UIFont(name: (nextCourseBtn.titleLabel?.font.fontName)!, size: 11)
//        nextCourseBtn.layer.masksToBounds = true
//        nextCourseBtn.layer.cornerRadius = 10
//        nextCourseBtn.setTitle("下一篇", for: .normal)
//
//         let currentCourseLabel = UILabel(frame: CGRect(x: 193*X_, y: 14*Y_, width: 28*X_, height: 20*Y_))
//         currentCourseLabel.font = UIFont(name: currentCourseLabel.font.fontName, size: 14)
//         currentCourseLabel.textColor = UIColor(hexString: "#999999")
//        currentCourseLabel.text = "1/76"
//
//        chooseView.addSubview(lastCourseBtn)
//        chooseView.addSubview(nextCourseBtn)
//        chooseView.addSubview(currentCourseLabel)
        
        let titleLabel = UILabel(frame: CGRect(x: 22*X_, y: 135*Y_, width: 72*X_, height: 23*Y_))
        titleLabel.text = key
        titleLabel.textColor = UIColor(hexString: "ff8A87")
        
        let detailView = DetailView(frame: CGRect(x: 0, y: 168*Y_, width: SCREEN_WIDTH, height: 568*Y_))
//            UIView(frame: CGRect(x: 0, y: 168*Y_, width: SCREEN_WIDTH, height: 568*Y_))
//        detailView.backgroundColor = UIColor(hexString: "#fffcfa")
//
//        let detailLabel = UITextField(frame: CGRect(x: 22*X_, y: 16*Y_, width: 370*X_, height: 400*Y_))
//        detailLabel.textColor = UIColor(hexString: "#555555")
//        detailLabel.text = "你好啊，李星河"
//        detailLabel.textAlignment = .left
//        detailLabel.sizeToFit()
//        detailLabel.isUserInteractionEnabled = false
//        detailView.addSubview(detailLabel)
        self.view.addSubview(detailView)
    
        self.view.addSubview(titleLabel)
        self.view.addSubview(chooseView)
        self.view.addSubview(bg_HeadView)
        self.view.addSubview(backButton)
        // Do any additional setup after loading the view.
    }
    
    
    @objc func popBack(_ sender: Any) {
           self.navigationController?.popViewController(animated: true)
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
