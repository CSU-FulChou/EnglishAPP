//
//  BookDetailController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/26.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class BookDetailController: UIViewController {

    var chooseLessionsView : ChooseLessionsView?
    @IBOutlet weak var chooseUnitBtn: UIButton!
    @IBOutlet weak var contentsView: UIView!
    @IBOutlet weak var lastCourseLabel: UILabel!
    @IBOutlet weak var nextCourseLabel: UILabel!
    
    @IBOutlet weak var bookView: UIImageView!
    var bgView:UIView!
    var popupView:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 父视图，屏蔽子视图：
        // 给全局绑定一个点击函数 开始的时候笨办法实行的弹出框
        let viewGestureRecongnizer = UITapGestureRecognizer(target: self, action: #selector(noChoose(sender:)))

        viewGestureRecongnizer.delegate = self
       // viewGestureRecongnizer.numberOfTapsRequired = 1
        
        self.view.isUserInteractionEnabled = true
        self.view.addGestureRecognizer(viewGestureRecongnizer)
        
        // 加载视图：
        setupUI()
        
        chooseUnitBtn.addTarget(self, action: #selector(chooseLession), for: .touchUpInside)
        
        let headListeningView = Bundle.main.loadNibNamed("ListeningCellHeadView", owner: nil, options: nil)?.first as? ListeningCellHeadView
        
        headListeningView?.frame = CGRect(x: 90*X_, y: 15*Y_, width: 240*X_, height: 160*Y_)
        if headListeningView != nil{
            contentsView.addSubview(headListeningView!)
        }
        
        for index in 0...1{
            let listeningCellView = ListeningCellView(frame: CGRect(x: 40*X_, y: 180*Y_+CGFloat(index)*150, width: 300*X_, height: 130*Y_))
            
            
            listeningCellView.enContent.text = "try say hello"
            listeningCellView.znContentLabel.text = "试着说哈喽"
            listeningCellView.delegate = self
            listeningCellView.tag = index
            contentsView.addSubview(listeningCellView)
            
        }
        
        
        
    }
    
    
    
    func setupUI(){
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
    }
    
    
    // 点击了课程选择：
    @objc func chooseLession(){
   
        chooseLessionsView = Bundle.main.loadNibNamed("ChooseLessionsView", owner: nil, options: nil)?.first as? ChooseLessionsView
        chooseLessionsView?.frame.origin = CGPoint(x: 8*X_, y: 110*Y_)
        //chooseLessionsView?.tag = 100
        if chooseLessionsView != nil{
            self.view.addSubview(chooseLessionsView!)
        }
        
    }
    
    
    // 没有足够的学分触发
    @IBAction func noEoughCredit(_ sender: Any) {
        
        // 添加带透明度的背景视图，从而实现下方视图变暗
        guard let window = UIApplication.shared.keyWindow else { return }
        bgView = UIView()
        bgView.frame = window.bounds
        bgView.backgroundColor = UIColor(white: 0.1, alpha: 0.6)
        window.addSubview(bgView)
        
        
        
        
        popupView = Bundle.main.loadNibNamed("RechargeHintView", owner: nil, options: nil)?.first as! RechargeHintView
        
        popupView.frame.origin = CGPoint(x: 105.5*X_, y: 200*Y_)
        //hintView.tag = 100
        //if hintView != nil{
          window.addSubview(popupView)
       // }
        
        // 给背景bgView添加一个移除手势
               let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hidePopView))
               bgView.addGestureRecognizer(tapGesture)
        
    }
    
    // 隐藏弹出框和阴影背景
   @objc func hidePopView(){
        // 收回动画
               UIView.animate(withDuration: 0.3) {
                   // 尾随闭包播放弹出动画
//                   self.popupView.frame = CGRect(x: 30, y: kScreenHeight, width: kScreenWidth-60, height: 60)
                self.popupView.frame.origin.y = SCREEN_HEIGHT+20
                   // 提交一个延时任务线程
                   DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                       self.popupView.removeFromSuperview()
                       self.bgView.removeFromSuperview()
                   }
               }
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        UITouch()
//        touches.contains(<#T##member: UITouch##UITouch#>)
//        print(clickPoint)
    }
    
    @objc func noChoose(sender:UITapGestureRecognizer){
        
//        if  let viewWithtag = self.view.viewWithTag(100){
//            viewWithtag.removeFromSuperview()
//            if chooseLessionsView != nil{
//                chooseLessionsView = nil;
//            }
//        }
//        // control disappear
//        if  let viewWithtag = self.view.viewWithTag(101){
//            viewWithtag.removeFromSuperview()
//            if bgBlackView != nil{
//                bgBlackView = nil;
//            }
//        }
//
//        if  let viewWithtag = self.view.viewWithTag(102){
//            viewWithtag.removeFromSuperview()
//            if settingView != nil{
//                settingView = nil;
//            }
//        }
        
        
        /// 如果 chooseLessionsView 存在
        if  chooseLessionsView != nil{
            chooseLessionsView?.removeFromSuperview()
            chooseLessionsView = nil
        }
        
    }
    
    
    @objc func clickSettingBtn()->Void{
        
        // 添加带透明度的背景视图，从而实现下方视图变暗
              guard let window = UIApplication.shared.keyWindow else { return }
              bgView = UIView()
              bgView.frame = window.bounds
              bgView.backgroundColor = UIColor(white: 0.1, alpha: 0.6)
              window.addSubview(bgView)
              
              popupView = Bundle.main.loadNibNamed("SettingView", owner: nil, options: nil)?.first as! SettingView
       
                window.addSubview(popupView)
            self.popupView.frame.origin = CGPoint(x: 150*X_, y: 70*Y_)
//        UIView.animate(withDuration: 0.3){
//
//        }
              // 给背景bgView添加一个移除手势
                     let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hidePopView))
                     bgView.addGestureRecognizer(tapGesture)
              
              
        
//        if settingView == nil{
//
//            bgBlackView = UIView()
//            bgBlackView?.frame = self.view.bounds
//            bgBlackView?.backgroundColor =
//                UIColor(white: 0.1, alpha: 0.5)
//            bgBlackView?.tag = 101
//            self.view.addSubview(bgBlackView!)
//
//            settingView = Bundle.main.loadNibNamed("SettingView", owner: nil, options: nil)?.first as? SettingView
//            settingView?.frame.origin = CGPoint(x: 150*X_, y: 70*Y_)
//            settingView?.tag = 102
//            self.view.addSubview(settingView!)
//
//        }else{
//
//            if !settingView!.isHidden {
//                bgBlackView!.isHidden = true
//                settingView!.isHidden = true
//
//
//            }
//            else{
//                bgBlackView!.isHidden = false
//                settingView!.isHidden = false
//
//            }
//
//        }
        
    }
    
    
    @objc func popBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    
    @IBAction func clickNextPageBtn(_ sender: Any) {
    }
    
    
}



//MARK: 拓展一些协议


extension BookDetailController: UIGestureRecognizerDelegate,ListeningCellViewDelegate {

    
    // 控制点击函数，在弹出的view上点击不起作用；
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        
        // 如果 chooseLessionsView 不为空，并且点击的view 是在 它本身或者子view上就返回false不响应点击函数
        if let chooseLessionsView = chooseLessionsView{
            if (touch.view?.isDescendant(of: chooseLessionsView))!{
                     return false
                 }
        }
     
        return true
    }
    
    
    /// # 遵循Listening Cell viewDelegate 协议
    func tryListening(index: Int) {
         print("点击了试听\(index)按钮")
    }
    
    func followReadBten() {
        
    }
}

