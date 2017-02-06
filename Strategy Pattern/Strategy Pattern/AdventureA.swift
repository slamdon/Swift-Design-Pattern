//
//  AdventureA.swift
//  Strategy Pattern
//
//  Created by don chen on 2017/1/26.
//  Copyright © 2017年 don chen. All rights reserved.
//

import Foundation

class AdventureA {
    private let name:String
    
    init(adventureName:String) {
        name = adventureName
    }
    
    func attack() {
        print("冒險者 \(name) 進行了 普通攻擊")
    }
    
    func rockAttack() {
        print("冒險者 \(name) 進行了 石頭拋射攻擊")
    }
    
    func waterAttack() {
        print("冒險者 \(name) 進行了 噴水攻擊")
    }
    
    func rushAttack() {
        print("冒險者 \(name) 進行了 衝撞攻擊")
    }
}
