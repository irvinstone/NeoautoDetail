//
//  ViewController+TableView.swift
//  NeoAutoDetail
//
//  Created by Irvin Leon on 3/12/19.
//  Copyright © 2019 orbis. All rights reserved.
//

import Foundation
import UIKit

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return card.characteristics.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return card.characteristics[section].name
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == descriptionSection){
            return descriptionSectionRows
        }else {
            return card.characteristics[section].collapsed ? 0 : card.characteristics[section].value.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == descriptionSection {
            guard let viewCell = tableView.dequeueReusableCell(withIdentifier: "descriptionCell", for: indexPath) as? DescriptionTableViewCell else {
                fatalError()
            }
            viewCell.descriptionLabel?.text = card.information.descriptionTitle
            viewCell.textDescriptionLabel?.text = card.information.descriptionText
            return viewCell
        }
        guard let viewCell = tableView.dequeueReusableCell(withIdentifier: "cuztomCell", for: indexPath) as? CuztomTableViewCell else {
            fatalError()
        }
        let dictionaryKey = Array(card.characteristics[indexPath.section].value.keys)[indexPath.row]
        viewCell.titleLabel?.text = dictionaryKey
        viewCell.detailLabel?.text = card.characteristics[indexPath.section].value[dictionaryKey]
        
        
        return viewCell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == descriptionSection {
            return CGFloat(descriptionSectionHeight)
        } else {
            return UITableView.automaticDimension
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        if section == 0 {
            guard let header = tableView.dequeueReusableCell(withIdentifier: "defaultHeader") as? DefaultHeaderView else {
                fatalError()
            }
            header.titleLabel.text = card.information.name
            header.subTitleLabel.text = card.information.price
            return header
        }
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header") as? ExpandableHeaderView ?? ExpandableHeaderView(reuseIdentifier: "header")
        
        header.titleLabel.text = card.characteristics[section].name
        header.arrowLabel.text = ">"
        header.setCollapsed(card.characteristics[section].collapsed)
        
        header.section = section
        header.delegate = self
        
        return header
    }
    
    
    
    
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if section > 0{
            let header = view as! UITableViewHeaderFooterView
            header.backgroundView?.backgroundColor = #colorLiteral(red: 0.8377029896, green: 0.837844193, blue: 0.8376844525, alpha: 1)
            header.textLabel?.font = UIFont(name: "Helvetica-Bold", size: 17)
        }
    }
}
extension ViewController: ExpandableHeaderViewDelegate {
    func toggleSection(header: ExpandableHeaderView, section: Int) {
        let collapsed = !card.characteristics[section].collapsed
        
        // Toggle collapse
        card.characteristics[section].collapsed = collapsed
        header.setCollapsed(collapsed)
        
        // Reload the whole section
        detailTableView.reloadSections(NSIndexSet(index: section) as IndexSet, with: .automatic)
    }
}
