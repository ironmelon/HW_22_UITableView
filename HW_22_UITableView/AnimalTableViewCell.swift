//
//  AnimalTableViewCell.swift
//  HW_22_UITableView
//
//  Created by Oleg Dynnikov on 9/26/18.
//  Copyright © 2018 Oleg Dynnikov. All rights reserved.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {

    @IBOutlet private weak var animalImageView: UIImageView!
    @IBOutlet private weak var animalName: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        animalName.textColor = .white
    }

    func update(name: String, image: UIImage) {
        animalImageView.image = image
        animalName.text = name
    }
}
