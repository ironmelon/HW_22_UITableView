//
//  ModelsListViewController.swift
//  HW_22_UITableView
//
//  Created by Oleg Dynnikov on 9/27/18.
//  Copyright © 2018 Oleg Dynnikov. All rights reserved.
//

import UIKit

class ModelsListViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    private let cellHeight: CGFloat = 150
    var troops: TypeOfTroops?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Models"

        tableView.delegate = self
        tableView.dataSource = self

        tableView.reloadData()
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showDetail" else { return }
        guard let destVC = segue.destination as? ModelDetailViewController else { return }
        guard let tableCell = sender as? UITableViewCell else { return }
        guard let indexPath = tableView.indexPath(for: tableCell) else { return }
        guard let unit = troops?.units[indexPath.row] else { return }
        destVC.armedUnit = unit
    }
}

extension ModelsListViewController: UITableViewDelegate ,UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return troops?.units.count ?? 0
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellHeight
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ModelCell", for: indexPath) as! ModelsTableViewCell
        let unit = troops?.units[indexPath.row]
        cell.update(name: unit?.name ?? "", image: unit?.image ?? #imageLiteral(resourceName: "AFOU"))
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
