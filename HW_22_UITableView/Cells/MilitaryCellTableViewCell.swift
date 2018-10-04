//
//  MilitaryCellTableViewCell.swift
//  HW_22_UITableView
//
//  Created by Oleg Dynnikov on 9/27/18.
//  Copyright © 2018 Oleg Dynnikov. All rights reserved.
//

import UIKit

class MilitaryCellTableViewCell: UITableViewCell {

    @IBOutlet private weak var cellImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var amountLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func update(image: UIImage, name: String, amountModel: Int) {
        cellImageView.image = image
        nameLabel.text = name
        amountLabel.text = String(amountModel)
    }
}
