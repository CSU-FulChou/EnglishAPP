//
//  WordListening.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/12.
//  Copyright © 2019 org.csu. All rights reserved.
//

import Foundation
import UIKit
class WordListening: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bg_HeadView = UIImageView()
        bg_HeadView.frame = CGRect(x: 0, y: 0, width: 375, height: 70)
        bg_HeadView.image = UIImage(named: "background_head")
        //头部标签。
        let head = UILabel(frame: CGRect(x: 137.5,y: 40, width: 100, height: 30))
        head.text = "单词听写"
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

        // Do any additional setup after loading the view.
        let firstImageView = UIButton(frame: CGRect(x: 37.5, y: 115, width: 300, height: 50))
        firstImageView.backgroundColor = UIColor(hexString: "#f1f1f1")
        firstImageView.layer.masksToBounds = true
        firstImageView.layer.cornerRadius = 20;
        
        let title = UILabel(frame: CGRect(x: 10, y: 16.5, width: 270, height: 25))
        title.text = "Unit1 hello world !"
        firstImageView.addSubview(title)
        
        let nextDetil = UILabel(frame: CGRect(x: 265, y: 15.5, width: 14, height: 25))
        nextDetil.text = ">"
        nextDetil.font = UIFont(name: "Helvetica Neue", size: 20)
        nextDetil.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1) ;     firstImageView.addSubview(nextDetil)
        
        self.view.addSubview(firstImageView)
        
    }
    
    
    
}
