//
//  BookView.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2020/2/19.
//  Copyright © 2020 org.csu. All rights reserved.
//

import UIKit

class BookView: UIView {

    @IBOutlet weak var bookImageView: UIImageView!
    
    @IBOutlet weak var progressLabel: UILabel!
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
    
//    let nibName = "BookView"
//    var contentView: UIView?
//
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//
//        guard let view = loadViewFromNib() else { return }
//        view.frame = self.bounds
//        self.addSubview(view)
//        contentView = view
//    }
//
//    func loadViewFromNib() -> UIView? {
//        let bundle = Bundle(for: type(of: self))
//        let nib = UINib(nibName: nibName, bundle: bundle)
//        return nib.instantiate(withOwner: self, options: nil).first as? UIView
//    }

}
