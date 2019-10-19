//
//  RechargeHintView.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/27.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class RechargeHintView: UIView {

    @IBOutlet weak var headView: UIView!
     @IBOutlet weak var titile: UILabel!
    @IBOutlet weak var backBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backBtn.addTarget(self, action: #selector(popBack), for: .touchUpInside)
        
    }
    
    
 @objc  func popBack(){
        self.removeFromSuperview()
    }


}
