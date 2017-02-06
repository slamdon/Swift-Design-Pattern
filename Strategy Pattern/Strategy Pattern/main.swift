//
//  main.swift
//  Strategy Pattern
//
//  Created by don chen on 2017/1/26.
//  Copyright © 2017年 don chen. All rights reserved.
//

import Foundation

let adventureA = AdventureA(adventureName: "Adventure A")
adventureA.attack()



let adventureB = AdventureB(name: "Adventure B")

// 不是用策略
adventureB.attackWith(strategy: nil)

// 使用rock Strategy
let rockStrategy = RockStrategy()
adventureB.attackWith(strategy: rockStrategy)
