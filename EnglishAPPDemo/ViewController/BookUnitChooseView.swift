//
//  UnitChooseView.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/14.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class BookUnitChooseView: UIViewController {
    
    var contentScrollView = UIScrollView()
    var isLoadData = [true,false,true]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    func setupUI(){
        
        contentScrollView.frame = CGRect(x: 0, y: 85*X_, width: SCREEN_WIDTH, height: SCREEN_WIDTH-85*X_)
        
        contentScrollView.contentSize = CGSize(width: 0, height: 105*5)
        
        let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 71*Y_), withTitle: "人教版PEP 三年级上册")
        
        let backButton = UIButton(frame: CGRect(x: 22.5*X_, y: 30*X_, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        backButton.addTarget(self, action: #selector(popBack), for: .touchUpInside)
        
        let settingButton = UIButton(frame: CGRect(x: 370*X_, y: 29.5*Y_, width: 20, height: 20))
        settingButton.setBackgroundImage(UIImage(named: "bt_setting"), for: UIControl.State.normal)
        // 载入view
        self.view.addSubview(bg_HeadView)
        self.view.addSubview(backButton)
        self.view.addSubview(settingButton)
        self.view.addSubview(contentScrollView)
        
        for index in 0 ..< isLoadData.count{
            let firstView = BookUnitImageView(frame: CGRect(x: 21*X_, y: CGFloat(index*105), width: 374*X_, height: 106*X_))
            firstView.isLoad = isLoadData[index]
            firstView.isUserInteractionEnabled = true
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapup))
            firstView.addGestureRecognizer(tapGesture)
            contentScrollView.addSubview(firstView)
        }
        
        
    }
    @objc func popBack(){
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func tapup(){
        let bookDetailVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BookDetailController")
        self.navigationController!.pushViewController(bookDetailVC, animated: true)
    }
    
    
}
