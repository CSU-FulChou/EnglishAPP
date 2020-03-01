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
    
    var outSideBooksIsuserable = [true,false,false]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for index  in 0..<outSideBooksIsuserable.count {
            let height = 132
            
            let outsideReadView = OutsideBook(frame: CGRect(x: 0, y: 22+index*(height+23), width: Int(SCREEN_WIDTH), height: 132))
            
            outsideReadView.isLock = !outSideBooksIsuserable[index]

            bookContentScrollView.addSubview(outsideReadView)
        }
        
        bookContentScrollView.bounces = false
        bookContentScrollView.contentSize =
        CGSize(width: 0, height: outSideBooksIsuserable.count*132)
        
        

        // Do any additional setup after loading the view.
    }
    


}
