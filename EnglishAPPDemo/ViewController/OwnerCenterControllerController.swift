//
//  OwnerCenterControllerController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/10/5.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class OwnerCenterControllerController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    

    @IBOutlet weak var manuView: UITableView!
    var titles = ["剩余学分","充值记录","学分使用说明","设置","软件版本","分享本软件","意见及问题反馈","更多软件推荐","退出"]
    var images = ["银行卡","记录","说明","设置","下载","分享","反馈","更多","退出"]
    override func viewDidLoad() {
        super.viewDidLoad()
        manuView.delegate = self
        manuView.dataSource = self
        manuView.separatorStyle = .none
        manuView.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = manuView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as! OwnerMenuTableViewCell
        cell.titleLabel.text = titles[indexPath.row]
        cell.IconImageView?.image = UIImage(named: images[indexPath.row])
        cell.hintLabel.isHidden = true
        cell.hintLabel.text = "hhh"
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
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
