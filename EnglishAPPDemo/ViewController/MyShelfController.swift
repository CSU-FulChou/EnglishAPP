//
//  MyShelfController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/20.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class MyShelfController: UIViewController {

    @IBOutlet weak var cancelBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(hexString: "fafafa")
        let bg_HeadView = UIImageView()
        bg_HeadView.frame = CGRect(x: 0, y: 0, width: 375, height: 75)
        bg_HeadView.image = UIImage(named: "background_head")
        //头部标签。
        let head = UILabel(frame: CGRect(x: 47.5,y: 40, width: 280, height: 30))
        // 应该在这里写一个函数，动态的修改这个 text 的显示的value
        head.text = "我的书架"
        head.textColor = UIColor.white
        head.font = UIFont(name: "Helvetica Neue", size: 17)
        head.textAlignment = NSTextAlignment.center
        bg_HeadView.addSubview(head)
        
        let backButton = UIButton(frame: CGRect(x: 22.5, y: 45, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        bg_HeadView.addSubview(backButton)
        
        let editBtn = UIButton(frame: CGRect(x: 330, y: 44.5, width: 40, height: 21))
        
        editBtn.isEnabled = true;
        editBtn.setTitle("取消", for: UIControl.State.normal)
        editBtn.setTitle("取消", for: UIControl.State.selected)
        editBtn.addTarget(self, action: #selector(clicked), for: UIControl.Event.touchUpInside)
        
        editBtn.titleLabel?.textColor = UIColor.white
      
        
        self.view.addSubview(bg_HeadView)
        self.view.addSubview(editBtn)
        
        
        let firstBook = BookInShelf(frame: CGRect(x: 20, y: 100, width: 150, height: 250))
        firstBook.bookCover.image = UIImage(named: "bg_books")
        firstBook.title.text = " hhhhh"
        firstBook.detail.text = "本学期共学463个单词，391 个句子。fsd fsdf dsf sd"
        self.view.addSubview(firstBook)
        
        let secondeBook = BookInShelf(frame: CGRect(x: 190, y: 100, width: 150, height: 250))
        secondeBook.bookCover.image = UIImage(named: "bg_books")
        secondeBook.title.text = " hhhhh"
        secondeBook.detail.text = "本学期共学463个单词，391 个句子。fsd fsdf dsf sd"
        self.view.addSubview(secondeBook)
        
        
        
        // 可能还要封装一下：
        let addbookview = UIView(frame: CGRect(x: 20, y: 360, width: 150, height: 250))
        let linePath = UIBezierPath.init()
        linePath.move(to: CGPoint(x: addbookview.frame.width/2-30, y: addbookview.frame.height/2))
        linePath.addLine(to: CGPoint(x: addbookview.frame.width/2+30, y: addbookview.frame.height/2))
        
        let linePathV = UIBezierPath.init()
        linePathV.move(to: CGPoint(x: addbookview.frame.width/2, y: addbookview.frame.height/2-30))
        linePathV.addLine(to: CGPoint(x: addbookview.frame.width/2, y: addbookview.frame.height/2+30))
        
        let lineLayer = CAShapeLayer.init()
        lineLayer.lineWidth = 2
        lineLayer.path = linePath.cgPath
        lineLayer.strokeColor = UIColor(hexString: "e9e9e9").cgColor
        lineLayer.fillColor = UIColor.clear.cgColor
        
        let lineLayerV = CAShapeLayer.init()
        lineLayerV.lineWidth = 2
        lineLayerV.path = linePathV.cgPath
        lineLayerV.strokeColor = UIColor(hexString: "e9e9e9").cgColor
        lineLayerV.fillColor = UIColor.clear.cgColor
        
  
        
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.toValue = 1
        animation.duration = 0.1
        
        lineLayer.add(animation, forKey: "")
        lineLayerV.add(animation, forKey: "")
        
        addbookview.layer.addSublayer(lineLayer)
        addbookview.layer.addSublayer(lineLayerV)
        addbookview.backgroundColor = UIColor(hexString: "ffffff")
        self.view.addSubview(addbookview)
        cancelBtn.isHidden = true;
        
        // Do any additional setup after loading the view.
        
        let testView = Bundle.main.loadNibNamed("RechargeHintView", owner: nil, options:nil)?.first as? RechargeHintView
        testView?.frame.origin = CGPoint(x:108*X_, y: 306.5*Y_)
        if testView != nil {
            let bgView = UIView()
            bgView.frame = self.view.bounds
            bgView.backgroundColor =
                UIColor(white: 0.1, alpha: 0.5)
            
                //UIColor(red: 126, green: 126, blue: 126, alpha: 0.2)
            self.view.addSubview(bgView)
            testView?.backgroundColor =
                UIColor(white: 0.1, alpha: 0)
                //UIColor(red: 126, green: 126, blue: 126, alpha: 0.5)
            bgView.addSubview(testView!)
        }
        
    }
    @objc func clicked(_ sender:UIButton){
        if sender.currentTitle == "编辑" {
            sender.setTitle("取消", for: UIControl.State.normal)
            cancelBtn.isHidden = false
        }
        else{
            sender.setTitle("编辑", for: UIControl.State.normal)
            cancelBtn.isHidden = true
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
