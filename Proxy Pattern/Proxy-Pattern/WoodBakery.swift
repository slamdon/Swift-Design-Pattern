//
//  WoodBakery.swift
//  Proxy-Pattern
//
//  Created by don chen on 2017/1/20.
//  Copyright © 2017年 don chen. All rights reserved.
//

import Foundation

struct WoodSpecial {
    var name:String
    var price:Float
    var amount:Int
    
}

class WoodBakery {
    var name:String
    
    init(name:String) {
        self.name = name
    }
    
    func showTodaySpecial() {
        print("\(name) 今日特色：")
        let items = getTodaySpecial()
        for item in items {
            print("\(item.name), 價格 \(item.price), 數量 \(item.amount)")
        }
    }
    
    func orderItem(name:String,amount:Int) {
        print("有客人下單：\(amount) 份 \(name)")
    }
    
    private func getTodaySpecial() -> [WoodSpecial] {
        var items = [WoodSpecial]()
        items.append(WoodSpecial(name: "法國麵包", price: 180, amount: 20))
        items.append(WoodSpecial(name: "蒜蓉麵包", price: 70, amount: 15))
        items.append(WoodSpecial(name: "太陽餅", price: 85, amount: 10))
        items.append(WoodSpecial(name: "草莓大福", price: 400, amount: 5))
        return items
    }
    
}
