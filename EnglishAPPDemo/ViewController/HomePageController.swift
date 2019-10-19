//
//  HomePageController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/10/5.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class HomePageController: UIViewController {
    
    @IBOutlet weak var ownerCenterBtn: UIButton!
    var menuViewController:OwnerCenterControllerController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
      
        // Do any additional setup after loading the view.
    }
    func setupView(){
        ownerCenterBtn.frame = CGRect(x: 374*X_, y: 39.833*Y_, width: 20, height: 20)
    }
    
    @IBAction func clickSynExercise(_ sender: Any) {
        
        let synExerciseVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SynExercise")
        self.navigationController?.pushViewController(synExerciseVC, animated: true)
        
    }
    
    @IBAction func clickBeginStudy(_ sender: Any) {
        let bookUnitChooseVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BookUnitChooseView")
        self.navigationController?.pushViewController(bookUnitChooseVC, animated: true)
    }
    
    @IBAction func showOwnerCenter(_ sender: Any) {
        let loginVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginController")
        self.navigationController!.pushViewController(loginVC, animated: true)
//
////        addMenuViewController()
////         animateMainView(shouldExpand: hasMovedhanHalfway)
//       if (menuViewController == nil) {
//                  menuViewController = UIStoryboard(name: "Main", bundle: nil)
//                      .instantiateViewController(withIdentifier: "OwnerCenterView")
//                      as? OwnerCenterControllerController
//
//                  // 插入当前视图并置顶
//                  view.insertSubview(menuViewController!.view, at: 0)
//
//                  // 建立父子关系
//                  addChild(menuViewController!)
//                  menuViewController!.didMove(toParent: self)
//              }
//
//        // 如果是用来展开
//          if (true) {
//
//              animateMainViewXPosition(targetPosition:70-self.view.frame.width)
//          }
//              // 如果是用于隐藏
////          else {
////              // 动画
////              animateMainViewXPosition(targetPosition: 0) { finished in
////                  // 动画结束之后s更新状态
////                  self.currentState = .Collapsed
////                  // 移除左侧视图
////                  self.menuViewController?.view.removeFromSuperview()
////                  // 释放内存
////                  self.menuViewController = nil;
////              }
////          }
//
//    }
//    //主页移动动画（在x轴移动）
//    func animateMainViewXPosition(targetPosition: CGFloat,
//                                  completion: ((Bool) -> Void)! = nil) {
//        //usingSpringWithDamping：1.0表示没有弹簧震动动画
//        UIView.animate(withDuration: 0.05, delay: 0, usingSpringWithDamping: 1.0,
//                       initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
//                        self.view.frame.origin.x = targetPosition
//        }, completion: completion)
//

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
