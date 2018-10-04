//
//  ModelsTableViewCell.swift
//  HW_22_UITableView
//
//  Created by Oleg Dynnikov on 9/27/18.
//  Copyright © 2018 Oleg Dynnikov. All rights reserved.
//

import UIKit

class ModelsTableViewCell: UITableViewCell {

    @IBOutlet private weak var modelNameLabel: UILabel!
    @IBOutlet private weak var modelImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        modelNameLabel.textColor = .yellow
    }

    func update(name: String, image: UIImage) {
        modelNameLabel.text = name
        modelImage.image = image
    }
}
