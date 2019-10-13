//
//  RecommendationController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/20.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit


class RecommendationController: UIViewController{

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 80*Y_), withTitle: "更多软件推荐")
        
        let backButton = UIButton(frame: CGRect(x: 22.5, y: 45, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        backButton.addTarget(self, action: #selector(popBack), for:.touchUpInside)
        
        
        self.view.addSubview(bg_HeadView)
        self.view.addSubview(backButton)
        
        
        // Do any additional setup after loading the view.

//    let test = RecommandationCellView(frame: CGRect(x: 40, y: 90, width: 300, height: 300))
//        self.view.addSubview(test)
        let myView = Bundle.main.loadNibNamed("RecommandationCellView", owner: nil, options: nil)?.first as? RecommandationCellView
        
        myView?.frame = CGRect(x: 0, y: 90*Y_, width: SCREEN_WIDTH, height: 100*Y_)
        
        if myView != nil {
            setBottomBorder(UIView: myView!)
            self.view.addSubview(myView!)
        }
           
    }
    
    func setBottomBorder(UIView:UIView){
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor(hexString: "#E2E2E2").cgColor
        border.frame = CGRect(x: -10, y: UIView.frame.size.height - width, width:  UIView.frame.size.width+20, height: UIView.frame.size.height)

        border.borderWidth = width
        UIView.layer.addSublayer(border)
        UIView.layer.masksToBounds = true
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
