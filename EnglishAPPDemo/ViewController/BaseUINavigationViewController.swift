//
//  BaseUINavigationViewController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/10/19.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class BaseUINavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.interactivePopGestureRecognizer?.delegate = self
    }
}

extension BaseUINavigationController:UIGestureRecognizerDelegate{


    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if self.viewControllers.count == 1{
            return false;
        }
        return true;
    }

}


