//
//  SynExerciseBigView.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/10/26.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class SynExerciseBigView: UIView {

    @IBOutlet weak var bgImageView: UIImageView!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detialLabel: UILabel!
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    
//    init(frame: CGRect,bgImage image1:UIImage,iconImage image2:UIImage,whitTitle title:String,_ detail:String) {
//        super.init(frame: frame)
//        bgImageView.image = image1
//        iconImageView.image = image2
//        titleLabel.text = title
//        detialLabel.text = detail
//
//    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
}
