//
//  CreditAboutController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/21.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class CreditAboutController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(hexString: "fafafa")
        let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 75), withTitle: "学分使用说明")
        
        let backButton = UIButton(frame:  CGRect(x: 22.5*X_, y: 30*Y_, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        backButton.addTarget(self, action: #selector(popBack), for:.touchUpInside)
       
        
        self.view.addSubview(bg_HeadView)
        self.view.addSubview(backButton)
        textView.font = UIFont(name:textView.font!.fontName, size:15)
        textView.textColor = UIColor(hexString: "#343434")
        let str  = "学分在“学伴”系列软件中使用，学习每一课(单元）需要50学分。学分可通过微信或者支付宝方式进行充值购买，也可以通过注册、贡献、分享等其他活动获取（根据软件发布的活动规则执行）。\n 1、新用户注册即可获得100学分 \n 2、1元=100积分，也可以购买套餐方式获得优惠； \n 3、下载推荐的软件并注册可免费获取一定数量的学分 \n 4、分享”学伴“系列软件到朋友圈可获得100学分；\n 5、提交意见和反馈问题得到采纳可获得50学分 \n 统一注册用户的学风可在“学伴”系列软件中通用，严禁通过非法途径盗取或篡改学分。\n 如充值成功而学分获取失败请联系客服QQ。 \n 客服QQ：1234454546"
        
        let paraph = NSMutableParagraphStyle()
        paraph.lineSpacing = 10;
        let attributes = [NSAttributedString.Key.font:UIFont.systemFont(ofSize: 15),
                          NSAttributedString.Key.paragraphStyle: paraph]
        textView.attributedText = NSAttributedString(string: str, attributes: attributes)
        // Do any additional setup after loading the view.
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
