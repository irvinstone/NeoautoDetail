//
//  CuztomTableViewCell.swift
//  NeoAutoDetail
//
//  Created by Irvin Leon on 3/13/19.
//  Copyright © 2019 orbis. All rights reserved.
//

import UIKit

class CuztomTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
