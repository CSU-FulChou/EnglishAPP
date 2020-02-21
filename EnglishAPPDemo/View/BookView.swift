//
//  BookView.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2020/2/19.
//  Copyright © 2020 org.csu. All rights reserved.
//

import UIKit

@IBDesignable
class BookView: UIView {

    @IBOutlet weak var bookImageView: UIImageView!
    
    @IBOutlet weak var progressLabel: UILabel!
    
  
    @IBInspectable var bookImage: UIImage = UIImage() {
           didSet {
               self.bookImageView.image = bookImage
           }
       }
    
    
    // 在storyborad中调用了
    override func awakeFromNib() {
        print("call awakeFromNib")
        
          super.awakeFromNib()

      }
    
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//
//    }
    
    
//    static func loadView()->BookView{
//        return Bundle.main.loadNibNamed("BookView", owner: nil, options: nil)?.first as! BookView
//    }
    
 
    //初始化时将xib中的view添加进来
      var contentView:UIView!
    
    ///
    /// - 代码中实例画的时候调用
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("frame")
        contentView = loadViewFromNib()
        addSubview(contentView)
  
    }

     /// 从storyborad中实例化的时候调用：
    required init?(coder aDecoder: NSCoder) {
        print("coder")
        super.init(coder: aDecoder)
        contentView = loadViewFromNib()
        addSubview(contentView)

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
