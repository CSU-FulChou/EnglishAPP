//
//  Myshelf1ViewController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2020/2/19.
//  Copyright © 2020 org.csu. All rights reserved.
//

import UIKit

class MyshelfFirstViewController: UIViewController {

    @IBOutlet weak var bookView1: BookView!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let bookView =  Bundle.main.loadNibNamed("BookView", owner: nil, options:nil)?.first as? BookView
        
        if let bookView = bookView {
            bookView.frame = bookView1.frame
            self.view.addSubview(bookView)
            bookView1.removeFromSuperview()
        }

        // Do any additional setup after loading the view.
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
