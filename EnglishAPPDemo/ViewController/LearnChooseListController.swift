//
//  LearnChooseListController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/10/28.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class LearnChooseListController: UIViewController {
    var headTitle:String = ""
    var isOpenedTables:[Bool] = [false,false,false]
    let headData = ["问候（20)","xixi（20)"]
    let data = ["你好","hello","well","ce shi "]
//    let gestureTap = UIGestureRecognizer(target: self, action: #selector(clickHeadView(_:)))
    
    @IBOutlet weak var menuTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let labelFrame = CGRect(x: 145*X_, y: 35*Y_, width: 124*X_, height: 23*Y_)
        let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 71*Y_),headLableFrame: labelFrame, withTitle: headTitle)
        let backButton = UIButton(frame: CGRect(x: 22.5*X_, y: 30*X_, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        backButton.addTarget(self, action: #selector(popBack(_:)), for:.touchUpInside)
        self.view.addSubview(bg_HeadView)
        self.view.addSubview(backButton)
        
        menuTableView.delegate = self
        menuTableView.dataSource = self
        menuTableView.separatorStyle = .none
      //  let gestureTap = UIGestureRecognizer(target: self, action: #selector(clickHeadView(_:)))
       //
        
              //menuTableView.headerView(forSection: 0)?.addGestureRecognizer(gestureTap)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
       // print(menuTableView.headerView(forSection: 0)?.tag)
    }

    @objc func popBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @objc func clickHeadView(_ sender: UIButton!){
        print("11111")
       // print(tap.view!.tag)
        
    }
    @objc func test(){
        print("111")
    }

}

extension LearnChooseListController:UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "default")
        cell.textLabel?.text = data[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headView = UIButton()
        headView.tag = section
        headView.isUserInteractionEnabled = true
        
        //为什么采取 绑定手势函数的方式行不通呢？
        //        let gestureTap = UIGestureRecognizer(target: self, action: #selector(test))
        //        headView.addGestureRecognizer(gestureTap)
        
        headView.addTarget(self, action: #selector(clickHeadView(_:)), for: .touchUpInside)
        
        let leftImageView = UIImageView(frame: CGRect(x: 19*X_, y: 23*Y_, width: 18*X_, height: 18*Y_))
        leftImageView.image = UIImage(named: "colorDot\(section+1)")
        let titleLabel = UILabel(frame: CGRect(x: 47*X_, y: 22*Y_, width: 72*X_, height: 20*Y_))
        titleLabel.text = headData[section]
        titleLabel.sizeToFit()
        let rightImageView = UIImageView(frame: CGRect(x: 379*X_, y: 25*Y_, width: 16*X_, height: 16*Y_))
        if isOpenedTables[section]{
            rightImageView.image = UIImage(named: "Icon_open")
            
        }else{
            rightImageView.image = UIImage(named: "Icon_close")
            
        }
        headView.addSubview(leftImageView)
        headView.addSubview(titleLabel)
        headView.addSubview(rightImageView)
        return headView
        }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 64*Y_
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return headData.count
    }
    
}
