//
//  SentenceListeningChooseView.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/14.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class SentenceListeningChooseView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 64*Y_), withTitle: "句子听写")
        let backButton = UIButton(frame: CGRect(x: 22.5*X_, y: 30*X_, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        let settingButton = UIButton(frame: CGRect(x: 370*X_, y: 29.5*Y_, width: 20, height: 20))
        settingButton.setBackgroundImage(UIImage(named: "bt_setting"), for: UIControl.State.normal)

        self.view.addSubview(bg_HeadView)
        self.view.addSubview(backButton)
        self.view.addSubview(settingButton)
        
        
        // Do any additional setup after loading the view.
        
        let firstImageView = UIButton(frame: CGRect(x: 27.5, y: 117.5-20, width: 320, height: 45))
        firstImageView.backgroundColor = UIColor(hexString: "#f1f1f1")
        firstImageView.layer.masksToBounds = true
        firstImageView.layer.cornerRadius = 20;
        // 放在 imageView 里面的控件
        
        let title = UILabel(frame: CGRect(x: 10, y: 11.5, width: 270, height: 25))
        title.text = "Unit1 hello world !"
        firstImageView.addSubview(title)
        
        let nextDetil = UILabel(frame: CGRect(x: 293, y: 11.5, width: 14, height: 25))
        nextDetil.text = ">"
        nextDetil.font = UIFont(name: "Helvetica Neue", size: 20)
        nextDetil.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1) ;     firstImageView.addSubview(nextDetil)
        
        self.view.addSubview(firstImageView)
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
