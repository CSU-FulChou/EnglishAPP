//
//  RecommendationController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/20.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class RecommendationController: UIViewController {
    @IBOutlet weak var testView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let bg_HeadView = UIImageView()
        bg_HeadView.frame = CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 80*Y_)
        bg_HeadView.image = UIImage(named: "background_head")
        //头部标签。
        let head = UILabel(frame: CGRect(x: 74*X_,y: 40, width: 280*X_, height: 30*Y_))
        // 应该在这里写一个函数，动态的修改这个 text 的显示的value
        head.text = "更多软件推荐"
        head.textColor = UIColor.white
        head.font = UIFont(name: "Helvetica Neue", size: 17)
        head.textAlignment = NSTextAlignment.center
        bg_HeadView.addSubview(head)
        
        let backButton = UIButton(frame: CGRect(x: 22.5, y: 45, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        bg_HeadView.addSubview(backButton)
        
        self.view.addSubview(bg_HeadView)
        // Do any additional setup after loading the view.

    let test = RecommandationCellView(frame: CGRect(x: 40, y: 90, width: 70, height: 70))
        self.view.addSubview(test)
        
                
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
