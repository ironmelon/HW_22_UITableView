//
//  AnimalListViewController.swift
//  HW_22_UITableView
//
//  Created by Oleg Dynnikov on 9/26/18.
//  Copyright © 2018 Oleg Dynnikov. All rights reserved.
//

import UIKit

class AnimalListViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!

    private let cellHeight: CGFloat = 150
    private var animalsByClass = [[Animal]]()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Animals List"

        tableView.delegate = self
        tableView.dataSource = self

        animalsByClass = MockGenerator.generateRandomAnimalsByClasses()
        tableView.reloadData()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showDetail" else { return }
        guard let destVC = segue.destination as? AnimalDetailViewController else { return }
        guard let tableCell = sender as? UITableViewCell else { return }
        guard let indexPath = tableView.indexPath(for: tableCell) else { return }
        let animal = animalsByClass[indexPath.section][indexPath.row]
        destVC.animal = animal
    }
}

//MARK: - UITableViewDelegate & UITableViewDatasource
extension AnimalListViewController: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return animalsByClass.count
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let animals = animalsByClass[section]
        return animals[0].className
    }

    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = .black
        header.tintColor = .yellow
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let animals = animalsByClass[section]
        return animals.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellHeight
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath) as! AnimalTableViewCell
        let animal = animalsByClass[indexPath.section][indexPath.row]
        cell.update(name: animal.name, image: animal.image)
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
