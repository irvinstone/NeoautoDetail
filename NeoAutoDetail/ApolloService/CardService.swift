//
//  CardService.swift
//  NeoAutoDetail
//
//  Created by Irvin Leon on 3/14/19.
//  Copyright © 2019 orbis. All rights reserved.
//

import Foundation
import UIKit

class CardService {
    var images : [Image]? = []
    var information : Information?
    var characteristics: [Characteristic]?
    
    init(images: [Image] = [], information: Information, characteristics: [Characteristic]) {
        self.images = images
        self.information = information
        self.characteristics = characteristics
    }
    
    
    static func getFakeCardImages() -> [Image] {
        var fakeImages : [Image] = []
        fakeImages.append(Image(photo: #imageLiteral(resourceName: "car2"), photoPath: "http://urbania.pe", title: "Amarok 2017", description: "Imagen del auto"))
        fakeImages.append(Image(photo: #imageLiteral(resourceName: "performance"), photoPath: "http://urbania.pe", title: "Amarok 2017", description: "Imagen del auto"))
        fakeImages.append(Image(photo: #imageLiteral(resourceName: "img6"), photoPath: "http://urbania.pe", title: "Amarok 2017", description: "Imagen del auto"))
        fakeImages.append(Image(photo: #imageLiteral(resourceName: "prototype"), photoPath: "http://urbania.pe", title: "Amarok 2017", description: "Imagen del auto"))
        fakeImages.append(Image(photo: #imageLiteral(resourceName: "img4"), photoPath: "http://urbania.pe", title: "Amarok 2017", description: "Imagen del auto"))
        return fakeImages
    }
    
    static func getFakeInfo() -> Information {
        return Information(name: "Volkswager Amarok 2014", price: "US$ 25.999", descriptionTitle: "Descripción", descriptionText: "Tomar el volatne es mucho mas facil is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not")
    }
    
    static func getFakeCharacteristics() -> [Characteristic] {
        var fakeCharacteristics: [Characteristic] = []
        fakeCharacteristics.append(Characteristic(name: "Encabezado", value: ["field":"Value","field2":"value2"]))
        fakeCharacteristics.append(Characteristic(name: "Equipamiento", value: ["field":"Value","field2":"value2"]))
        fakeCharacteristics.append(Characteristic(name: "Exterior", value: ["field":"Value","field2":"value2"]))
        fakeCharacteristics.append(Characteristic(name: "Extras", value: ["field":"Value","field2":"value2"]))
        fakeCharacteristics.append(Characteristic(name: "Seguridad", value: ["field":"Value","field2":"value2"]))
        return fakeCharacteristics
    }
    
    static func getFakeCard() -> Card {
        let images = self.getFakeCardImages()
        let information = self.getFakeInfo()
        let characteristics = self.getFakeCharacteristics()
        return Card(images: images, information: information, characteristics:  characteristics)
    }
}
