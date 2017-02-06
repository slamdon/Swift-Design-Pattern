//
//  StoneBakery.swift
//  Proxy-Pattern
//
//  Created by don chen on 2017/1/20.
//  Copyright © 2017年 don chen. All rights reserved.
//

import Foundation

struct StoneSpecial {
    var name:String
    var price:Float
    var amount:Int
    
}

protocol StoneBakeryDataSource {
    func todaySpecial() -> [StoneSpecial]
}

protocol StoneBakeryDelegate {
    func didOrderItem(name:String, amount:Int)
}

class StoneBakery {
    var name:String
    var dataSource:StoneBakeryDataSource?
    var delegate:StoneBakeryDelegate?
    
    init(name:String) {
        self.name = name
        
        let chef = StoneChef()
        dataSource = chef
        
        let waiter = StoneWaiter()
        delegate = waiter
        
    }
    
    func showTodaySpecial() {
        print("\(name) 今日特色：")
        
        let items = getTodaySpecial()
        
        for item in items {
            print("\(item.name), 價格 \(item.price), 數量 \(item.amount)")
        }
    }
    
    func getTodaySpecial() -> [StoneSpecial] {
        var items = [StoneSpecial]()
        if let list = dataSource?.todaySpecial() {
            items = list
        }
        
        return items
    }
    
    func orderItem(name:String,amount:Int) {
        delegate?.didOrderItem(name: name, amount: amount)
    }
}
