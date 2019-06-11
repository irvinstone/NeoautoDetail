//
//  DescriptionTableViewCell.swift
//  NeoAutoDetail
//
//  Created by Irvin Leon on 3/12/19.
//  Copyright © 2019 orbis. All rights reserved.
//

import UIKit

class DescriptionTableViewCell: UITableViewCell {

    @IBOutlet weak var descriptionLabel     : UILabel!
    @IBOutlet weak var textDescriptionLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
