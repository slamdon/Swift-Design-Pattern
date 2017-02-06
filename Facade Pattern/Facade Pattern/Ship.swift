//
//  Ship.swift
//  Facade Pattern
//
//  Created by Don on 2017/1/14.
//  Copyright © 2017年 Don. All rights reserved.
//

import Foundation

class Ship {
    struct ShipLocation {
        let NorthSouth:Int
        let EastWest:Int
    }
    
    var currentPosition:ShipLocation
    
    init() {
        currentPosition = ShipLocation(NorthSouth: 20, EastWest: 20)
    }
    
    func moveToLocation(location:ShipLocation, callback:(ShipLocation) -> Void) {
        currentPosition = location
        callback(currentPosition)
    }
    
}
