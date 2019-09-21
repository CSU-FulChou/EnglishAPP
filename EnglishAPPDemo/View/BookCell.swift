//
//  booksChoose.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/20.
//  Copyright © 2019 org.csu. All rights reserved.
//

import Foundation
import UIKit

class BookCell: UIView {
    // var UICellView : UIImageView
    var bookCover : UIImageView
    var Description : UILabel
    var addToShelf : UIButton

    override init(frame:CGRect) {
        
        bookCover = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height/5 * 4));
        Description = UILabel(frame: CGRect(x: 2, y: frame.size.height/5 * 4+2, width: frame.size.width, height: 10))
        Description.textColor = UIColor(hexString: "#FF6967")
        Description.font = UIFont(name: Description.font.fontName, size: 10)
        Description.textAlignment = NSTextAlignment.center
        
        addToShelf = UIButton(frame: CGRect(x: frame.size.width/2+10, y: Description.frame.origin.y+12, width: 50, height:20))
        
        addToShelf.titleLabel?.font = UIFont(name: (addToShelf.titleLabel?.font.fontName)!, size: 9);
        
        addToShelf.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: UIControl.State.normal)
        
        
        addToShelf.layer.masksToBounds = true
        addToShelf.layer.cornerRadius = 10
        addToShelf.layer.borderWidth = 1.0;
        addToShelf.layer.borderColor = UIColor(hexString: "#FF6A68").cgColor

       super.init(frame:frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
