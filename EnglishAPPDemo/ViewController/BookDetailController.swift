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
    @IBOutlet weak var chooseUnitBtn: UIButton!
    @IBOutlet weak var contentsView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(hexString: "fafafa")
        let headView = UIView()
           headView.frame = CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 70*Y_)
        
        let bg_HeadView = UIImageView()
        bg_HeadView.frame = CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 70*Y_)
        bg_HeadView.image = UIImage(named: "background_head")
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(clickSettingBtn))
        bg_HeadView.isUserInteractionEnabled = true
        bg_HeadView.addGestureRecognizer(tap)
        
        //
        headView.addSubview(bg_HeadView)
        //头部标签。
        let head = UILabel(frame: CGRect(x: 70*X_,y: 40, width: 280, height: 30))
        // 应该在这里写一个函数，动态的修改这个 text 的显示的value
        head.text = "人教版PEP 三年级上册"
        head.textColor = UIColor.white
        head.font = UIFont(name: "Helvetica Neue", size: 17)
        head.textAlignment = NSTextAlignment.center
        headView.addSubview(head)
        
        let backButton = UIButton(frame: CGRect(x: 22.5, y: 45, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        headView.addSubview(backButton)
        
        let settingButton = UIButton(frame: CGRect(x: 380.5*X_, y: 44.5, width: 20, height: 21))
        settingButton.setBackgroundImage(UIImage(named: "bt_setting"), for: UIControl.State.normal)
        
        settingButton.addTarget(self, action: #selector(clickSettingBtn), for: UIControl.Event.touchUpInside)
        
        headView.addSubview(settingButton)
        
        self.view.addSubview(headView)
        
        //--------------------------------------------
        chooseUnitBtn.layer.borderColor = UIColor(hexString: "#FF6C69").cgColor
        chooseUnitBtn.layer.borderWidth = 0.5
        chooseUnitBtn.layer.masksToBounds = true
        chooseUnitBtn.layer.cornerRadius = 13*Y_;
        
        for index in 0...2{
            let test = Bundle.main.loadNibNamed("ListeningCellView", owner: nil, options: nil)?.first as? ListeningCellView
            test?.enContent.text = "try say hello"
            test?.frame = CGRect(x: 40*X_, y: 180*Y_+CGFloat(index)*150, width: 300*X_, height: 130*Y_)
            if test != nil {
                contentsView.addSubview(test!)
            }
        }
        
        let headListeningView = Bundle.main.loadNibNamed("ListeningCellHeadView", owner: nil, options: nil)?.first as? ListeningCellHeadView
            headListeningView?.frame = CGRect(x: 90*X_, y: 15*Y_, width: 240*X_, height: 160*Y_)
        if headListeningView != nil{
            contentsView.addSubview(headListeningView!)
        }
        
        
        // Do any additional setup after loading the view.
    }
    @objc func clickSettingBtn()->Void{
        if settingView == nil{
            bgBlackView = UIView()
            bgBlackView?.frame = self.view.bounds
            bgBlackView?.backgroundColor =
                UIColor(white: 0.1, alpha: 0.5)
            self.view.addSubview(bgBlackView!)
            settingView = Bundle.main.loadNibNamed("SettingView", owner: nil, options: nil)?.first as? SettingView
            settingView?.frame.origin = CGPoint(x: 150*X_, y: 70*Y_)
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

//    @IBAction func test(_ sender: Any) {
//
//        }
      

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
