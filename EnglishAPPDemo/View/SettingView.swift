//
//  SettingView.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/28.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class SettingView: UIView {
  
    @IBOutlet var cornerRadiusBtns: [UIButton]!
    
    

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
    override func awakeFromNib() {
        super.awakeFromNib()
        for btn in cornerRadiusBtns{
            btn.layer.masksToBounds = true
            btn.layer.cornerRadius = 12
        }
    }

}
