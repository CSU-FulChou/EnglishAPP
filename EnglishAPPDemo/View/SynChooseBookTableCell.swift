//
//  SynChooseBookTableCell.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2020/2/26.
//  Copyright © 2020 org.csu. All rights reserved.
//

import UIKit

class SynChooseBookTableCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var lockImageView: UIImageView!
    
    @IBOutlet weak var selectImageView: UIImageView!
    
    var isUseable = false{
        willSet{
                   if newValue == true{
//                       selectImageView.isHidden = !newValue
                       
                       lockImageView.isHidden = newValue
                      
//                       self.backgroundColor = UIColor(hexString: "#FFB289")
                   }
                   
                   if newValue == false{
//                       print(newValue)
//                       selectImageView.isHidden = !newValue
                       lockImageView.isHidden = newValue
//                       self.backgroundColor = UIColor(hexString: "#FFFFFF")
                   }
               }
    }
    
    var isClick = false{
        willSet{
            if newValue == true{
                selectImageView.isHidden = !newValue
                
//                lockImageView.isHidden = newValue
               
                self.backgroundColor = UIColor(hexString: "#FFB289")
            }
            
            if newValue == false{
//                print(newValue)
                selectImageView.isHidden = !newValue
//                lockImageView.isHidden = newValue
                self.backgroundColor = UIColor(hexString: "#FFFFFF")
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
