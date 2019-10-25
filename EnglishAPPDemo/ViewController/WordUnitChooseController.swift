//
//  WordUnitChooseController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/10/21.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class WordUnitChooseController: UIViewController {

    @IBOutlet weak var menuTableView: UITableView!
    var headTitle :String = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 64*Y_), withTitle: headTitle)
        
        let backButton = UIButton(frame: CGRect(x: 22.5*X_, y: 30*X_, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        backButton.addTarget(self, action: #selector(popBack(_:)), for: .touchUpInside)
        
        let settingButton = UIButton(frame: CGRect(x: 370*X_, y: 29.5*Y_, width: 20, height: 20))
        settingButton.setBackgroundImage(UIImage(named: "bt_setting"), for: UIControl.State.normal)
        
        self.view.addSubview(bg_HeadView)
        self.view.addSubview(backButton)
        self.view.addSubview(settingButton)
        menuTableView.dataSource = self
        menuTableView.delegate = self
        menuTableView.separatorStyle = .none
        // Do any additional setup after loading the view.
    }
    

    @objc func popBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
      
    }
    
}
extension WordUnitChooseController:UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "default")
        cell.frame = CGRect(x: 20, y: 20, width: SCREEN_WIDTH-40, height: 45)
        cell.accessoryType = .disclosureIndicator
        cell.backgroundColor = UIColor(hexString: "#f1f1f1")
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 10
        cell.textLabel?.text = "Unit1 hello world!"
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        20
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
      return UIView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 20*Y_))
    }
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch headTitle {
        case "单词听写":
            let wordListeningDetailsVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ListeningDetails") as? ListeningDetails
            wordListeningDetailsVC?.headTitle = "单词听写"
            self.navigationController!.pushViewController(wordListeningDetailsVC!, animated: true)
            
        case "句子听写":
            let sentenceListeningDetailsVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ListeningDetails") as? ListeningDetails
            sentenceListeningDetailsVC?.headTitle = "句子听写"
            self.navigationController!.pushViewController(sentenceListeningDetailsVC!, animated: true)
        case "单词测试":
            let wordTestVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TestAndErrorBookController") as? TestAndErrorBookController
            wordTestVC?.headTitle = "单词测试"
            self.navigationController!.pushViewController(wordTestVC!, animated: true)
        case "句子测试":
            let sentenceTestVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TestAndErrorBookController") as? TestAndErrorBookController
            sentenceTestVC?.headTitle = "句子测试"
            sentenceTestVC?.isNeedListening = true
            self.navigationController!.pushViewController(sentenceTestVC!, animated: true)
        case "错题本":
            let errorBooksVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TestAndErrorBookController") as? TestAndErrorBookController
            errorBooksVC?.headTitle = "错题本"
            errorBooksVC?.isNeedListening = true
            self.navigationController!.pushViewController(errorBooksVC!, animated: true)
            
        default:
            break
        }
    }
    
}

