//
//  OwnerMenuTableViewCell.swift
//  EnglishAPPDemo
//
//  Created by 周福 on 2019/10/5.
//  Copyright © 2019 org.csu. All rights reserved.
//

import UIKit

class OwnerMenuTableViewCell: UITableViewCell {

    @IBOutlet weak var  hintLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var IconImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
