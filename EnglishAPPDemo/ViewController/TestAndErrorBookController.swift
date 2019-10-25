//
//  TestAndErrorBookController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/10/25.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class TestAndErrorBookController: UIViewController {

    @IBOutlet weak var chooseCourse: UIButton!
    @IBOutlet var optionBtns: [UIButton]!
    @IBOutlet var bottomBtns: [UIButton]!
    
    @IBOutlet weak var hearPlayBtn: UIButton!
    @IBOutlet weak var phoneticSymbLabel: UILabel!
    var isNeedListening:Bool = false
    var headTitle = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 64*Y_), withTitle: headTitle)
        let backButton = UIButton(frame: CGRect(x: 22.5*X_, y: 30*X_, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        let settingButton = UIButton(frame: CGRect(x: 370*X_, y: 29.5*Y_, width: 20, height: 20))
        settingButton.setBackgroundImage(UIImage(named: "bt_setting"), for: UIControl.State.normal)
        backButton.addTarget(self, action: #selector(popBack), for:.touchUpInside)

        self.view.addSubview(bg_HeadView)
        self.view.addSubview(backButton)
        self.view.addSubview(settingButton)
        
    
        chooseCourse.layer.masksToBounds = true
        chooseCourse.layer.cornerRadius = 12
        chooseCourse.layer.borderWidth = 1
        chooseCourse.layer.borderColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        // Do any additional setup after loading the view.
        for btn in optionBtns {
//            btn.frame = CGRect(x: 82*X_, y: 211, width: 250*X_, height: <#T##CGFloat#>)
            btn.layer.masksToBounds = true
            btn.layer.cornerRadius = 20
            btn.layer.borderWidth = 1
            btn.layer.borderColor = UIColor(hexString: "#B8B8B8").cgColor
        }
        for bottomBtn in bottomBtns{
            bottomBtn.layer.masksToBounds = true
            bottomBtn.layer.cornerRadius = 12
        
        }
        if isNeedListening{
            phoneticSymbLabel.isHidden = true
        }else{
            hearPlayBtn.isHidden = true
        }
    }
    @objc func popBack(_ sender: Any) {
           self.navigationController?.popViewController(animated: true)
       }

}
