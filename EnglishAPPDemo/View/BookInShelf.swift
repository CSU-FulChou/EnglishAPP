//
//  BookInShelfViewController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/20.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class BookInShelf: UIView {
  
    var bookCover : UIImageView
    var title : UILabel
    var detail : UILabel
    var learnLabel : UILabel
    var learnProgress: UIProgressView
    var ischoose : UIImageView
    
    override init(frame:CGRect) {
        
        bookCover = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height/3 * 2))
        title = UILabel(frame: CGRect(x: 10, y: bookCover.frame.size.height+2, width: frame.size.width/5*4, height: 15))
        title.font = UIFont(name: title.font.fontName, size: 10)
        
        detail = UILabel(frame: CGRect(x: 10, y: title.frame.size.height+title.frame.origin.y, width: title.frame.size.width, height: 30))
        detail.font = UIFont(name: detail.font.fontName, size: 8)
        detail.lineBreakMode = NSLineBreakMode.byWordWrapping
        detail.numberOfLines = 0
        
        
        
        learnLabel = UILabel(frame: CGRect(x: 10, y: detail.frame.origin.y+40, width: 50, height: 10))
        learnLabel.text = "学习进度："
        learnLabel.font = UIFont(name: learnLabel.font.fontName, size: 10)
        learnProgress = UIProgressView(frame: CGRect(x: 61, y: learnLabel.frame.origin.y+3, width: 70, height: 6))
        learnProgress.setProgress(0.5, animated: true)
        learnProgress.progressTintColor = UIColor(hexString: "#FF6F6A")
        learnProgress.transform = CGAffineTransform(scaleX: 1.0, y: 3.0)
        learnProgress.layer.masksToBounds = true
        learnProgress.layer.cornerRadius = 2
        learnProgress.layer.borderColor = UIColor(hexString: "#d8d8d8").cgColor
        learnProgress.layer.borderWidth = 0.1
        learnProgress.trackTintColor = UIColor.white
        
        ischoose = UIImageView(frame: CGRect(x: frame.width-25, y: frame.height-25 ,width: 10, height: 20))
    
        super.init(frame:frame)
        self.addSubview(bookCover)
        self.addSubview(title)
        self.addSubview(detail)
        self.addSubview(title)
        self.addSubview(learnProgress)
        self.backgroundColor = UIColor(hexString: "ffffff")
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
