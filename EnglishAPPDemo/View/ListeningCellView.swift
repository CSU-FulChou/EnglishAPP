//
//  ListenningCellView.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/26.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

protocol ListeningCellViewDelegate{
    
    func tryListening(index:Int)
    func followReadBten()
}
class ListeningCellView: UIView {
    
    var delegate:ListeningCellViewDelegate!
    
    @IBOutlet weak var enContent: UILabel!
    @IBOutlet weak var starView: StarView!
    @IBOutlet weak var znContentLabel: UILabel!
    @IBOutlet weak var tryListeningBtn: UIButton!
    @IBOutlet weak var followReadBtn: UIButton!
    @IBOutlet weak var beginAndPauseBtn: UIButton!
    
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var tagLabel: UILabel!
    
    var number:Int = 1 {
        willSet{
            self.tagLabel.text = "\(number)4"
        }
    }
    
    var contentView:UIView!
    
    func setupUI(){
        //
        starView.canSelect = true
        starView.drawStar(level: 4, count: 5)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        contentView = loadViewFromNib()
        setupUI()
        addSubview(contentView)
        
    }
    
    convenience init(){
        self.init(frame:CGRect.zero)
        
    }
    
    @IBAction func tryListeningBtn(_ sender: Any) {
        tag = self.tag
        delegate.tryListening(index:tag)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        contentView = loadViewFromNib()
        setupUI()
        addSubview(contentView)
        
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
