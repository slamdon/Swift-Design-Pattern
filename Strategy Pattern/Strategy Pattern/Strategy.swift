//
//  Strategy.swift
//  Strategy Pattern
//
//  Created by don chen on 2017/1/26.
//  Copyright © 2017年 don chen. All rights reserved.
//

import Foundation

protocol Strategy {
    func attack() -> String
}

class RushStrategy:Strategy {
    func attack() -> String {
        return "衝撞"
    }
}

class RockStrategy:Strategy {
    func attack() -> String {
        return "石頭拋射"
    }
}

class WaterStrategy:Strategy {
    func attack() -> String {
        return "噴水"
    }
}
