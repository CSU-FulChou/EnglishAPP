//
//  UnitChooseView.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/14.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class UnitChooseView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let bg_HeadView = UIImageView()
        bg_HeadView.frame = CGRect(x: 0, y: 0, width: 375, height: 70)
        bg_HeadView.image = UIImage(named: "background_head")
        //头部标签。
        let head = UILabel(frame: CGRect(x: 137.5,y: 40, width: 100, height: 30))
        // 应该在这里写一个函数，动态的修改这个 text 的显示的value 
        head.text = "人教版PEP 三年级上册"
        head.textColor = UIColor.white
        head.font = UIFont(name: "Helvetica Neue", size: 17)
        head.textAlignment = NSTextAlignment.center
        bg_HeadView.addSubview(head)
        
        let backButton = UIButton(frame: CGRect(x: 22.5, y: 45, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        bg_HeadView.addSubview(backButton)
        
        let settingButton = UIButton(frame: CGRect(x: 342.5, y: 44.5, width: 20, height: 21))
        settingButton.setBackgroundImage(UIImage(named: "bt_setting"), for: UIControl.State.normal)
        bg_HeadView.addSubview(settingButton)
        self.view.addSubview(bg_HeadView)
        // Do any additional setup after loading the view.
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
