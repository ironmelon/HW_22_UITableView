//
//  ArmedForcesViewController.swift
//  HW_22_UITableView
//
//  Created by Oleg Dynnikov on 9/27/18.
//  Copyright © 2018 Oleg Dynnikov. All rights reserved.
//

import UIKit

class ArmedForcesViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    private var typesOfTroops = [TypeOfTroops]()
    private let cellHeight: CGFloat = 150

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Armed Forces"

        tableView.delegate = self
        tableView.dataSource = self

        typesOfTroops = MockGeneration.forcesGeneration()
        tableView.reloadData()
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showModels" else { return }
        guard let destVC = segue.destination as? ModelsListViewController else { return }
        guard let tableCell = sender as? UITableViewCell else { return }
        guard let indexPath = tableView.indexPath(for: tableCell) else { return }
        let troops = typesOfTroops[indexPath.row]
        destVC.troops = troops
    }
}

// MARK: UITableViewDelegate & UITableViewDataSource
extension ArmedForcesViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return typesOfTroops.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellHeight
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MilitaryCell", for: indexPath) as! MilitaryCellTableViewCell
        let troops = typesOfTroops[indexPath.row]
        cell.update(image: troops.image, name: troops.name, amountModel: troops.units.count)
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}




