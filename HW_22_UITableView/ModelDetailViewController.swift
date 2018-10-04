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

    var armedUnit: ArmedUnit?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Description"
        imageView.image = armedUnit?.image ?? #imageLiteral(resourceName: "AFOU")
        modelNameLabel.text = armedUnit?.name ?? "No Data"
        descriptionLabel.text = armedUnit?.description ?? "No Data"
    }
}
