//
//  StoneFacade.swift
//  Facade Pattern
//
//  Created by Don on 2017/1/14.
//  Copyright © 2017年 Don. All rights reserved.
//

import Foundation

enum TreasureTypes {
    case gold
    case silver
    case bronze
}

class StoneFacade {
    private let map = TreasureMap()
    private let ship = Ship()
    private let member = Member()
    
    func getTreasure(type: TreasureTypes) -> Int {
        var prizeAmount = 0
        
        var treasureMapType:TreasureMap.Tresures
        var memberActionType:Member.Actions
        
        switch(type) {
        case .gold:
            treasureMapType = .gold
            memberActionType = .digForGold
            
        case .silver:
            treasureMapType = .silver
            memberActionType = .digForSilver
            
        case .bronze:
            treasureMapType = .bronze
            memberActionType = .digForBronze
        }
        
        let treasureLocation = map.findTresure(type: treasureMapType)
        
        // convert from map to ship coordinates
        let sequence:[Character] = ["A", "B", "C", "D", "E", "F", "G"]
        let eastWestPos = sequence.index(of: treasureLocation.gridLetter)
        let shipTarget = Ship.ShipLocation(NorthSouth: Int(treasureLocation.gridNumber), EastWest: eastWestPos!)
        
        // move ship
        ship.moveToLocation(location: shipTarget, callback: { location in
            self.member.performAction(action: memberActionType, callback: { prize in
                prizeAmount = prize
                
            })
        })
        
        return prizeAmount
        
    }
    
}
