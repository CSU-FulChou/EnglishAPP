//
//  Myshelf1ViewController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2020/2/19.
//  Copyright © 2020 org.csu. All rights reserved.
//

import UIKit

class MyshelfFirstViewController: UIViewController {
    
    
    
    @IBOutlet weak var listenProgress: UIProgressView!
    
    @IBOutlet weak var readProgress: UIProgressView!
    
    @IBOutlet weak var accuracyProgress: UIProgressView!
    
    @IBOutlet weak var listenProgressLabel: UILabel!
    
    @IBOutlet weak var readProgressLabel: UILabel!
    
    @IBOutlet weak var accuracyProgressLabel: UILabel!
    @IBOutlet weak var bookView: BookView!
    
    var progressLabels = [UILabel]()
    var progressViews = [UIProgressView]()
    var progressData = [0.2,0.5,0.8]
    
    @IBOutlet weak var bookScrollView: UIScrollView!
    
    var singleTapGesture = UITapGestureRecognizer()
    //    var bookView = UIView()
    
    
    
    // MARK:- functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bookScrollView.delegate = self
        singleTapGesture = UITapGestureRecognizer(target: self, action: #selector(toUnitChoose))
        
        setupUI()
        
        bookView.isUserInteractionEnabled = true
        bookView.addGestureRecognizer(singleTapGesture)
        
    }
    
    func setupUI(){
        // 添加数组成员，便于统一操作
        progressViews.append(listenProgress)
        progressViews.append(readProgress)
        progressViews.append(accuracyProgress)
        progressLabels.append(listenProgressLabel)
        progressLabels.append(readProgressLabel)
        progressLabels.append(accuracyProgressLabel)
        
        //  设置右边成绩的progressview 的样式和数值
        for index in 0..<progressLabels.count{
            progressViews[index].transform =  CGAffineTransform(scaleX: 1.0, y: 3.0)
            progressViews[index].progressTintColor = UIColor.red
            progressViews[index].progress = Float(progressData[index])
            progressLabels[index].text = "\(progressData[index]*100.0)%"
            
        }
        
        
        //重新修改书籍图片 为alipay
        //bookView.bookImageView.image = UIImage(named:"Icon_alipay")
        
        
        
        
        for index in 0..<6{
            
            let bookView1 = BookView(frame: CGRect(x: 119*index+15*index, y: 0, width: 119, height: 176))
            bookScrollView.addSubview(bookView1)
        }
        
        bookScrollView.contentSize = CGSize(width: 6*122, height: 0)
        // 设置scrollView的属性：
        bookScrollView.showsVerticalScrollIndicator = false
        bookScrollView.showsHorizontalScrollIndicator = false
        bookScrollView.alwaysBounceVertical = false
        bookScrollView.alwaysBounceHorizontal = false
        bookScrollView.bounces = false
    }
    
    @objc func toUnitChoose(){
        print("hhh")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let unitChooseVC = storyboard.instantiateViewController(withIdentifier: "BookUnitChooseView")
        self.navigationController?.pushViewController(unitChooseVC, animated:true )
        
    }
    
    
}

extension MyshelfFirstViewController:UIScrollViewDelegate{
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        print("x:\(scrollView.contentOffset.x) y:\(scrollView.contentOffset.y)")
        
        
    }
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("2222")
    }
    
}
