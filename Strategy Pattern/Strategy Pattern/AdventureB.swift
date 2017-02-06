//
//  AdventureB.swift
//  Strategy Pattern
//
//  Created by don chen on 2017/1/26.
//  Copyright © 2017年 don chen. All rights reserved.
//

import Foundation

class AdventureB {
    private let name:String
    
    init(name:String) {
        self.name = name
    }
    
    func attackWith(strategy:Strategy?) {
        if strategy != nil {
            let way = strategy!.attack()
            print("冒險者 \(name) 進行了 \(way) 攻擊")
        } else {
            print("冒險者 \(name) 進行了 普通 攻擊")
        }
        
    }
    
}
