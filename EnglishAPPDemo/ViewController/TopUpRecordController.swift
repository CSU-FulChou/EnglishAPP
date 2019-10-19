//
//  TopUpRecordController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/21.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit
// 还没有实现二级列表。
class TopUpRecordController: UIViewController{
    @IBOutlet weak var manu: UITableView!
        override func viewDidLoad() {
        super.viewDidLoad()
        
        manu.dataSource = self
        manu.delegate = self
        manu.separatorStyle = .none
        self.view.backgroundColor = UIColor(hexString: "fafafa")
            
        let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 64*Y_), withTitle: "充值记录")
            
        let backButton = UIButton(frame: CGRect(x: 22.5*X_, y: 30*Y_, width: 10, height: 20))
            
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
            backButton.addTarget(self, action: #selector(popBack(_:)), for:.touchUpInside)
            
        self.view.addSubview(bg_HeadView)
        self.view.addSubview(backButton)
  

    }

    @objc func popBack(_ sender: Any) {
           self.navigationController?.popViewController(animated: true)
       }

}










// MARK: -给类实现协议方法：
extension TopUpRecordController : UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let initIdentifier = "Cell"
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.value1, reuseIdentifier: initIdentifier)
        
        cell.textLabel?.text = "本月"
        
        cell.detailTextLabel?.text = "充值50元，送1000学分\(indexPath.row)"
        
        return cell
    }
    
    // param mark-- delegate
    func numberOfSections(in tableView: UITableView) -> Int {
        3;
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let head = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        head.backgroundColor = UIColor(hexString: "#F0F0F0")
        let headTitleLabel = UILabel(frame: CGRect(x: 20, y: 10, width: 59, height: 20))
        headTitleLabel.text = "本月\(section)"
        head.addSubview(headTitleLabel)
        return head
    }
    private func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 40
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//    }
//
    

}
