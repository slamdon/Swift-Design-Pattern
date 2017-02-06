//
//  StoneMall.swift
//  Visitor Pattern
//
//  Created by don chen on 2017/1/27.
//  Copyright © 2017年 Don Chen. All rights reserved.
//

import Foundation

class StoneComputerShop: StoneShop {
    let revenue:Float
    
    init(revenue:Float) {
        self.revenue = revenue
    }
    
    func accept(visitor: Visitor) {
        visitor.visit(shop: self)
    }
}

class StoneBicycleShop: StoneShop {
    let revenue:Float
    
    init(revenue:Float) {
        self.revenue = revenue
    }
    
    func accept(visitor: Visitor) {
        visitor.visit(shop: self)
    }
}

class StoneFurnitureShop: StoneShop {
    let revenue:Float
    
    init(revenue:Float) {
        self.revenue = revenue
    }
    
    func accept(visitor: Visitor) {
        visitor.visit(shop: self)
    }
}

class StoneMall {
    let shops:[StoneShop]
    
    init(shops:StoneShop...) {
        self.shops = shops
    }
    
    // 上下文類，通過accept方法，將訪問者傳遞給對象
    func accept(visitor: Visitor) {
        for shop in shops {
            shop.accept(visitor: visitor)
        }
    }
}
