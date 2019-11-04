//
//  WriteLearnDetailController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/11/4.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class WriteLearnDetailController: UIViewController {
    var key = "A Doll"
    var titleView:UIView = {
        let titleView = UIView(frame: CGRect(x: 0, y: 71*Y_, width: SCREEN_WIDTH, height: 45*Y_))
        titleView.backgroundColor = UIColor(hexString: "f1f2f5")
        return titleView
    }()
    
    var titleLabel:UILabel = {
        let titleLabel = UILabel(frame: CGRect(x: 30*X_, y: 15*Y_, width: 46*X_, height: 23*Y_))
            titleLabel.textColor = UIColor(hexString: "#FF8A87")
        return titleLabel
    }()
    var bodyView:UIView = {
        let bodyView = UIView(frame: CGRect(x: 0, y: 115*Y_, width: SCREEN_WIDTH, height: 621*Y_))
        bodyView.backgroundColor = UIColor(hexString:"#FFFCFA")
        return bodyView
    }()
    var detailLabelContents = "Look at the box. What can you see? \n Curly hair. \n Two big eyes.\n One nose.\n Tow ears. \n A small mouth. \n And a nice dress.\n I can see a beautiful doll."
    var detailLabel = UILabel(frame: CGRect(x: 30*X_, y: 12*Y_, width: SCREEN_WIDTH-60*X_, height: 300*Y_))
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 71*Y_), headLableFrame: CGRect(x: 145*X_, y: 35*Y_, width: 124*X_, height: 23*Y_), withTitle: "写作学习")
        let backButton = UIButton(frame: CGRect(x: 22*X_, y: 37*Y_, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        backButton.addTarget(self, action: #selector(popBack), for:.touchUpInside)
        self.view.addSubview(bg_HeadView)
        self.view.addSubview(backButton)
        titleLabel.text = key
        titleView.addSubview(titleLabel)
  
        self.view.addSubview(titleView)
        detailLabel.textAlignment = .left
        detailLabel.numberOfLines = 0
        detailLabel.text = detailLabelContents
        bodyView.addSubview(detailLabel)
        self.view.addSubview(bodyView)
        
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
