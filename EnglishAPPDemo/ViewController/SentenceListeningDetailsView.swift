//
//  SentenceListeningDetailsView.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/9/14.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class SentenceListeningDetailsView: UIViewController {

    @IBOutlet weak var chooseCourse: UIButton!
    
    
    @IBOutlet weak var bg_round: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bg_HeadView = HeadBgView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 55*Y_), withTitle: "句子听写")        
        self.view.addSubview(bg_HeadView)

        
        let backButton = UIButton(frame: CGRect(x: 22.5, y: 45, width: 10, height: 20))
        backButton.setBackgroundImage(UIImage(named: "bt_back"), for: UIControl.State.normal)
        bg_HeadView.addSubview(backButton)
        
        let settingButton = UIButton(frame: CGRect(x: 342.5, y: 44.5, width: 20, height: 21))
        settingButton.setBackgroundImage(UIImage(named: "bt_setting"), for: UIControl.State.normal)
        bg_HeadView.addSubview(settingButton)
                
        chooseCourse.layer.masksToBounds = true
        chooseCourse.layer.cornerRadius = 10
        chooseCourse.layer.borderWidth = 1
        chooseCourse.layer.borderColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        
        bg_round.image = UIImage(named: "bg_round")
        bg_round.layer.masksToBounds = true
        bg_round.layer.cornerRadius = bg_round.frame.width/2
        //chooseCourse.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
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
