//
//  MockGenerator.swift
//  TableViewExample
//
//  Created by Maksym Husar on 8/11/18.
//  Copyright © 2018 jetcoder-academy. All rights reserved.
//

import UIKit

struct MockGenerator {
    static func generateRandomAnimals() -> [Animal] {
        var animals = [Animal]()

        //Beasts
        let wolf = Animal(name: "Wolf", className: "Beasts", description: "The wolf (Canis lupus), also known as the gray wolf, timber wolf, western wolf, and its other subspecies is a canine native to the wilderness and remote areas of Eurasia and North America.", image: #imageLiteral(resourceName: "wolf_animal"))
        animals.append(wolf)

        let bear = Animal(name: "Bear", className: "Beasts", description: "Characteristics of modern bears include large bodies with stocky legs, long snouts, small rounded ears, shaggy hair, plantigrade paws with five nonretractile claws, and short tails.", image: #imageLiteral(resourceName: "bear_animal"))
        animals.append(bear)

        let fox = Animal(name: "Fox", className: "Beasts", description: "Foxes are small-to-medium-sized, omnivorous mammals belonging to several genera of the family Canidae. Foxes have a flattened skull, upright triangular ears, a pointed, slightly upturned snout, and a long bushy tail (or brush).", image: #imageLiteral(resourceName: "fox_animal"))
        animals.append(fox)

        let tiger = Animal(name: "Tiger", className: "Beasts", description: "The tiger (Panthera tigris) is the largest cat species, most recognizable for its pattern of dark vertical stripes on reddish-orange fur with a lighter underside. The species is classified in the genus Panthera with the lion, leopard, jaguar and snow leopard.", image: #imageLiteral(resourceName: "tiger_animal"))
        animals.append(tiger)

        //Insects
        let bee = Animal(name: "Bee", className: "Insects", description: "Bees are flying insects closely related to wasps and ants, known for their role in pollination and, in the case of the best-known bee species, the western honey bee, for producing honey and beeswax.", image: #imageLiteral(resourceName: "bee_animal"))
        animals.append(bee)

        let mantis = Animal(name: "Mantis", className: "Insects", description: "Mantises are an order (Mantodea) of insects that contains over 2,400 species in about 430 genera in 15 families. The largest family is the Mantidae (mantids). Mantises are distributed worldwide in temperate and tropical habitats.", image: #imageLiteral(resourceName: "mantis_animal"))
        animals.append(mantis)

        let spider = Animal(name: "Spider", className: "Insects", description: "Spiders (order Araneae) are air-breathing arthropods that have eight legs and chelicerae with fangs able to inject venom. They are the largest order of arachnids and rank seventh in total species diversity among all other orders of organisms.", image: #imageLiteral(resourceName: "spider_animal"))
        animals.append(spider)

        let bumblebee = Animal(name: "Bumblebee", className: "Insects", description: "A bumblebee (or bumble bee, bumble-bee or humble-bee) is any of over 250 species in the genus Bombus, part of Apidae, one of the bee families. This genus is the only extant group in the tribe Bombini, though a few extinct related genera (e.g., Calyptapis) are known from fossils.", image: #imageLiteral(resourceName: "bumblebee_animal"))
        animals.append(bumblebee)

        //Birds
        let stork = Animal(name: "Stork", className: "Birds", description: "Storks dwell in many regions and tend to live in drier habitats than the closely related herons, spoonbills and ibises; they also lack the powder down that those groups use to clean off fish slime.", image: #imageLiteral(resourceName: "stork_animal"))
        animals.append(stork)

        let albatross = Animal(name: "Albatross", className: "Birds", description: "Albatrosses, of the biological family Diomedeidae, are large seabirds related to the procellariids, storm petrels and diving petrels in the order Procellariiformes (the tubenoses). They range widely in the Southern Ocean and the North Pacific.", image: #imageLiteral(resourceName: "albatross_animal"))
        animals.append(albatross)

        let colibri = Animal(name: "Colibri", className: "Birds", description: "Hummingbirds are birds native to the Americas that constitute the family Trochilidae. They are among the smallest of birds, most species measuring 7.5–13 cm (3–5 in) in length. Indeed, the smallest extant bird species is a hummingbird, the 5 cm (2.0 in) bee hummingbird weighing less than 2.0 g", image: #imageLiteral(resourceName: "colibri_animal"))
        animals.append(colibri)

        let penguin = Animal(name: "Penguin", className: "Birds", description: "Penguins (order Sphenisciformes, family Spheniscidae) are a group of aquatic, flightless birds. They live almost exclusively in the Southern Hemisphere, with only one species, the Galapagos penguin, found north of the equator. ", image:#imageLiteral(resourceName: "penguin_animal"))
        animals.append(penguin)

        //Fishes
        let carp = Animal(name: "Carp", className: "Fishes", description: "Carp are various species of oily[1] freshwater fish from the family Cyprinidae, a very large group of fish native to Europe and Asia.", image: #imageLiteral(resourceName: "carp_animal"))
        animals.append(carp)

        let catfish = Animal(name: "Catfish", className: "Fishes", description: "Catfish (or catfishes; order Siluriformes or Nematognathi) are a diverse group of ray-finned fish. Named for their prominent barbels, which resemble a cat's whiskers, catfish range in size and behavior from the three largest species, the Mekong giant catfish from Southeast Asia, the wels catfish of Eurasia and the piraíba of South America, to detritivores (species that eat dead material on the bottom), and even to a tiny parasitic species commonly called the candiru, Vandellia cirrhosa.", image: #imageLiteral(resourceName: "catfish_animal"))
        animals.append(catfish)

        return animals
    }

    static func generateRandomAnimalsByClasses() -> [[Animal]] {
        let animals = generateRandomAnimals()
        var classAnimals: [String: [Animal]] = [:]

        for item in animals {
            if var animalsByClass = classAnimals[item.className] {
                animalsByClass.append(item)
                classAnimals[item.className] = animalsByClass
            } else {
                classAnimals[item.className] = [item]
            }
        }
        return Array(classAnimals.values)
    }
}












