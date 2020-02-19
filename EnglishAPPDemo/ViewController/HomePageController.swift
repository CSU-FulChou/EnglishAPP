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
    var viewIndex = 0
    
    @IBOutlet weak var ownerCenterBtn: UIButton!
  

    @IBOutlet weak var contentScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleBarBtns.append(myBookshelfBtn)
        titleBarBtns.append(synPracticeBtn)
        titleBarBtns.append(outsideReadingBtn)
        setupView()
        let firstTest = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "home")
        
        let secondTest = SynExercise()
        self.addChild(secondTest)
        
        firstTest.view.frame = CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: contentScrollView.frame.height)
        secondTest.view.frame = CGRect(x: SCREEN_WIDTH, y: 0, width: SCREEN_WIDTH, height: contentScrollView.frame.height)
        self.contentScrollView.addSubview(firstTest.view)
        contentScrollView.addSubview(secondTest.view)
        
        self.contentScrollView.contentSize = CGSize(width: 2*SCREEN_WIDTH, height: 0)
    
        
      
        // Do any additional setup after loading the view.
    }
    
    func setupView(){
        contentScrollView.frame = CGRect(x: 0, y: 118*X_, width: SCREEN_WIDTH, height: SCREEN_HEIGHT-118*X_)
        
        contentScrollView.isPagingEnabled = true
        
        
        
        
        
        // 修改btn的样式：
        for index in 0..<titleBarBtns.count{
            let width = 50
            let hight = 15
            titleBarBtns[index].frame = CGRect(
                x: 55*X_+CGFloat((80+width)*index),
                y: 88*Y_,
                width: CGFloat(width)*X_,
                height: CGFloat(hight)*Y_)
        }
        

    }
    
    @IBAction func toMyshelf(_ sender: Any) {
        
    }
    
    
    
//    @IBAction func clickSynExercise(_ sender: Any) {
//
//        let synExerciseVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SynExercise")
//        self.navigationController?.pushViewController(synExerciseVC, animated: true)
//
//    }
//
//    @IBAction func clickBeginStudy(_ sender: Any) {
//        let bookUnitChooseVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BookUnitChooseView")
//        self.navigationController?.pushViewController(bookUnitChooseVC, animated: true)
//    }
//
    
    @IBAction func showOwnerCenter(_ sender: Any) {
        let ownerCenterVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "OwnerCenterView")
        self.navigationController!.pushViewController(ownerCenterVC, animated: true)

    }
    
    
    
    
    

}
