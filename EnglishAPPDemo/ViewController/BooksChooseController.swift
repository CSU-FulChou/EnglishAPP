//
//  BooksChooseController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/20.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class BooksChooseController: UIViewController {

    @IBOutlet weak var chooseBooksBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 64*Y_), withTitle: "我的书架")
        let backButton = UIButton(frame: CGRect(x: 22.5*X_, y: 30*X_, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
  

        self.view.addSubview(bg_HeadView)
        self.view.addSubview(backButton)
       
//        let chooseBooksBtn = UIButton(frame: <#T##CGRect#>)
        chooseBooksBtn.backgroundColor = UIColor(hexString: "#EFEFEF")
        chooseBooksBtn.layer.masksToBounds = true
        chooseBooksBtn.layer.cornerRadius = 12
        chooseBooksBtn.setTitle("当前使用课本：人教精通版小学英语三年级下册", for: UIControl.State.normal)
    let chooseArrow = UIButton(frame: CGRect(x: 270, y: 10, width: 20, height: 10))
        chooseArrow.setBackgroundImage(UIImage(named: "bt_arrowDownGray"), for: UIControl.State.normal)
        
        chooseBooksBtn.addSubview(chooseArrow)
        
        
        let firstBookCell = BookCell(frame: CGRect(x: 20, y: 200 , width: 130, height: 200))
        firstBookCell.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        firstBookCell.bookCover.image = UIImage(named: "bg_books")
        firstBookCell.Description.text = "人教版PEP 三年级上册 "
        firstBookCell.addToShelf.setTitle("加入书架", for: UIControl.State.normal)
        
        firstBookCell.addSubview(firstBookCell.bookCover)
        firstBookCell.addSubview(firstBookCell.Description)
        firstBookCell.addSubview(firstBookCell.addToShelf)
        self.view.addSubview(firstBookCell)
        
        
        let  secondBookCell = BookCell(frame: CGRect(x: 200, y: 200 , width: 130, height: 200))
        secondBookCell.bookCover.image = UIImage(named: "bg_books")
        secondBookCell.Description.text = "人教版PEP 三年级上册 "
        
        secondBookCell.addToShelf.setBackgroundImage(UIImage(named: "Icon_added"), for: UIControl.State.normal)
        
     
        secondBookCell.addToShelf.frame = CGRect(x: 105, y: 174, width: 20, height:20)
    
        secondBookCell.addToShelf.isEnabled = true;

        secondBookCell.addSubview(secondBookCell.bookCover)
        secondBookCell.addSubview(secondBookCell.Description)
        secondBookCell.addSubview(secondBookCell.addToShelf)
        self.view.addSubview(secondBookCell)
        
        

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
