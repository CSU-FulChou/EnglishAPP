//
//  ChooseLessionsView.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/10/6.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class ChooseLessionsView: UIView {

    @IBOutlet weak var leftMenu: UITableView!
    @IBOutlet weak var middleMenu: UITableView!
    @IBOutlet weak var rightMenu: UITableView!
    //  var leftdata = [""]
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor.white
        leftMenu.delegate = self
        leftMenu.dataSource = self
        leftMenu.tableFooterView = UIView()
        
        middleMenu.delegate = self
        middleMenu.dataSource = self
        middleMenu.tableFooterView = UIView()
        middleMenu.separatorStyle = .none
    
        rightMenu.delegate = self
        rightMenu.dataSource = self
        rightMenu.tableFooterView = UIView()
        rightMenu.separatorStyle = .none
       // leftMenu.separatorStyle = .none
        
    }


}

extension ChooseLessionsView :UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if leftMenu == tableView{
            let cell = UITableViewCell(style: .default, reuseIdentifier: "leftCell")
            cell.textLabel?.text = "unit 1"
            cell.accessoryType = .disclosureIndicator
            return cell
        }else if middleMenu == tableView{
            let cell = UITableViewCell(style: .default, reuseIdentifier: "middleCell")
            cell.textLabel?.text = "lesson 1"
            return cell
        }else  {
            let cell = UITableViewCell(style: .default, reuseIdentifier: "rightCell")
            cell.textLabel?.text = "第22页"
            // cell.accessibilityIdentifier = "celllllll"
           // cell.accessoryType = .disclosureIndicator
            return cell
        }
       
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if leftMenu == tableView{
                 return 10;
        }else{
            return 10;
        }
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }

//    //表格分区数
//       func numberOfSections(in tableView: UITableView) -> Int {
//           if leftTableView == tableView {
//               return 1
//           } else {
//               return leftTableData.count
//           }
//       }
//
//       //分区下单元格数量
//       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//           if leftTableView == tableView {
//               return leftTableData.count
//           } else {
//               return rightTableData[section].count
//           }
//       }
//
//       //返回自定义单元格
//       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
//           -> UITableViewCell {
//           if leftTableView == tableView {
//               let cell = tableView.dequeueReusableCell(withIdentifier: "leftTableViewCell",
//                                                        for: indexPath) as! LeftTableViewCell
//               cell.titleLabel.text = leftTableData[indexPath.row]
//               return cell
//           } else {
//               let cell = tableView.dequeueReusableCell(withIdentifier: "rightTableViewCell",
//                                                        for: indexPath) as! RightTableViewCell
//               let model = rightTableData[indexPath.section][indexPath.row]
//               cell.setData(model)
//               return cell
//           }
//       }
//
//       //分区头高度（只有右侧表格有分区头）
//       func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//           if leftTableView == tableView {
//               return 0
//           }
//           return 30
//       }
//
//       //返回自定义分区头（只有右侧表格有分区头）
//       func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//           if leftTableView == tableView {
//               return nil
//           }
//           let headerView = RightTableViewHeader(frame: CGRect(x: 0, y: 0,
//                                               width: UIScreen.main.bounds.width, height: 30))
//           headerView.titleLabel.text = leftTableData[section]
//           return headerView
//       }
//
//       //分区头即将要显示时调用
//       func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView,
//                      forSection section: Int) {
//           //如果是右侧表格，且是是由用户手动滑动屏幕造成的向上滚动
//           //那么左侧表格自动选中该分区对应的分类
//           if (rightTableView == tableView)
//               && !rightTableIsScrollDown
//               && (rightTableView.isDragging || rightTableView.isDecelerating) {
//               leftTableView.selectRow(at: IndexPath(row: section, section: 0),
//                                       animated: true, scrollPosition: .top)
//           }
//       }
//
//       //分区头即将要消失时调用
//       func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView,
//                      forSection section: Int) {
//           //如果是右侧表格，且是是由用户手动滑动屏幕造成的向下滚动
//           //那么左侧表格自动选中该分区对应的下一个分区的分类
//           if (rightTableView == tableView)
//               && rightTableIsScrollDown
//               && (rightTableView.isDragging || rightTableView.isDecelerating) {
//               leftTableView.selectRow(at: IndexPath(row: section + 1, section: 0),
//                                       animated: true, scrollPosition: .top)
//           }
//       }
//
//       //单元格选中时调用
//       func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//           //点击的是左侧单元格时
//           if leftTableView == tableView {
//               //右侧表格自动滚动到对应的分区
//               rightTableView.scrollToRow(at: IndexPath(row: 0, section: indexPath.row),
//                                          at: .top, animated: true)
//               //左侧表格将该单元格滚动到顶部
//               leftTableView.scrollToRow(at: IndexPath(row: indexPath.row, section: 0),
//                                         at: .top, animated: true)
//           }
//       }
//
//       //表格滚动时触发（主要用于记录当前右侧表格时向上还是向下滚动）
//       func scrollViewDidScroll(_ scrollView: UIScrollView) {
//           let tableView = scrollView as! UITableView
//           if rightTableView == tableView {
//               rightTableIsScrollDown = rightTableLastOffsetY < scrollView.contentOffset.y
//               rightTableLastOffsetY = scrollView.contentOffset.y
//           }
//       }
//
}
