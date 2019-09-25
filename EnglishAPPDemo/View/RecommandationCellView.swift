//
//  RecommandationCellView.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/24.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class RecommandationCellView: UIView {

    
    @IBOutlet weak var downloadBtn: UIButton!
   
    @IBOutlet weak var title: UILabel!

    
    override init(frame:CGRect){
        super.init(frame: frame)
        title.text = "1111"
        
       // setupSubViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        downloadBtn.layer.borderWidth = 1
        downloadBtn.layer.borderColor = UIColor(hexString: "#FF6968").cgColor
        downloadBtn.layer.masksToBounds = true
        downloadBtn.layer.cornerRadius = 10
    }
    
}
