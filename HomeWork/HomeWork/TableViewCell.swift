//
//  TableViewCell.swift
//  HomeWork
//
//  Created by Marta on 2/28/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    static let id = "CodeTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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

