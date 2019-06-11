//
//  DefaultHeaderView.swift
//  NeoAutoDetail
//
//  Created by Irvin Leon on 3/14/19.
//  Copyright © 2019 orbis. All rights reserved.
//

import Foundation
import UIKit


class DefaultHeaderView:UITableViewCell{
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    
    
}
