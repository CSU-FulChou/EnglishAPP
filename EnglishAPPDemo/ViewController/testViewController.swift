//
//  testViewController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/10/25.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class testViewController: UIViewController,UIScrollViewDelegate{

    @IBOutlet var scrollView: UIScrollView!{
        didSet{
            scrollView.addSubview(imageView)
            scrollView.backgroundColor = UIColor.white
        }
    }
    
    var imageView = UIImageView()
    var testLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "Icon_recommendation")
        imageView.frame = CGRect(x: 0, y: 50, width: SCREEN_WIDTH, height: 1600)
        scrollView.contentSize = imageView.frame.size
      

    
        
//        let testScrollView = UIScrollView(frame: CGRect(x: 0, y: 100, width: SCREEN_WIDTH, height: 500))
//        // 设置背景颜色
//        testScrollView.backgroundColor = UIColor.white
//        //scrollView.contentSize
//        // 设置代理
//        testScrollView.delegate = self
//
//        self.view.addSubview(testScrollView)

    }
    
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        print("x:\(scrollView.contentOffset.x) y:\(scrollView.contentOffset.y)")
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
