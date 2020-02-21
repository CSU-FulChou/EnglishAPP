//
//  OutsideBook.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2020/2/21.
//  Copyright © 2020 org.csu. All rights reserved.
//

import UIKit

//@IBDesignable
class OutsideBook: UIView {
    
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var introduceLabel: UILabel!
    
    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var progressView: UIProgressView!
    var unlockBtn = UIButton(frame: CGRect(x: 135*X_, y: 104*Y_, width: 56*X_, height: 24*Y_))
    
    @IBOutlet weak var progressLabel: UILabel!
    
    @IBOutlet weak var stadyLabel: UILabel!
    var isLock = false{
        willSet(new){
            if new == true {
                
                let lock = UIImageView(frame: bookImageView.frame)
                lock.image = UIImage(named: "lock")
                self.contentView.addSubview(lock)
                
                unlockBtn.setImage(UIImage(named: "bt_unlock"), for: .normal)
                
                unlockBtn.addTarget(self, action: #selector(clickUnlockBtn), for: .touchUpInside)
                self.contentView.addSubview(unlockBtn)
                
                progressView.isHidden = true
                progressLabel.isHidden = true
                stadyLabel.isHidden = true
                
            }

        }
    }
    
    var title = " "
    var introduce = " "
    
    @objc func clickUnlockBtn(){
        print("uivfdf")
    }
    func setupUI(){
        
        introduceLabel.numberOfLines = 0
        introduceLabel.lineBreakMode = .byWordWrapping
        introduceLabel.textColor = UIColor(hexString: "#999999")
        
        progressView.tintColor = UIColor(hexString: "#FFB289")
        progressView.transform = CGAffineTransform(scaleX: 1.0 , y: 1.20)
        progressView.progress = 1.0
        
        
    }
    // 在storyborad中调用了
    override func awakeFromNib() {
        print("call awakeFromNib")
        
        super.awakeFromNib()
        
    }
    //初始化时将xib中的view添加进来
    var contentView:UIView!
    
    ///
    /// - 代码中实例画的时候调用
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("frame")
        contentView = loadViewFromNib()
        addSubview(contentView)
        
         setupUI()
        
    }
    
    /// 从storyborad中实例化的时候调用：
    required init?(coder aDecoder: NSCoder) {
        print("coder")
        super.init(coder: aDecoder)
        contentView = loadViewFromNib()
        addSubview(contentView)
             setupUI()
    }
    
    //加载xib
    func loadViewFromNib() -> UIView {
        let className = type(of: self)
        let bundle = Bundle(for: className)
        let name = NSStringFromClass(className).components(separatedBy: ".").last
        
        let nib = UINib(nibName: name!, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        return view
    }
}
