//
//  BookDetailController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/26.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class BookDetailController: UIViewController {
    var settingView : SettingView?
    var bgBlackView : UIView?
    var chooseLessionsView : ChooseLessionsView?
    @IBOutlet weak var chooseUnitBtn: UIButton!
    @IBOutlet weak var contentsView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // 给全局绑定一个点击函数
        let viewGestureRecongnizer = UITapGestureRecognizer(target: self, action: #selector(noChoose(sender:)))
        viewGestureRecongnizer.delegate = self
        viewGestureRecongnizer.numberOfTapsRequired = 1
        self.view.isUserInteractionEnabled = true
        self.view.addGestureRecognizer(viewGestureRecongnizer)
        //
        self.view.backgroundColor = UIColor(hexString: "fafafa")
        
         let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 64*Y_), withTitle: "人教版PEP 三年级上册")

        let backButton = UIButton(frame: CGRect(x: 22.5*X_, y: 30*Y_, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        backButton.addTarget(self, action: #selector(popBack), for: .touchUpInside)

        let settingButton = UIButton(frame:CGRect(x: 370*X_, y: 29.5*Y_, width: 20, height: 20))
        settingButton.setBackgroundImage(UIImage(named: "bt_setting"), for: UIControl.State.normal)
        
        settingButton.addTarget(self, action: #selector(clickSettingBtn), for: UIControl.Event.touchUpInside)
      //  let tap = UITapGestureRecognizer(target: self, action: #selector(clickSettingBtn))

        
        self.view.addSubview(bg_HeadView)
        self.view.addSubview(backButton)
        self.view.addSubview(settingButton)

        chooseUnitBtn.layer.borderColor = UIColor(hexString: "#FF6C69").cgColor
        chooseUnitBtn.layer.borderWidth = 0.5
        chooseUnitBtn.layer.masksToBounds = true
        chooseUnitBtn.layer.cornerRadius = 13*Y_;
        
        chooseUnitBtn.addTarget(self, action: #selector(chooseLession), for: .touchUpInside)

        let headListeningView = Bundle.main.loadNibNamed("ListeningCellHeadView", owner: nil, options: nil)?.first as? ListeningCellHeadView
            headListeningView?.frame = CGRect(x: 90*X_, y: 15*Y_, width: 240*X_, height: 160*Y_)
        if headListeningView != nil{
            contentsView.addSubview(headListeningView!)
        }
        
        for index in 0...1{
            let test = Bundle.main.loadNibNamed("ListeningCellView", owner: nil, options: nil)?.first as? ListeningCellView
            test?.enContent.text = "try say hello"
            test?.znContentLabel.text = "试着说中文"
            test?.frame = CGRect(x: 40*X_, y: 180*Y_+CGFloat(index)*150, width: 300*X_, height: 130*Y_)
            if test != nil {
                contentsView.addSubview(test!)
            }
        }
        
        
        // Do any additional setup after loading the view.
    }
    
    // 点击了课程选择：
    @objc func chooseLession(){
        //print("sdfsdf")
        chooseLessionsView = Bundle.main.loadNibNamed("ChooseLessionsView", owner: nil, options: nil)?.first as? ChooseLessionsView
        chooseLessionsView?.frame.origin = CGPoint(x: 8*X_, y: 110*Y_)
        chooseLessionsView?.tag = 100
        if chooseLessionsView != nil{
            self.view.addSubview(chooseLessionsView!)
        }
        
    }
    
    @IBAction func noEoughCredit(_ sender: Any) {
        
       let hintView = Bundle.main.loadNibNamed("RechargeHintView", owner: nil, options: nil)?.first as? RechargeHintView
        hintView?.frame.origin = CGPoint(x: 105.5*X_, y: 200*Y_)
        hintView?.tag = 100
        if hintView != nil{
            self.view.addSubview(hintView!)
        }
        
        
    }
    
    @objc func noChoose(sender:UITapGestureRecognizer){
        
      if  let viewWithtag = self.view.viewWithTag(100){
        viewWithtag.removeFromSuperview()
            if chooseLessionsView != nil{
                       chooseLessionsView = nil;
         }
     }
        // control disappear
        if  let viewWithtag = self.view.viewWithTag(101){
              viewWithtag.removeFromSuperview()
                  if bgBlackView != nil{
                             bgBlackView = nil;
               }
           }
        
        if  let viewWithtag = self.view.viewWithTag(102){
              viewWithtag.removeFromSuperview()
                  if settingView != nil{
                             settingView = nil;
               }
           }
       
 }
    
    @objc func clickSettingBtn()->Void{
        if settingView == nil{
            bgBlackView = UIView()
            bgBlackView?.frame = self.view.bounds
            bgBlackView?.backgroundColor =
                UIColor(white: 0.1, alpha: 0.5)
            bgBlackView?.tag = 101
            self.view.addSubview(bgBlackView!)
            
            settingView = Bundle.main.loadNibNamed("SettingView", owner: nil, options: nil)?.first as? SettingView
            settingView?.frame.origin = CGPoint(x: 150*X_, y: 70*Y_)
            settingView?.tag = 102
            self.view.addSubview(settingView!)
            
        }else{
            
            if !settingView!.isHidden {
                bgBlackView!.isHidden = true
                settingView!.isHidden = true
                
                
            }
            else{
                bgBlackView!.isHidden = false
                settingView!.isHidden = false
                
            }
            
        }
 
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

extension BookDetailController: UIGestureRecognizerDelegate {
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

