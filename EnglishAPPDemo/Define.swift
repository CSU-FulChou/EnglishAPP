//
//  Define.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/23.
//  Copyright © 2019 org.csu. All rights reserved.
//

import SwiftUI
let SCREEN_HEIGHT = UIScreen.main.bounds.height
let SCREEN_WIDTH = UIScreen.main.bounds.width
let X_ = UIScreen.main.bounds.width/414
let Y_ = UIScreen.main.bounds.height/896

//var CENTER_X : CGFloat{
//    get{
//
//    }
//    set(newValue){
//
//    }
//}

func CENTER_X(object:UIView) -> CGFloat{
    return object.frame.origin.x+object.frame.width/2
}

func CENTER_Y(object:UIView) -> CGFloat{
    return object.frame.origin.y+object.frame.height/2
}

//func Bottom(object:UIView) -> CGFloat{
//    return object.frame.origin.y +
//        object.frame.height
//}
//let CENTER_X =
