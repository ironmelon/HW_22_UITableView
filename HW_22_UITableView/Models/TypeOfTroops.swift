//
//  TypeOfTroops.swift
//  HW_22_UITableView
//
//  Created by Oleg Dynnikov on 10/4/18.
//  Copyright © 2018 Oleg Dynnikov. All rights reserved.
//

import UIKit

struct TypeOfTroops {
    let name: String
    var units: [ArmedUnit]
    var image: UIImage {
        switch name {
        case "Armored Vehicles":
            return #imageLiteral(resourceName: "armoredVehicles")
        case "Aircrafts":
            return #imageLiteral(resourceName: "aircrafts")
        case "Helicopters":
            return #imageLiteral(resourceName: "helicopters")
        default:
            return #imageLiteral(resourceName: "AFOU")
        }
    }
}
