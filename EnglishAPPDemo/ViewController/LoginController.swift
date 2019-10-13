//
//  LoginController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/20.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
  
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var certificationCode: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: 375, height: 70), withTitle: "账户登入")

        let backButton = UIButton(frame: CGRect(x: 22.5, y: 45, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        backButton.addTarget(self, action: #selector(popBack), for:.touchUpInside)

        
        
        let loginBtn = UILabel(frame: CGRect(x: 330, y: 44.5, width: 40, height: 21))
        loginBtn.text = "注册"
        loginBtn.textColor = UIColor.white
        bg_HeadView.addSubview(loginBtn)
        
        self.view.addSubview(bg_HeadView)
        self.view.addSubview(backButton)
        
        setBottomBorder(textField: phoneNumber)
        setBottomBorder(textField: certificationCode)
        
        
//        let settingButton = UIButton(frame: CGRect(x: 342.5, y: 44.5, width: 20, height: 21))
//        settingButton.setBackgroundImage(UIImage(named: "bt_setting"), for: UIControl.State.normal)
//        bg_HeadView.addSubview(settingButton)
//        self.view.addSubview(bg_HeadView)

        // Do any additional setup after loading the view.
    }
    
    func setBottomBorder(textField:UITextField){
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor(hexString: "#E2E2E2").cgColor
        //UIColor.red.cgColor
       // UIColor(hexString: "#E2E2E2").cgColor
        border.frame = CGRect(x: -10, y: textField.frame.size.height - width, width:  textField.frame.size.width+20, height: textField.frame.size.height)
        
        border.borderWidth = width
        textField.layer.addSublayer(border)
        textField.layer.masksToBounds = true
    }
    @objc func popBack(_ sender: Any) {
           self.navigationController?.popViewController(animated: true)
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
