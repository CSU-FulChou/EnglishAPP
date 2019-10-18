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
        let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 64*Y_), withTitle: "账户登入")

        let backButton = UIButton(frame: CGRect(x: 22.5*X_, y: 30*Y_, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        backButton.addTarget(self, action: #selector(popBack), for:.touchUpInside)

        let registerBtn = UIButton(frame: CGRect(x: 355*X_, y: 29.5*Y_, width: 40, height: 21))
        registerBtn.setTitle("注册", for: .normal)
        registerBtn.setTitleColor(UIColor.white, for: .normal)
        registerBtn.addTarget(self, action: #selector(register), for: .touchUpInside)
        
        self.view.addSubview(bg_HeadView)
        self.view.addSubview(backButton)
        self.view.addSubview(registerBtn)
        
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

    @objc func register(){
        let registerVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RegisterController")
        self.navigationController!.pushViewController(registerVC, animated: true)
    }
    
}
