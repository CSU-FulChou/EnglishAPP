//
//  HomePageController.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/10/5.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class HomePageController: UIViewController {
    
    @IBOutlet weak var ownerCenterBtn: UIButton!
    var menuViewController:OwnerCenterControllerController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
      
        // Do any additional setup after loading the view.
    }
    func setupView(){
        ownerCenterBtn.frame = CGRect(x: 374*X_, y: 39.833*Y_, width: 20, height: 20)
    }
    
    @IBAction func clickSynExercise(_ sender: Any) {
        
        let synExerciseVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SynExercise")
        self.navigationController?.pushViewController(synExerciseVC, animated: true)
        
    }
    
    @IBAction func clickBeginStudy(_ sender: Any) {
        let bookUnitChooseVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BookUnitChooseView")
        self.navigationController?.pushViewController(bookUnitChooseVC, animated: true)
    }
    
    @IBAction func showOwnerCenter(_ sender: Any) {
        let ownerCenterVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "OwnerCenterView")
        self.navigationController!.pushViewController(ownerCenterVC, animated: true)

    }
    
    
    
    
    

}
