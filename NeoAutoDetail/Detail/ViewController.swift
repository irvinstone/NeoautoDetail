//
//  ViewController.swift
//  NeoAutoDetail
//
//  Created by Irvin Leon on 3/12/19.
//  Copyright © 2019 orbis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var detailTableView          : UITableView!
    @IBOutlet weak var galleryCollectionView    : UICollectionView!
    
    var card: Card!
    let descriptionSection: Int = 0
    let descriptionSectionRows: Int = 1
    let descriptionSectionHeight: Float = 50.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        card = CardService.getFakeCard()
        
        galleryCollectionView.dataSource    = self
        galleryCollectionView.delegate      = self
        
        detailTableView.dataSource = self
        detailTableView.delegate   = self
        detailTableView.tableFooterView = UIView()
//        detailTableView.separatorStyle = .none
        
//        detailTableView.rowHeight = UITableView.automaticDimension
        
        
    }
    
    


}

