//
//  RegisterController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/20.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class RegisterController: UIViewController {

    @IBOutlet weak var phoneNumbers: UITextField!
    @IBOutlet weak var certificationCode: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 64*Y_), withTitle: "账户注册")
        let backButton = UIButton(frame: CGRect(x: 22.5*X_, y: 30*Y_, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        backButton.addTarget(self, action: #selector(popBack), for:.touchUpInside)
        setBottomBorder(textField: phoneNumbers)
        setBottomBorder(textField: certificationCode)
        setBottomBorder(textField: password)
        self.view.addSubview(bg_HeadView)
        self.view.addSubview(backButton)
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @objc func popBack(_ sender: Any) {
           self.navigationController?.popViewController(animated: true)
       }


}
