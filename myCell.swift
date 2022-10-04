//
//  myCell.swift
//  coreDataExample
//
//  Created by exam on 03/10/22.
//  Copyright © 2022 exam. All rights reserved.
//

import UIKit

class myCell: UITableViewCell {

    @IBOutlet weak var stuName: UILabel!
    
    @IBOutlet weak var stuRollNo: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
