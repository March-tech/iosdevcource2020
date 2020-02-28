//
//  CODETableViewCell.swift
//  TableViewDemo
//
//  Created by Vadim Zhuk on 2/18/20.
//  Copyright © 2020 Vadim Zhuk. All rights reserved.
//

import UIKit

class CODETableViewCell: UITableViewCell {

    let reuseID = "CODETableViewCell"

    var fwImageView: UIImageView?

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .green
        fwImageView = UIImageView(image: UIImage(named: "book"))
        if let iview = fwImageView {
            addSubview(iview)
            iview.translatesAutoresizingMaskIntoConstraints = false
            iview.topAnchor.constraint(equalTo: topAnchor).isActive = true
            iview.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
            iview.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        }
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
