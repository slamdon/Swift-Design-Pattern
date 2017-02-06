//
//  Member.swift
//  Facade Pattern
//
//  Created by Don on 2017/1/14.
//  Copyright © 2017年 Don. All rights reserved.
//

import Foundation

class Member {
    enum Actions {
        case digForGold
        case digForSilver
        case digForBronze
    }
    
    func performAction(action:Actions, callback:(Int) -> Void) {
        var prizeValue = 0
        switch action {
        case .digForGold:
            prizeValue = 5000
            
        case .digForSilver:
            prizeValue = 2000
            
        case .digForBronze:
            prizeValue = 1000
            
        }
        
        callback(prizeValue)
    }
}
