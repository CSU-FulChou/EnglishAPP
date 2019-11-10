//
//  ChooseVIew.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/11/10.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class ChooseVIew: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    //var chooseView = UIView()
    var lastCourseBtn = UIButton()
    var nextCourseBtn = UIButton()
    var currentCourseLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        
        //chooseView = UIView(frame: CGRect(x: 0, y: 71*Y_, width: SCREEN_WIDTH, height: 52*Y_))
        self.backgroundColor = UIColor(hexString: "#fff8f2")
        
        lastCourseBtn = UIButton(frame: CGRect(x: 15*X_, y: 13*Y_, width: 47*X_, height: 25*Y_))
        lastCourseBtn.backgroundColor = UIColor(hexString: "#FFB289")
        lastCourseBtn.titleLabel?.font = UIFont(name: (lastCourseBtn.titleLabel?.font.fontName)!, size: 11)
        lastCourseBtn.layer.masksToBounds = true
        lastCourseBtn.layer.cornerRadius = 10
        lastCourseBtn.setTitle("上一篇", for: .normal)
        
        nextCourseBtn = UIButton(frame: CGRect(x: 353*X_, y: 13*Y_, width: 47*X_, height: 25*Y_))
        nextCourseBtn.backgroundColor = UIColor(hexString: "#FFB289")
        nextCourseBtn.titleLabel?.font = UIFont(name: (nextCourseBtn.titleLabel?.font.fontName)!, size: 11)
        nextCourseBtn.layer.masksToBounds = true
        nextCourseBtn.layer.cornerRadius = 10
        nextCourseBtn.setTitle("下一篇", for: .normal)
        
        currentCourseLabel = UILabel(frame: CGRect(x: 193*X_, y: 14*Y_, width: 28*X_, height: 20*Y_))
        currentCourseLabel.font = UIFont(name: currentCourseLabel.font.fontName, size: 14)
        currentCourseLabel.textColor = UIColor(hexString: "#999999")
        currentCourseLabel.text = "1/76"
        
        self.addSubview(lastCourseBtn)
        self.addSubview(nextCourseBtn)
        self.addSubview(currentCourseLabel)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
