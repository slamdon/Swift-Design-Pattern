//
//  StoneChef.swift
//  Proxy-Pattern
//
//  Created by don chen on 2017/1/20.
//  Copyright © 2017年 don chen. All rights reserved.
//

import Foundation

class StoneChef:StoneBakeryDataSource {
    
    func todaySpecial() -> [StoneSpecial] {
        var items = [StoneSpecial]()
        items.append(StoneSpecial(name: "法國麵包", price: 180, amount: 20))
        items.append(StoneSpecial(name: "蒜蓉麵包", price: 70, amount: 15))
        items.append(StoneSpecial(name: "太陽餅", price: 85, amount: 10))
        items.append(StoneSpecial(name: "草莓大福", price: 400, amount: 5))
        return items
    }
}
