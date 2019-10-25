//
//  testViewController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/10/25.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class testViewController: UIViewController,UIScrollViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let testScrollView = UIScrollView(frame: CGRect(x: 0, y: 100, width: SCREEN_WIDTH, height: 500))
        // 设置背景颜色
        testScrollView.backgroundColor = UIColor.blue
        //scrollView.contentSize
        // 设置代理
        testScrollView.delegate = self
        
        self.view.addSubview(testScrollView)

    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("x:\(scrollView.contentOffset.x) y:\(scrollView.contentOffset.y)")
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
