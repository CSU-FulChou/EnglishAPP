//
//  ListeningLearnDetailController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/11/4.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class ListeningLearnDetailController: UIViewController {
    var isHide = false
    var isPlay = true
    var titleLabelText_ZN = ""
    var titleView:UIView = {
        let titleView = UIView(frame: CGRect(x: 0, y: 71*Y_, width: SCREEN_WIDTH, height: 85*Y_))
        titleView.backgroundColor = UIColor(hexString: "#FFF8F2")
        return titleView
    }()
    var titleLabel_EN:UILabel = {
        let titleLabel_EN = UILabel(frame: CGRect(x: 22*X_, y: 16*Y_, width: 198*X_, height: 23*Y_))
        //此时如果 sizetofit那么这个label的大小就变成了（0，0）
        //titleLabel_EN.sizeToFit()
        titleLabel_EN.textColor = UIColor(hexString: "#FF8A87")
        return titleLabel_EN
    }()
    var titleLabel_ZN:UILabel = {
        let titleLabel_ZN = UILabel(frame: CGRect(x: 22*X_, y: 46*Y_, width: 198*X_, height: 22*Y_))
        titleLabel_ZN.font = UIFont(name: titleLabel_ZN.font.fontName, size: 15)
        //titleLabel_ZN.sizeToFit()
        titleLabel_ZN.textColor = UIColor(hexString: "#505050")
        return titleLabel_ZN
    }()
    var lastCourseBtn:UIButton = {
        let lastCourseBtn = UIButton(frame: CGRect(x: 251*X_, y: 44*Y_, width: 47*X_, height: 25*Y_))
        lastCourseBtn.backgroundColor = UIColor(hexString: "#FFB289")
        lastCourseBtn.titleLabel?.font = UIFont(name: (lastCourseBtn.titleLabel?.font.fontName)!, size: 11)
        lastCourseBtn.layer.masksToBounds = true
        lastCourseBtn.layer.cornerRadius = 10
        lastCourseBtn.setTitle("上一篇", for: .normal)
        //lastCourseBtn.sizeToFit()
        return lastCourseBtn
    }()
    var nextCourseBtn:UIButton = {
        let nextCourseBtn = UIButton(frame: CGRect(x: 353*X_, y: 44*Y_, width: 47*X_, height: 25*Y_))
        nextCourseBtn.backgroundColor = UIColor(hexString: "#FFB289")
        nextCourseBtn.titleLabel?.font = UIFont(name: (nextCourseBtn.titleLabel?.font.fontName)!, size: 11)
        nextCourseBtn.layer.masksToBounds = true
        nextCourseBtn.layer.cornerRadius = 10
        nextCourseBtn.setTitle("下一篇", for: .normal)
        //nextCourseBtn.addTarget(, action: <#T##Selector#>, for: <#T##UIControl.Event#>)
        //nextCourseBtn.sizeToFit()
        return nextCourseBtn
    }()
    
    var currentCourseLabel:UILabel = {
        let currentCourseLabel = UILabel(frame: CGRect(x: 313*X_, y: 49*Y_, width: 23*X_, height: 15*Y_))
        currentCourseLabel.font = UIFont(name: currentCourseLabel.font.fontName, size: 11)
        
       // currentCourseLabel.sizeToFit()
        currentCourseLabel.textColor = UIColor(hexString: "#999999")
        return currentCourseLabel
     }()
     var playBtn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 71*Y_), headLableFrame: CGRect(x: 119*X_, y: 35*Y_, width: 176*X_, height: 23*Y_), withTitle: "听力学习")
        let backButton = UIButton(frame: CGRect(x: 22*X_, y: 37*Y_, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        backButton.addTarget(self, action: #selector(popBack), for:.touchUpInside)
        
        let isHidelabel = UIButton(frame: CGRect(x: 341*X_, y: 36*Y_, width: 61*X_, height: 19*Y_))
        isHidelabel.setTitle("隐藏原文", for: .normal)
        isHidelabel.titleLabel?.font = UIFont(name: (isHidelabel.titleLabel?.font.fontName)!, size: 12)
        
        
        self.view.addSubview(bg_HeadView)
        self.view.addSubview(backButton)
        
        titleLabel_EN.text = "hello world"
        titleView.addSubview(titleLabel_EN)
        
        titleView.addSubview(titleLabel_ZN)
        currentCourseLabel.text = "1/76"
        titleLabel_ZN.text = " 你好世界 "
        //currentCourseLabel.isHidden = true
        titleView.addSubview(currentCourseLabel)
        lastCourseBtn.addTarget(self, action: #selector(test(_:)), for: .touchUpInside)
        nextCourseBtn.addTarget(self, action: #selector(test(_:)), for: .touchUpInside)
        titleView.addSubview(lastCourseBtn)
        titleView.addSubview(nextCourseBtn)
        self.view.addSubview(isHidelabel)
        self.view.addSubview(titleView)
        
        setUI()
        // Do any additional setup after loading the view.
    }
    func setUI(){
        // 播放按钮
        playBtn = UIButton(frame: CGRect(x: 22*X_, y: 177*Y_, width: 18*X_, height: 22*Y_))
        if isPlay{
            playBtn.setImage(UIImage(named: "bt_pauseRed"), for: .normal)
        }else{
            playBtn.setImage(UIImage(named: "bt_beginRed"), for: .normal)
        }
        playBtn.addTarget(self, action: #selector(clickPlayer), for: .touchUpInside)
        self.view.addSubview(playBtn)
        
        let progressLine = UIProgressView(frame: CGRect(x: 53*X_, y: 186*Y_, width: 300*X_, height: 1*Y_))
        progressLine.setProgress(0.5, animated: true)
        progressLine.progressTintColor = UIColor(hexString: "#ff8a87")
        progressLine.trackTintColor = UIColor(hexString: "#d3d3d3")
        self.view.addSubview(progressLine)
        
        let timeLabel = UILabel(frame: CGRect(x: 363*X_, y: 177*Y_, width: 40*X_, height: 17*Y_))
        timeLabel.textColor = UIColor(hexString: "#999999")
        timeLabel.text = "-00:53"
        timeLabel.font = UIFont(name: timeLabel.font.fontName, size: 12)
        self.view.addSubview(timeLabel)

        let detailView = UIView(frame: CGRect(x: 0, y: 214*Y_, width: SCREEN_WIDTH, height: 523*Y_))
        detailView.backgroundColor = UIColor(hexString: "#fffcfa")
        
        let detailLabel = UITextField(frame: CGRect(x: 22*X_, y: 16*Y_, width: 370*X_, height: 400*Y_))
        detailLabel.textColor = UIColor(hexString: "#555555")
        detailLabel.text = "将要学习的句子。"
        detailLabel.textAlignment = .left
        detailLabel.sizeToFit()
        detailLabel.isUserInteractionEnabled = false
        detailView.addSubview(detailLabel)
        self.view.addSubview(detailView)
    }
    @objc func clickPlayer(){
        if isPlay {
            isPlay = false
            playBtn.setImage(UIImage(named: "bt_beginRed"), for: .normal)
        }else{
            isPlay = true
            playBtn.setImage(UIImage(named: "bt_pauseRed"), for: .normal)
        }
        
    }
    
    @objc func popBack(_ sender: Any) {
           self.navigationController?.popViewController(animated: true)
       }
    @objc func test(_ sender: Any) {
           print("test test !!")
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
