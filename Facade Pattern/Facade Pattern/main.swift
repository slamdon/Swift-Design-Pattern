//
//  main.swift
//  Facade Pattern
//
//  Created by Don on 2017/1/13.
//  Copyright © 2017年 Don. All rights reserved.
//

import Foundation

let map = TreasureMap()
let ship = Ship()
let member = Member()

let treasureLocation = map.findTresure(type: TreasureMap.Tresures.gold)

// convert from map to ship coordinates
let sequence:[Character] = ["A", "B", "C", "D", "E", "F", "G"]
let eastWestPos = sequence.index(of: treasureLocation.gridLetter)
let shipTarget = Ship.ShipLocation(NorthSouth: Int(treasureLocation.gridNumber), EastWest: eastWestPos!)


// relocate ship
ship.moveToLocation(location: shipTarget, callback: {location in
    member.performAction(action: .digForGold, callback: { prize in
        print("挖到了 Gold 價值 \(prize) ")
    })
})



let facade = StoneFacade()
let prize = facade.getTreasure(type: .gold)
print("挖到了 Gold 價值 \(prize)")

