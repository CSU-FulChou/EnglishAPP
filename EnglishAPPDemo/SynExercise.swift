//
//  SynExercise.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/9.
//  Copyright © 2019 org.csu. All rights reserved.
//

import Foundation
import UIKit
class SynExercise: UIViewController {
    @IBOutlet weak var bg_wordListening: UIImageView!
    @IBOutlet weak var bg_sentenceListening: UIImageView!
    @IBOutlet weak var bg_wordTest: UIImageView!
    @IBOutlet weak var bg_sentenceTest: UIImageView!
    @IBOutlet weak var bg_erorrBooks: UIImageView!
    //图标：
    @IBOutlet weak var Icon_wordListening: UIImageView!
    @IBOutlet weak var Icon_sentenceListening: UIImageView!
    
    @IBOutlet weak var Icon_wordTest: UIImageView!
    
    @IBOutlet weak var Icon_sentenceTest: UIImageView!
    
    @IBOutlet weak var Icon_errorBooks: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        view.backgroundColor = UIColor(hexString: "#fafafa")
        
        let bg_HeadView = UIImageView()
        bg_HeadView.frame = CGRect(x: 0, y: 0, width: 375, height: 100)
        bg_HeadView.image = UIImage(named: "background_head")
        //头部标签。
        let head = UILabel(frame: CGRect(x: 137.5,y: 35, width: 100, height: 30))
        head.text = "小学英语学伴"
        head.textColor = UIColor.white
        head.font = UIFont(name: "Helvetica Neue", size: 15)
        head.textAlignment = NSTextAlignment.center
        bg_HeadView.addSubview(head)

        let myShelf = UILabel(frame: CGRect(x: 25,y: 75, width: 75, height: 30))
        myShelf.text = "我的书架"
        myShelf.textColor = UIColor.gray
        myShelf.font = UIFont(name: "Helvetica Neue", size: 13)
        myShelf.textAlignment = NSTextAlignment.center
        bg_HeadView.addSubview(myShelf)
        
        let synExercise = UILabel(frame: CGRect(x: 150,y: 75, width: 75, height: 30))
        synExercise.text = "同步练习"
        synExercise.textColor = UIColor.white
        synExercise.font = UIFont(name: "Helvetica Neue", size: 15)
        synExercise.textAlignment = NSTextAlignment.center
        bg_HeadView.addSubview(synExercise)
        
        let selectBooks = UILabel(frame: CGRect(x: 290,y: 75, width: 75, height: 30))
        selectBooks.text = "选择课本"
        selectBooks.textColor = UIColor.gray
        selectBooks.font = UIFont(name: "Helvetica Neue", size: 13)
        selectBooks.textAlignment = NSTextAlignment.center
        bg_HeadView.addSubview(selectBooks)
        view.addSubview(bg_HeadView)
        //
        
        bg_wordListening.image = UIImage(named: "bg_white")
        bg_wordListening.layer.masksToBounds = true
        bg_wordListening.layer.cornerRadius =  20;
        
        
        bg_sentenceListening.image = UIImage(named: "bg_white")
        bg_sentenceListening.layer.masksToBounds = true
        bg_sentenceListening.layer.cornerRadius = 20;
        
        bg_wordTest.image = UIImage(named: "bg_white")
        bg_wordTest.layer.masksToBounds = true
        bg_wordTest.layer.cornerRadius = 20
    
        
        bg_sentenceTest.image = UIImage(named: "bg_white")
        bg_sentenceTest.layer.masksToBounds = true
        bg_sentenceTest.layer.cornerRadius = 20
    
        
        bg_erorrBooks.image = UIImage(named: "bg_white")
        bg_erorrBooks.layer.masksToBounds = true
        bg_erorrBooks.layer.cornerRadius = 20
        
        //view.addSubview(bg_wordListening)
        Icon_wordListening.image = UIImage(named: "Icon_wordListening")
        Icon_sentenceListening.image = UIImage(named: "Icon_sentenceListening")
        Icon_wordTest.image = UIImage(named: "Icon_wordTest")
        Icon_sentenceTest.image = UIImage(named: "Icon_sentenceTest")
        Icon_errorBooks.image = UIImage(named: "Icon_errorBooks")
//        bg_ownerCenter.setBackgroundImage(UIImage(named: "Icon_sentenceTest"), for: UIControl.State.normal)
           // = UIImage(named: "bg_ownerCenter")
        // Do any additional setup after loading the view.
    }
    
    
    
}


