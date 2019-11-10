//
//  SchoolOralController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/11/10.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class SchoolOralController: UIViewController {
    var key = " "
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 71*Y_), headLableFrame: CGRect(x: 119*X_, y: 35*Y_, width: 176*X_, height: 23*Y_), withTitle: "学校口语")
        let backButton = UIButton(frame: CGRect(x: 22*X_, y: 37*Y_, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        backButton.addTarget(self, action: #selector(popBack), for:.touchUpInside)
        
        let chooseView = ChooseVIew(frame: CGRect(x: 0, y: 71*Y_, width: SCREEN_WIDTH, height: 52*Y_))
        let titleLabel = UILabel(frame: CGRect(x: 22*X_, y: 135*Y_, width: 72*X_, height: 23*Y_))
        titleLabel.text = key
        titleLabel.textColor = UIColor(hexString: "ff8A87")
        
        let detailView = DetailView(frame: CGRect(x: 0, y: 168*Y_, width: SCREEN_WIDTH, height: 568*Y_))
        self.view.addSubview(detailView)
        
        self.view.addSubview(titleLabel)
        self.view.addSubview(chooseView)
        self.view.addSubview(bg_HeadView)
        self.view.addSubview(backButton)
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
