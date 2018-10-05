//
//  ModelDetailViewController.swift
//  HW_22_UITableView
//
//  Created by Oleg Dynnikov on 9/27/18.
//  Copyright © 2018 Oleg Dynnikov. All rights reserved.
//

import UIKit

class ModelDetailViewController: UIViewController {

    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var modelNameLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var lcHeightImageView: NSLayoutConstraint!

    private let navBarHeight: CGFloat = 64
    var armedUnit: ArmedUnit?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
    }

    func setupData() {
        title = "Description"
        lcHeightImageView.constant = view.bounds.height / 2 - navBarHeight
        imageView.image = armedUnit?.image ?? #imageLiteral(resourceName: "AFOU")
        modelNameLabel.text = armedUnit?.name ?? "No Data"
        descriptionLabel.text = armedUnit?.description ?? "No Data"
    }
}
