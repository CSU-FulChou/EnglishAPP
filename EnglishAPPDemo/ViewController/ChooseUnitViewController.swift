//
//  WordListening.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/12.
//  Copyright © 2019 org.csu. All rights reserved.
//

import Foundation
import UIKit
class ChooseUnitViewController: UIViewController {
    
    @IBOutlet weak var menuTableView: UITableView!
// the view can solve the click event
    override func viewDidLoad() {
        super.viewDidLoad()
        let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 64*Y_), withTitle: "单词听写")
       
        let backButton = UIButton(frame: CGRect(x: 22.5*X_, y: 30*X_, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        backButton.addTarget(self, action: #selector(popBack(_:)), for: .touchUpInside)
        
        let settingButton = UIButton(frame: CGRect(x: 370*X_, y: 29.5*Y_, width: 20, height: 20))
        settingButton.setBackgroundImage(UIImage(named: "bt_setting"), for: UIControl.State.normal)

        self.view.addSubview(bg_HeadView)
        self.view.addSubview(backButton)
        self.view.addSubview(settingButton)
//        menuTableView.dataSource = self
//        menuTableView.delegate = self
//        menuTableView.separatorStyle = .none
       // menuTableView.tableFooterView = UIView()

        
// Do any additional setup after loading the view.
//        let firstImageView = UIButton(frame: CGRect(x: 37.5, y: 115, width: 300, height: 50))
//        firstImageView.backgroundColor = UIColor(hexString: "#f1f1f1")
//        firstImageView.layer.masksToBounds = true
//        firstImageView.layer.cornerRadius = 20;
//
//        let title = UILabel(frame: CGRect(x: 10, y: 16.5, width: 270, height: 25))
//        title.text = "Unit1 hello world !"
//        firstImageView.addSubview(title)
//
//        let nextDetil = UILabel(frame: CGRect(x: 265, y: 15.5, width: 14, height: 25))
//        nextDetil.text = ">"
//        nextDetil.font = UIFont(name: "Helvetica Neue", size: 20)
//        nextDetil.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1) ;     firstImageView.addSubview(nextDetil)
//
//        self.view.addSubview(firstImageView)
        

    }
    
    
@objc func popBack(_ sender: Any) {
       // self.navigationController?.popViewController(animated: true)
        print("111")
    }
    
    
}

extension ChooseUnitViewController : UITableViewDataSource,UITableViewDelegate{
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "default")
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = "Unit1 hello world!"
        cell.backgroundColor = UIColor(hexString: "#f1f1f1")
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 5;
        return cell
    }
    
    
    
}
