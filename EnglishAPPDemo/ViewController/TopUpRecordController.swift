//
//  TopUpRecordController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/21.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit
// 还没有实现二级列表。
class TopUpRecordController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
    @IBOutlet weak var manu: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let initIdentifier = "Cell"
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: initIdentifier)
        
        cell.textLabel?.text = "本月"
        
        cell.detailTextLabel?.text = "测试\(indexPath.row)"
        cell.imageView!.layer.cornerRadius = 40
        
        cell.imageView!.layer.masksToBounds = true
        return cell
    }
    // param mark-- delegate
    func numberOfSectionsInTableView(tableView:UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        manu.dataSource = self
        manu.delegate = self
        
        
        
        
        
        
        
        
        
        
        
        
        self.view.backgroundColor = UIColor(hexString: "fafafa")
        let bg_HeadView = UIImageView()
        bg_HeadView.frame = CGRect(x: 0, y: 0, width: 375, height: 75)
        bg_HeadView.image = UIImage(named: "background_head")
        //头部标签。
        let head = UILabel(frame: CGRect(x: 47.5,y: 40, width: 280, height: 30))
        // 应该在这里写一个函数，动态的修改这个 text 的显示的value
        head.text = "充值记录"
        head.textColor = UIColor.white
        head.font = UIFont(name: "Helvetica Neue", size: 17)
        head.textAlignment = NSTextAlignment.center
        bg_HeadView.addSubview(head)
        
        let backButton = UIButton(frame: CGRect(x: 22.5, y: 45, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        bg_HeadView.addSubview(backButton)
        
        self.view.addSubview(bg_HeadView)
  
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
