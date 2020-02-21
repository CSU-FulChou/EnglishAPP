//
//  HomePageController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/10/5.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class HomePageController: UIViewController {
    
    @IBOutlet var myBookshelfBtn: UIButton!
    @IBOutlet var synPracticeBtn: UIButton!
    @IBOutlet var outsideReadingBtn: UIButton!
    var titleBarBtns :[UIButton] = [UIButton]()
    var currentIndex = 0
    
    @IBOutlet weak var ownerCenterBtn: UIButton!
    
    
    @IBOutlet weak var contentScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleBarBtns.append(myBookshelfBtn)
        titleBarBtns.append(synPracticeBtn)
        titleBarBtns.append(outsideReadingBtn)
        
        contentScrollView.delegate = self
        changeTapbarBtn(currentIndex: currentIndex)
        setupView()
        let firstTest = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "home")
        
        let secondTest = SynExercise()
        
        let outsideReading = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "OutsideReadingVC")
        
        self.addChild(firstTest)
        self.addChild(secondTest)
        self.addChild(outsideReading)
        
        
        
        firstTest.view.frame = CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: contentScrollView.frame.height)
        
        secondTest.view.frame = CGRect(x: SCREEN_WIDTH, y: 0, width: SCREEN_WIDTH, height: contentScrollView.frame.height)
        
        outsideReading.view.frame = CGRect(x: SCREEN_WIDTH*2, y: 0, width:SCREEN_WIDTH, height: contentScrollView.frame.height)
        
        
        self.contentScrollView.addSubview(firstTest.view)
        contentScrollView.addSubview(secondTest.view)
        contentScrollView.addSubview(outsideReading.view)
        
        
        self.contentScrollView.contentSize = CGSize(width: 3*SCREEN_WIDTH, height: 0)
        
        
        
        // Do any additional setup after loading the view.
    }
    
    func changeTapbarBtn(currentIndex:Int){
        // 修改btn的样式：
        for index in 0..<titleBarBtns.count{
            //            let width = 50
            //                           let hight = 15
            //                           titleBarBtns[index].frame = CGRect(
            //                               x: 55*X_+CGFloat((80+width)*index),
            //                               y: 88*Y_,
            //                               width: CGFloat(width)*X_,
            //                               height: CGFloat(hight)*Y_)
            if index == currentIndex{
                
                titleBarBtns[index].titleLabel?.font = UIFont.systemFont(ofSize: 15)
                
            }else{
                titleBarBtns[index].titleLabel?.font = UIFont.systemFont(ofSize: 11)
            }
            
            
        }
        
    }
    
    //
    //    func nextresponsder(viewself:UIView) -> UIViewController {
    //        var vc:UIResponder = viewself
    //        while vc.isKind(of: UIViewController.self) != true {
    //            vc = vc.next!
    //        }
    //        return vc as! UIViewController
    //    }
    
    // 设置ui
    func setupView(){
        contentScrollView.frame = CGRect(x: 0, y: 118*X_, width: SCREEN_WIDTH, height: SCREEN_HEIGHT-118*X_)
        // 分页
        contentScrollView.isPagingEnabled = true
        // 关闭横向，竖向的滚动条：
        
        contentScrollView.showsVerticalScrollIndicator = false
        contentScrollView.showsHorizontalScrollIndicator = false
        //禁止边缘弹动
        contentScrollView.alwaysBounceVertical = false
        contentScrollView.alwaysBounceHorizontal = false
        //bounces：描述的当scrollview的显示超过内容区域的边缘以及返回时，是否有弹性，默认值为YES。值为YES的时候，意味着到达contentSize所描绘的的边界的时候，拖动会产生弹性。值为No的时候，拖动到达边界时，会立即停止。所以，如果在上面的例子当中，将bounces设置为NO时，窗口中是不会显示contentSize范围外的内容的。
        contentScrollView.bounces = false
        
        
        
        
        
        
    }
    
    func clickTopbar(tag:Int){
        
        contentScrollView.setContentOffset(CGPoint(x: SCREEN_WIDTH*CGFloat(tag), y: 0), animated: true)
        
        //            .contentOffset.x =
        
        //        switch tag {
        //        case 0:
        //            contentScrollView.contentOffset.x = 0
        //        case 1:
        //            contentScrollView.contentOffset.x = 0
        //            case 2:
        //                contentScrollView.contentOffset.x = 0
        //        }
    }
    
    @IBAction func toMyshelf(_ sender: Any) {
        let sender = sender as! UIButton
        clickTopbar(tag:sender.tag)
    }
    
    @IBAction func toSynPractise(_ sender: Any) {
        let sender = sender as! UIButton
        clickTopbar(tag:sender.tag)
    }
    
    @IBAction func toOutsideBook(_ sender: Any) {
        let sender = sender as! UIButton
        clickTopbar(tag:sender.tag)
    }
    
    
    @IBAction func showOwnerCenter(_ sender: Any) {
        let ownerCenterVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "OwnerCenterView")
        self.navigationController!.pushViewController(ownerCenterVC, animated: true)
        
    }
    
    
    
    
    
    
}
extension HomePageController :UIScrollViewDelegate{
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        print("x:\(scrollView.contentOffset.x) y:\(scrollView.contentOffset.y)")
        if scrollView.contentOffset.x >= SCREEN_WIDTH {
            changeTapbarBtn(currentIndex: 1)
            
        }
        if scrollView.contentOffset.x  >= SCREEN_WIDTH*2 {
            changeTapbarBtn(currentIndex: 2)
            
        }
        
        if scrollView.contentOffset.x  < SCREEN_WIDTH {
            changeTapbarBtn(currentIndex: 0)
            
        }
        
        
    }
}
