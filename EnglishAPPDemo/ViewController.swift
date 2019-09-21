//
//  ViewController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/2.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let animView=UIView()
    @IBOutlet weak var todayCourse: UILabel!

    override func viewDidLoad() {
       
        super.viewDidLoad()
        // 一个动画demo
//        animView.frame=CGRect(x:0,y:0,width:100,height:100)
//        animView.center=view.center
//        animView.backgroundColor=UIColor.green
//        view.addSubview(animView)
//        UIView.animate(withDuration: 2,delay:1,usingSpringWithDamping:0.2,initialSpringVelocity:0,options:[.repeat,.autoreverse], animations:{
//            self.animView.transform=CGAffineTransform(scaleX: 0.5, y: 0.5)
//        },completion:nil)
        
        init_ui()
//                let label = UILabel()
//                label.text = "查看历史成绩 >"
//                //let attrString = NSMutableAttributedString(string: )
//                label.frame = CGRect(x: 192.3, y: 212, width: 39, height: 7.3)
//                label.numberOfLines = 0
////                let attr: [NSAttributedString.Key : Any] = [.font: UIFont(name: "苹方-简 细体", size: 5.3) as Any,.foregroundColor: UIColor(red: 0, green: 0, blue: 0, alpha: 1)]
////                attrString.addAttributes(attr, range: NSRange(location: 0, length: attrString.length))
////                label.attributedText = attrString
//                view.addSubview(label)
        
//        let purpleView = UIView()
//        purpleView.backgroundColor = UIColor.purple
//        purpleView.frame = CGRect(x:0,y:100,width:150,height:150)
//        view.addSubview(purpleView)
        
        
      
        
}
    override func viewDidAppear(_ animated: Bool) {
       // todayCourse.text = "hello"
    }
    
    func init_ui() -> Void {

    }
    


}

