//
//  XIBTableViewCell.swift
//  TableViewDemo
//
//  Created by Vadim Zhuk on 2/18/20.
//  Copyright © 2020 Vadim Zhuk. All rights reserved.
//

import UIKit

class XIBTableViewCell: UITableViewCell {

    let reuseID = "XIBTableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
