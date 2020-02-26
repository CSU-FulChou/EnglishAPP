//
//  BookUnitImageView.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2020/2/22.
//  Copyright © 2020 org.csu. All rights reserved.
//

import UIKit

class BookUnitImageView: UIView {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var describLabel: UIImageView!
    
    @IBOutlet weak var bgImageView: UIImageView!
    
    @IBOutlet weak var iconLabel: UILabel!
    var contentView:UIView!
    
    var progressValue = 0.0
    var isLoad = false{
        willSet{
            if newValue == true{
                let progressIcon = ZFCircleProgress(frame: CGRect(x: 305, y: 24, width: 35, height: 35))
                progressIcon.pathFillColor = UIColor(hexString: "#FF706B")
          
                progressIcon.strokeWidth = 3;
                progressIcon.progressLabel.font = UIFont(name: progressIcon.progressLabel.font.fontName, size: 9)
                // set value
                      progressIcon.progress = CGFloat(progressValue)
                
                contentView.addSubview(progressIcon)
            }
            if newValue == false{
        
                let noDownloadIcon = UIImageView(frame:CGRect(x: 305, y: 24, width: 35, height: 35))
                    
//                    CGRect(x: 312, y: 31, width: 29, height: 29))
                noDownloadIcon.image = UIImage(named: "Icon_download")
                contentView.addSubview(noDownloadIcon)
                
            }
        }
    }
    
    func setupUI(){
        //
        
    }
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        contentView = loadViewFromNib()
        addSubview(contentView)
        
    }
    convenience init(){
        self.init(frame:CGRect.zero)
        
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        contentView = loadViewFromNib()
        addSubview(contentView)
        
    }
    override class func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    private func loadViewFromNib() -> UIView{
        let className = type(of: self)
        let bundle = Bundle(for: className)
        let name = NSStringFromClass(className).components(separatedBy: ".").last
        let nib = UINib(nibName: name!, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        return view
    }
}
