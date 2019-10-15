//
//  HeadBgView.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/10/13.
//  Copyright © 2019 org.csu. All rights reserved.
//

import Foundation
import UIKit
class HeadBgView: UIImageView {
    var headLable : UILabel

    init(frame:CGRect, withTitle title:String) {

        //头部标签。
        headLable = UILabel(frame:  CGRect(x: 67*X_,y: 25*Y_, width: 280*X_, height: 30*Y_))
        headLable.text = title
        headLable.textColor = UIColor.white
        headLable.font = UIFont(name: "Helvetica Neue", size: 18)
        headLable.textAlignment = NSTextAlignment.center
        super.init(frame: frame)
        self.image = UIImage(named: "background_head")
        self.addSubview(headLable)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
}
