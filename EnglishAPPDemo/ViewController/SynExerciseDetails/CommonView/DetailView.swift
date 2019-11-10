//
//  DetailView.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/11/10.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class DetailView: UIView {
    var detailtextField=UITextField()
    override init(frame: CGRect) {
        super.init(frame:frame)
       
        self.backgroundColor = UIColor(hexString: "#fffcfa")
        
        detailtextField = UITextField(frame: CGRect(x: 22*X_, y: 16*Y_, width: 370*X_, height: 400*Y_))
        detailtextField.textColor = UIColor(hexString: "#555555")
        detailtextField.text = "你好啊，李星河"
        detailtextField.textAlignment = .left
        detailtextField.sizeToFit()
        detailtextField.isUserInteractionEnabled = false
        
        self.addSubview(detailtextField)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
