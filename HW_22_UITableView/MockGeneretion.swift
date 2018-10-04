//
//  MockGeneretion.swift
//  HW_22_UITableView
//
//  Created by Oleg Dynnikov on 9/27/18.
//  Copyright © 2018 Oleg Dynnikov. All rights reserved.
//

import Foundation

struct MockGeneration {
    static func unitGeneration() -> [ArmedUnit] {
        var units = [ArmedUnit]()

        //Armored Forces
        let bulat = ArmedUnit(name: "BM BULAT", typeForces: "Armored Vehicles", description: "T-64BM BULAT Ukrainian army on use modernization, the designs incorporate the 'Knife' reactive armor that offers better performance dealing with tandem warheads than Russian Kontakt-5, new Ukrainian made 125 mm GUN KBA3, TO1-KO1ER night sight and capable to fire the Ukrainian Kombat anti-tank guided missile with tandem warhead.", image: #imageLiteral(resourceName: "t_64"))
        units.append(bulat)

        let oplot = ArmedUnit(name: "BM OPLOT-M", typeForces: "Armored Vehicles", description: "The newest and most sophisticated version of the T-84 is an upgraded version of the T-84 Oplot mounting more advanced armor, new electronic countermeasure systems, and others. One visible feature is the new PNK-6 panoramic tank sight.", image: #imageLiteral(resourceName: "oplot_m"))
        units.append(oplot)

        let btr3 = ArmedUnit(name: "BTR-3E", typeForces: "Armored Vehicles", description: "The BTR-3 is an 8×8-wheeled armored personnel carrier developed in 2000-2001 by an international consortium. The companies involved in the project include the Kharkiv Morozov Machine Building Design Bureau of Ukraine, the ADCOM MANUFACTURING Company of Abu-Dhabi, UAE, and the State Scientific Technical Centre of Artillery & Rifle Arms of Ukraine. Although somewhat similar in appearance to the Russian BTR-80, the BTR-3U is an all-new production vehicle rather than an update of the existing in-service vehicle.", image: #imageLiteral(resourceName: "btr_3e"))
        units.append(btr3)

        let btr4 = ArmedUnit(name: "BTR-4E", typeForces: "Armored Vehicles", description: "The BTR-4 is a 8x8 wheeled armoured personnel carrier (APC) designed in Ukraine by the Kharkiv Morozov Machine Building Design Bureau (SOE KMDB) as a private venture. The prototype, which was designed as a private venture, was unveiled at the Aviasvit 2006 exhibition held in Ukraine in June 2006.", image: #imageLiteral(resourceName: "btr-4"))
        units.append(btr4)

        let dozor = ArmedUnit(name: "DOZOR-B", typeForces: "Armored Vehicles", description: "The Dozor-B is also used by special units of the armed forces (quick reaction forces and military police) to carry out reconnaissance, patrolling, and peace-keeping operations, as well as being used as the main transportation vehicle under combat conditions (including NBC environment). In April 2016 Ukraine cancelled the procurement of all Dozor-B vehicles due to constant delays, manufacturing failures, and budget overruns.", image: #imageLiteral(resourceName: "dozor_b"))
        units.append(dozor)

        //Aircrafts
        let su25 = ArmedUnit(name: "SU-25M1", typeForces: "Aircrafts", description: "Su-25M1 - the Ukrainian version of the modernization of the Soviet jet attack aircraft Su-25", image: #imageLiteral(resourceName: "su_25"))
        units.append(su25)

        let su27 = ArmedUnit(name: "SU-27", typeForces: "Aircrafts", description: "The Sukhoi Su-27 (Russian: Сухой Су-27; NATO reporting name: Flanker) is a twin-engine supermaneuverable fighter aircraft designed by Sukhoi. It was intended as a direct competitor for the large United States fourth-generation fighters such as the Grumman F-14 Tomcat and F-15 Eagle, with 3,530-kilometre (1,910 nmi) range, heavy aircraft ordnance, sophisticated avionics and high maneuverability. The Su-27 was designed for air superiority missions, and subsequent variants are able to perform almost all aerial warfare operations. It was designed with the Mikoyan MiG-29 as its complement.", image: #imageLiteral(resourceName: "su_27"))
        units.append(su27)

        //Helicopters
        let mi24 = ArmedUnit(name: "MI-24", typeForces: "Helicopters", description: "The Mil Mi-24 (Russian: Миль Ми-24; NATO reporting name: Hind) is a large helicopter gunship, attack helicopter and low-capacity troop transport with room for eight passengers.[1] It is produced by Mil Moscow Helicopter Plant and has been operated since 1972 by the Soviet Air Force and its successors, along with more than 30 other nations.", image: #imageLiteral(resourceName: "mi_24"))
        units.append(mi24)

        let mi8 = ArmedUnit(name: "MI-8", typeForces: "Helicopters", description: "The Mil Mi-8 (Russian: Ми-8, NATO reporting name: Hip) is a medium twin-turbine helicopter, originally designed by the Soviet Union. In addition to its most common role as a transport helicopter, the Mi-8 is also used as an airborne command post, armed gunship, and reconnaissance platform. Along with the related, more powerful Mil Mi-17, the Mi-8 is among the world's most-produced helicopters, used by over 50 countries. As of 2015, it is the third most common operational military aircraft in the world.", image: #imageLiteral(resourceName: "mi_8"))
        units.append(mi8)

        return units
    }

    static func forcesGeneration() -> [TypeOfTroops] {
        let units = unitGeneration()
        var troops: [String: [ArmedUnit]] = [:]
        var types = [TypeOfTroops]()

        for item in units {
            var unitsByType = troops[item.typeForces] ?? []
            unitsByType.append(item)
            troops[item.typeForces] = unitsByType
        }
        for item in troops {
            let type = TypeOfTroops(name: item.key, units: item.value)
            types.append(type)
        }
        return types
    }
}




