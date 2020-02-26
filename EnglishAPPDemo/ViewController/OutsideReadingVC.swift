//
//  outsideReadingVC.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2020/2/21.
//  Copyright © 2020 org.csu. All rights reserved.
//

import UIKit

class OutsideReadingVC: UIViewController {

    @IBOutlet weak var bookContentScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let outsideReadView = OutsideBook(frame: CGRect(x: 0, y: 22, width: SCREEN_WIDTH, height: 132))
        outsideReadView.isLock = true
//        outsideReadView.test()
    bookContentScrollView.addSubview(outsideReadView)
        
        bookContentScrollView.contentSize =
        CGSize(width: 0, height: SCREEN_HEIGHT)
        

        // Do any additional setup after loading the view.
    }
    


}
