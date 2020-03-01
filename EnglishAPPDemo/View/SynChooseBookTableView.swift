//
//  SynChooseBookTableView.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2020/2/26.
//  Copyright © 2020 org.csu. All rights reserved.
//

import UIKit

class SynChooseBookTableView: UIView {
    
    var contentView:UIView!
    
    @IBOutlet weak var menu: UITableView!
    
    var currentClickIndex = 0
    
    var isUserable:[Bool] = [true,false,true,false]
    var headViewText = "人教精通版小学英语三年级下"
    var cellText :[String] = ["人教精通版小学英语三年级上册","人教精通版小学英语三年级上册","人教精通版小学英语四年级上册","人教精通版小学英语四年级下册" ]
    
    
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        contentView = loadViewFromNib()
        setupUI()
        addSubview(contentView)
        
    }
    
    convenience init(){
        self.init(frame:CGRect.zero)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        contentView = loadViewFromNib()
        setupUI()
        addSubview(contentView)
        
    }
    func setupUI(){
        contentView.layer.masksToBounds = true
        contentView.layer.cornerRadius = 15
        
        menu.delegate = self
        menu.dataSource = self
        menu.separatorStyle = .none
        
        let cellNib = UINib(nibName: "SynChooseBookTableCell", bundle: nil)
        menu.register(cellNib, forCellReuseIdentifier: "SynChooseBookTableCell")
        
        
        
        
    }
    override class func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    private func loadViewFromNib() -> UIView {
        let className = type(of: self)
        let bundle = Bundle(for: className)
        let name = NSStringFromClass(className).components(separatedBy: ".").last
        let nib = UINib(nibName: name!, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        return view
    }
    
    
}

extension SynChooseBookTableView:UITableViewDataSource,UITableViewDelegate{
    
    
    // 返回cell 的个数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        isUserable.count
    }
    
    
    // 定义cell 的样式
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = menu.dequeueReusableCell(withIdentifier: "SynChooseBookTableCell") as! SynChooseBookTableCell
        cell.selectionStyle = .none
        cell.titleLabel.text = cellText[indexPath.row]
        
        
        if indexPath.row == currentClickIndex{
            cell.isClick = true
        }
        else{
            cell.isClick = false
        }
        
        cell.isUseable = isUserable[indexPath.row]
        
        
        
        return cell
    }
    // 点击cell 的响应处理
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if isUserable[indexPath.row] {
            currentClickIndex = indexPath.row
            
            let cell = tableView.cellForRow(at: indexPath) as! SynChooseBookTableCell
            headViewText = cell.titleLabel.text!
            tableView.reloadData()
        }
        
    }
    
    // 取消点击的时候 处理
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {

    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headView = UIView(frame: CGRect(x: 0, y: 0, width: 314, height: 34))
        let textLable = UILabel(frame: CGRect(x: 43, y: 8, width: 220, height: 14))
        textLable.textColor = UIColor(hexString: "#999999")
        textLable.font = UIFont.systemFont(ofSize: 10)
        textLable.text = " 当前使用课本：\(headViewText)"
        headView.addSubview(textLable)
        return headView
    }
    
    
    
}
