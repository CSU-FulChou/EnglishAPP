//
//  NoServiceController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/20.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class NoServiceController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 64*Y_), withTitle: "更多软件推荐")
        let backButton = UIButton(frame: CGRect(x: 22.5*X_, y: 30*Y_, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        backButton.addTarget(self, action: #selector(popBack), for:.touchUpInside)
        self.view.addSubview(bg_HeadView)
        self.view.addSubview(backButton)
        // Do any additional setup after loading the view.
    }
    
    @objc func popBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

}
