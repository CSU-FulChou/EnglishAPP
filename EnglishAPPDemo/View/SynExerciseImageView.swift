//
//  SynExerciseImageView.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/10/26.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit
// 小的学习图标：
class SynExerciseImageView: UIImageView {
    var iconImageView:UIImageView = UIImageView()
    var titleLabel:UILabel{
        let title = UILabel(frame: CGRect(x: 26*X_, y:22*Y_, width: 75*X_, height: 25*Y_))
        title.font = title.font.withSize(18)
        //title.sizeToFit()
        self.addSubview(title)
        return title
    }
    var detailLabel:UILabel = UILabel()
    
//    var detailLabel:UILabel{
//        let detail = UILabel(frame: CGRect(x: 26*X_, y:54*Y_, width: 99*X_, height: 15*Y_))
//        detail.font = detail.font.withSize(11)
//        //detail.sizeToFit()
//        self.addSubview(detail)
//        return detail
//    }
    
    
    init(frame: CGRect,bgImageName bgname:String,iconImageName name2:String,Iconframe frameIcon:CGRect,withTitleAndDetail title:String,_ detail:String) {
        iconImageView = UIImageView(frame:frameIcon)
        super.init(frame:frame)
        
        detailLabel.frame = CGRect(x: 26*X_, y:54*Y_, width: 99*X_, height: 15*Y_)
        detailLabel.font = detailLabel.font.withSize(11)
        self.addSubview(detailLabel)
        
        self.addSubview(iconImageView)
        self.image = UIImage(named: bgname)
        iconImageView.image = UIImage(named: name2)
        detailLabel.text = detail
        titleLabel.text = title
        detailLabel.sizeToFit()
        titleLabel.sizeToFit()
        
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        //fatalError("init(coder:) has not been implemented")
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
