//
//  AnimalDetailViewController.swift
//  HW_22_UITableView
//
//  Created by Oleg Dynnikov on 9/26/18.
//  Copyright © 2018 Oleg Dynnikov. All rights reserved.
//

import UIKit

class AnimalDetailViewController: UIViewController {

    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var classNameLabel: UILabel!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var descriptionsLabel: UILabel!
    @IBOutlet private weak var lcHeightImageView: NSLayoutConstraint!

    private let navBarHeight: CGFloat = 64
    var animal: Animal?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Description"
        lcHeightImageView.constant = view.bounds.height / 2 - navBarHeight
        imageView.image = animal?.image ?? #imageLiteral(resourceName: "all_animals")
        nameLabel.text = animal?.name ?? ""
        classNameLabel.text = animal?.className ?? ""
        descriptionsLabel.text = animal?.description ?? ""
    }
}
