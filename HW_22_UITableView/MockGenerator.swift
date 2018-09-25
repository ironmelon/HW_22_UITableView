//
//  MockGenerator.swift
//  TableViewExample
//
//  Created by Maksym Husar on 8/11/18.
//  Copyright © 2018 jetcoder-academy. All rights reserved.
//

import UIKit

struct MockGenerator {
    static func generateRandomTopics() -> [Topic] {
        var topics = [Topic]()
        let nameTopics = ["Variables", "Arrays", "Loops", "Optional types", "Tuples", "OOP", "Classes", "Inheritance", "Structs", "GIT", "UI elements", "Enums", "Timers & Seloctors", "Protocols", "Multi-screen apps", "Extensions", "UIVC lifecycle", "Delegate", "UIView", "Autolayout", "TableView"]
        for item in nameTopics {
            let topic = Topic(name: item, image: #imageLiteral(resourceName: "jetCoder"))
            topics.append(topic)
        }
        return topics
    }
}
