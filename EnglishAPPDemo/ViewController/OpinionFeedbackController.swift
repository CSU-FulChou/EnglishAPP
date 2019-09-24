//
//  OpinionFeedbackController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/23.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class OpinionFeedbackController: UIViewController, UITextViewDelegate {
    @IBOutlet var advise: [UILabel]!
    @IBOutlet weak var selectBtns: UIButton!
    @IBOutlet weak var feedBackText: UITextView!
    @IBOutlet weak var showNumLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(hexString: "fafafa")
        let bg_HeadView = UIImageView()
        bg_HeadView.frame = CGRect(x: 0, y: 0, width: SCREEn_WIDTH, height: 75*Y_)
        bg_HeadView.image = UIImage(named: "background_head")
        //头部标签。
        let head = UILabel(frame: CGRect(x: 74*X_,y: 40*Y_, width: 280*Y_, height: 30*Y_))
        // 应该在这里写一个函数，动态的修改这个 text 的显示的value
        head.text = "意见和问题反馈"
        head.textColor = UIColor.white
        head.font = UIFont(name: head.font.fontName, size: 17)
        head.textAlignment = NSTextAlignment.center
        bg_HeadView.addSubview(head)
        
        let backButton = UIButton(frame: CGRect(x: 22.5, y: 45, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        bg_HeadView.addSubview(backButton)
        showNumLabel.text = "0/300"
        
        self.view.addSubview(bg_HeadView)
        
        feedBackText.delegate = self
        selectBtns.layer.borderWidth = 0.5
        selectBtns.layer.borderColor = UIColor(hexString: "#BABABA").cgColor
        for index in advise{
          //  drawDashLine(label: index, strokeColor:UIColor(hexString: "BABABA"))
            setBottomBorder(label: index)
        }
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        
        if range.location > 299{
            
            let alertController = UIAlertController(title: "系统提示",
                            message: "字数不能超过20", preferredStyle: .alert)
            
//            let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
            
            let okAction = UIAlertAction(title: "好的", style: .default, handler: {
                action in
                print("点击了确定")
            })
//            alertController.addAction(cancelAction)
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        }
        
        
        if text.isEmpty == true && range.location == 0 && range.length == 1 {
            //placeLabel.isHidden = false
        }
        if text.isEmpty == false {
           // placeLabel.isHidden = true
        }
       
     return true
    }
    func textViewDidChange(_ textView: UITextView) {
        var count = 0
        count =  textView.text.count
        showNumLabel.text = "\(count)/300"
//        showNumLabel.layer.cornerRadius
       // showNumLabel.layer.borderWidth
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
 //MARK:- 绘制虚线
    func drawDashLine(label:UILabel,strokeColor: UIColor, lineWidth: CGFloat = 1, lineLength: Int = 10, lineSpacing: Int = 5, isBottom: Bool = true) {
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.bounds = label.bounds
        shapeLayer.anchorPoint = CGPoint(x: 0, y: 0)
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = strokeColor.cgColor
        
        shapeLayer.lineWidth = lineWidth
        shapeLayer.lineJoin = CAShapeLayerLineJoin.round
        
        //每一段虚线长度 和 每两段虚线之间的间隔
        shapeLayer.lineDashPattern = [NSNumber(value: lineLength), NSNumber(value: lineSpacing)]
        
        let path = CGMutablePath()
        let y = isBottom == true ? label.layer.bounds.height - lineWidth : 0
        
        path.move(to: CGPoint(x: 0, y: y))
        path.addLine(to: CGPoint(x: label.layer.bounds.width, y: y))
        shapeLayer.path = path
        label.layer.addSublayer(shapeLayer)
    }
    //MARK -- 绘制直线
    
    func setBottomBorder(label:UILabel){
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor(hexString: "#E2E2E2").cgColor
        //UIColor.red.cgColor
       // UIColor(hexString: "#E2E2E2").cgColor
        border.frame = CGRect(x: -10, y: label.frame.size.height - width, width:  label.frame.size.width+20, height: label.frame.size.height)
        
        border.borderWidth = width
        label.layer.addSublayer(border)
        label.layer.masksToBounds = true
    }
    
    

}
