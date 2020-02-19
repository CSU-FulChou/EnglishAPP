//
//  WordListeningViewController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/13.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class ListeningDetails: UIViewController {
    
    @IBOutlet weak var chooseCourse: UIButton!
    @IBOutlet weak var progresssView: ZFCircleProgress!
   
    @IBOutlet weak var lastCourseLabel: UILabel!
    @IBOutlet weak var nextCourseLabel: UILabel!
    @IBOutlet weak var bg_round: UIImageView!
    @IBOutlet weak var arrowDownImageView: UIImageView!
    var headTitle:String = ""
    var chooseLessionsView:ChooseLessionsView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // 给全局绑定一个点击函数
        let viewGestureRecongnizer = UITapGestureRecognizer(target: self, action: #selector(noChoose(sender:)))
        viewGestureRecongnizer.delegate = self
        viewGestureRecongnizer.numberOfTapsRequired = 1
        self.view.isUserInteractionEnabled = true
        self.view.addGestureRecognizer(viewGestureRecongnizer)
        
        let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 64*Y_), withTitle: headTitle)
        let backButton = UIButton(frame: CGRect(x: 22.5*X_, y: 30*X_, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        let settingButton = UIButton(frame: CGRect(x: 370*X_, y: 29.5*Y_, width: 20, height: 20))
        settingButton.setBackgroundImage(UIImage(named: "bt_setting"), for: UIControl.State.normal)
        backButton.addTarget(self, action: #selector(popBack), for:.touchUpInside)

        self.view.addSubview(bg_HeadView)
        self.view.addSubview(backButton)
        self.view.addSubview(settingButton)
        
        chooseCourse.frame = CGRect(x: 96*X_, y: 84*Y_, width: 222, height: 30)
        chooseCourse.layer.masksToBounds = true
        chooseCourse.layer.cornerRadius = 13
        chooseCourse.layer.borderWidth = 1
        chooseCourse.layer.borderColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        chooseCourse.addTarget(self, action: #selector(chooseLession), for: .touchUpInside)
        
        bg_round.image = UIImage(named: "bg_round")
        bg_round.layer.masksToBounds = true
        bg_round.layer.cornerRadius = bg_round.frame.width/2
        //chooseCourse.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        // Do any additional setup after loading the view.
        progresssView.startAngle = 0;
        progresssView.reduceAngle = 0;
        progresssView.strokeWidth = 5;
        progresssView.duration = 2.0;
        progresssView.showPoint = false
        progresssView.showProgressText = false
        progresssView.increaseFromLast = true 
        progresssView.progress = 0.5
        progresssView.pathBackColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        progresssView.pathFillColor = UIColor(hexString: "#FF6968")
        
        setupFrame()
    }
    
    func setupFrame(){
        lastCourseLabel.frame = CGRect(x: 22.5*X_, y: 91*Y_, width: 52, height: 15)
        nextCourseLabel.frame = CGRect(x: 323, y: 90.5, width: 52, height: 17)
        arrowDownImageView.frame = CGRect(x: 275, y: 85, width: 18, height: 28)
    }
    @objc func popBack(_ sender: Any) {
           self.navigationController?.popViewController(animated: true)
       }
    
    @objc func chooseLession(){
           //print("sdfsdf")
           chooseLessionsView = Bundle.main.loadNibNamed("ChooseLessionsView", owner: nil, options: nil)?.first as? ChooseLessionsView
           chooseLessionsView?.frame.origin = CGPoint(x: 8*X_, y: 110*Y_)
           chooseLessionsView?.tag = 100
           if chooseLessionsView != nil{
               self.view.addSubview(chooseLessionsView!)
           }
           
       }
    @objc func noChoose(sender:UITapGestureRecognizer){
       
     if  let viewWithtag = self.view.viewWithTag(100){
       viewWithtag.removeFromSuperview()
           if chooseLessionsView != nil{
                      chooseLessionsView = nil;
        }
    }
   }


}

extension ListeningDetails: UIGestureRecognizerDelegate {
    // 控制点击函数，在弹出的view上点击不起作用；
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        
        if self.view.viewWithTag(100) != nil{
            if touch.view?.isDescendant(of: self.view.viewWithTag(100)!) == true {
                return false
            }
        }
        if self.view.viewWithTag(102) != nil{
            if touch.view?.isDescendant(of: self.view.viewWithTag(102)!) == true {
                return false
            }
        }
        return true
    }
}
