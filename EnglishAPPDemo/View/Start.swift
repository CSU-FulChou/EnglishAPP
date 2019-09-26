//
//  Start.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/26.
//  Copyright © 2019 org.csu. All rights reserved.
//

import Foundation
import UIKit

class JKsStar: UIView {
    private var fillView: UIView!
    private let layerMask = CAShapeLayer()
    private let border = CAShapeLayer()
    
    //
    var starArray : [JKsStar] = []
    
    
    var percent: CGFloat = 0 {  //0~1
        didSet {
            var frame = fillView.frame
            let width = self.bounds.size.width*percent
            frame.size.width = width
            fillView.frame = frame
        }
    }
    
    var fillColor: UIColor = UIColor.blue {
        didSet {
            fillView.backgroundColor = fillColor
        }
    }
    
    var borderColor = UIColor.blue {
        didSet {
            border.strokeColor = borderColor.cgColor
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        var fframe = self.bounds //!!!!!!! 不是frame
        let fWidth = self.bounds.size.width*percent
        fframe.size.width = fWidth
        
        fillView = UIView(frame: fframe)
        
        fillView.backgroundColor = fillColor
        self.addSubview(fillView)
        
        //在数学坐标轴的坐标
        let r: Double = Double(frame.size.width/2.0)
        
        let a_x: Double = 0
        let a_y = r
        let b_x = cos_degree(18)*r
        let b_y = sin_degree(18)*r
        let c_x = cos_degree(54)*r
        let c_y = -sin_degree(54)*r
        let d_x = -cos_degree(54)*r
        let d_y = -sin_degree(54)*r
        let e_x = -cos_degree(18)*r
        let e_y = sin_degree(18)*r
        
        //        let a = CGPoint(x: a_x, y: a_y)
        //        let b = CGPoint(x: b_x, y: b_y)
        //        let c = CGPoint(x: c_x, y: c_y)
        //        let d = CGPoint(x: d_x, y: d_y)
        //        let e = CGPoint(x: e_x, y: e_y)
        
        let tan_18_2 = tan(18/180*Double.pi)*tan(18/180*Double.pi)
        let t = (1 + tan_18_2)/(3-tan_18_2) //= 0.3819660112501
        let r_t = r*t
        
        let aa_x: Double = 0
        let aa_y = -r_t
        let bb_x = -r_t*cos_degree(18)
        let bb_y = -r_t*sin_degree(18)
        let cc_x = -r_t*cos_degree(54)
        let cc_y = r_t*sin_degree(54)
        let dd_x = r_t*cos_degree(54)
        let dd_y = r_t*sin_degree(54)
        let ee_x = r_t*cos_degree(18)
        let ee_y = -r_t*sin_degree(18)
        
        //        let aa = CGPoint(x: aa_x, y: aa_y)
        //        let bb = CGPoint(x: bb_x, y: bb_y)
        //        let cc = CGPoint(x: cc_x, y: cc_y)
        //        let dd = CGPoint(x: dd_x, y: dd_y)
        //        let ee = CGPoint(x: ee_x, y: ee_y)
        //转换为正方形view（与圆内切）内部坐标
        let a_v = CGPoint(x: r + a_x, y: r - a_y)
        let b_v = CGPoint(x: r + b_x, y: r - b_y)
        let c_v = CGPoint(x: r + c_x, y: r - c_y)
        let d_v = CGPoint(x: r + d_x, y: r - d_y)
        let e_v = CGPoint(x: r + e_x, y: r - e_y)
        
        let aa_v = CGPoint(x: r + aa_x, y: r - aa_y)
        let bb_v = CGPoint(x: r + bb_x, y: r - bb_y)
        let cc_v = CGPoint(x: r + cc_x, y: r - cc_y)
        let dd_v = CGPoint(x: r + dd_x, y: r - dd_y)
        let ee_v = CGPoint(x: r + ee_x, y: r - ee_y)
        
        let starPath_bz = UIBezierPath()
        starPath_bz.move(to: a_v)
        starPath_bz.addLine(to: dd_v)
        starPath_bz.addLine(to: b_v)
        starPath_bz.addLine(to: ee_v)
        starPath_bz.addLine(to: c_v)
        starPath_bz.addLine(to: aa_v)
        starPath_bz.addLine(to: d_v)
        starPath_bz.addLine(to: bb_v)
        starPath_bz.addLine(to: e_v)
        starPath_bz.addLine(to: cc_v)
        starPath_bz.close()
        
        layerMask.backgroundColor = UIColor.red.cgColor
        layerMask.path = starPath_bz.cgPath
        
        self.layer.mask = layerMask
        //border
        border.path = starPath_bz.cgPath
        border.strokeColor = borderColor.cgColor
        border.fillColor = nil
        self.layer.addSublayer(border)
        
    }
    
    func sin_degree(_ degree: Double) -> Double {
        return sin(degree/180*Double.pi)
    }
    
    func cos_degree(_ degree: Double) -> Double {
        return cos(degree/180*Double.pi)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createStarAt(index: Int) -> JKsStar {
        let starD: CGFloat = 23.0
        let starSpacing: CGFloat = 6.0
        let starX = (starD + starSpacing)*CGFloat(index)
        
        let star = JKsStar(frame: CGRect(x: starX, y: 0, width: starD, height: starD))
        star.backgroundColor = UIColor.white
        star.borderColor = UIColor.blue
        star.fillColor = UIColor.blue
        return star
    }
    
    func starAt(index: Int) -> JKsStar {
        return starArray[index]
    }
    
    //评分（0~5分）
    func setScore(_ value: CGFloat) {
        for i in 0..<5 {    //5个星星
            let star = starAt(index: i)
            star.percent = 1
            
            let index = CGFloat(i)
            if index < floor(value) {
                star.percent = 1
            }else if index <= value {
                star.percent = value - index
            }else {
                star.percent = 0
            }
        }
    }

}
