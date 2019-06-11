//
//  Ficha.swift
//  NeoAutoDetail
//
//  Created by Irvin Leon on 3/14/19.
//  Copyright © 2019 orbis. All rights reserved.
//

import Foundation
import UIKit


struct Card {
    var images: [Image]
    var information: Information
    var characteristics: [Characteristic]
    
    init(images: [Image], information: Information, characteristics:[Characteristic]) {
        self.images = images
        self.information = information
        self.characteristics = characteristics
    }

}
struct Image {
    var photo: UIImage? = nil
    var photoPath: String
    var title: String
    var description: String
    
    init(photo: UIImage,photoPath: String,title: String,description: String) {
        self.photo          = photo
        self.photoPath      = photoPath
        self.title          = title
        self.description    = description
    }
}
struct Information {
    var name: String
    var price: String
    var descriptionTitle: String
    var descriptionText: String
    
    init(name: String,price: String,descriptionTitle: String, descriptionText: String) {
        self.name = name
        self.price = price
        self.descriptionTitle = descriptionTitle
        self.descriptionText = descriptionText
    }
}
struct Characteristic {
    var name: String
    var value: [String:String]
    var collapsed: Bool
    
    init(name:String,value:[String:String],collapsed: Bool = false) {
        self.name = name
        self.value = value
        self.collapsed = collapsed
    }
}

