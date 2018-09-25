//
//  TopicsViewController.swift
//  HW_22_UITableView
//
//  Created by Oleg Dynnikov on 9/21/18.
//  Copyright © 2018 Oleg Dynnikov. All rights reserved.
//

import UIKit

class TopicsViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    private var topics: [Topic] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "IOS Topics"
        tableView.delegate = self
        tableView.dataSource = self

        topics = MockGenerator.generateRandomTopics()
        tableView.reloadData()
    }
}

//MARK: - UITableViewDelegate & UITableViewDataSource
extension TopicsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topics.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TopicCell", for: indexPath)
        let topic = topics[indexPath.row]
        cell.textLabel?.text = topic.name
        cell.imageView?.image = topic.image
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
