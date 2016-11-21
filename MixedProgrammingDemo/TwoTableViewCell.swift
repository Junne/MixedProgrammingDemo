//
//  TwoTableViewCell.swift
//  MixedProgrammingDemo
//
//  Created by baijf on 21/11/2016.
//  Copyright © 2016 Junne. All rights reserved.
//

import UIKit

class TwoTableViewCell: UITableViewCell {

    @IBOutlet weak var numbeLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
