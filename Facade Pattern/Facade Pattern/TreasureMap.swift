//
//  TreasureMap.swift
//  Facade Pattern
//
//  Created by Don on 2017/1/14.
//  Copyright © 2017年 Don. All rights reserved.
//

import Foundation

class TreasureMap {
    
    enum Tresures {
        case gold
        case silver
        case bronze
    }
    
    struct MapLocation {
        let gridLetter: Character
        let gridNumber: Int
    }
    
    func findTresure(type:Tresures) -> MapLocation {
        switch type {
        case .gold:
            return MapLocation(gridLetter: "A", gridNumber: 0)
            
        case .silver:
            return MapLocation(gridLetter: "F", gridNumber: 17)
            
        case .bronze:
            return MapLocation(gridLetter: "O", gridNumber: 40)
        }
    }
}
