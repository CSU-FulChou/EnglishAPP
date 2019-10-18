//
//  TopUpCreditController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/21.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class TopUpCreditController: UIViewController {
    
    @IBOutlet weak var lineImageViewRight: UIImageView!
    @IBOutlet weak var lineImageViewLeft: UIImageView!
    
    @IBOutlet weak var wxpayBtn: UIButton!
    @IBOutlet var cornorBounds: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(hexString: "fafafa")
        
        let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 64*Y_), withTitle: "学分充值")

        self.view.addSubview(bg_HeadView)

        let backButton = UIButton(frame: CGRect(x: 22.5*X_, y: 30*Y_, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        backButton.addTarget(self, action: #selector(popBack), for:.touchUpInside)
        let editBtn = UIButton(frame: CGRect(x: 354*X_, y: 29.5*Y_, width: 40, height: 21))
        editBtn.isEnabled = true;
        editBtn.setTitle("帮助", for: UIControl.State.normal)
        editBtn.titleLabel?.textColor = UIColor.white

        self.view.addSubview(bg_HeadView)
        self.view.addSubview(backButton)
        self.view.addSubview(editBtn)
        
        
        
        // 画虚线：
    UIGraphicsBeginImageContext(lineImageViewLeft.frame.size) // 位图上下文绘制区域
        lineImageViewLeft.image?.draw(in: lineImageViewLeft.bounds)
        let context:CGContext = UIGraphicsGetCurrentContext()!
        context.setLineCap(CGLineCap.square)
        
        let lengths:[CGFloat] = [5,8]
        context.setStrokeColor(UIColor(hexString: "#AEAEAE").cgColor)
        context.setLineWidth(1)
        context.setLineDash(phase: 0, lengths: lengths)
        context.move(to: CGPoint(x: 0, y: 10))
        context.addLine(to: CGPoint(x: self.view.frame.width, y: 10))
        context.strokePath()
        lineImageViewLeft.image = UIGraphicsGetImageFromCurrentImageContext()
        
        // 画右边的虚线；
        UIGraphicsBeginImageContext(lineImageViewRight.frame.size) // 位图上下文绘制区域
        lineImageViewRight.image?.draw(in: lineImageViewRight.bounds)
        let context2:CGContext = UIGraphicsGetCurrentContext()!
        context2.setLineCap(CGLineCap.square)
        
        let lengths2:[CGFloat] = [5,8]
        context2.setStrokeColor(UIColor(hexString: "#AEAEAE").cgColor)
        context2.setLineWidth(1)
        context2.setLineDash(phase: 0, lengths: lengths2)
        context2.move(to: CGPoint(x: 0, y: 10))
        context2.addLine(to: CGPoint(x: self.view.frame.width, y: 10))
        context2.strokePath()
        lineImageViewRight.image = UIGraphicsGetImageFromCurrentImageContext()
        
        for btn in cornorBounds{
            btn.layer.masksToBounds = true
            btn.layer.cornerRadius = 23
            btn.layer.borderColor = UIColor(hexString: "#979797").cgColor
            btn.layer.borderWidth = 1
        }
        wxpayBtn.layer.borderColor = UIColor.clear.cgColor
        
    }
    @objc func popBack(_ sender: Any) {
           self.navigationController?.popViewController(animated: true)
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
