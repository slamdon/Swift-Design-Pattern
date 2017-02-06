//
//  Visitor.swift
//  Visitor Pattern
//
//  Created by don chen on 2017/1/27.
//  Copyright © 2017年 Don Chen. All rights reserved.
//

import Foundation

protocol StoneShop {
    func accept(visitor:Visitor)
}

protocol Visitor {
    func visit(shop:StoneComputerShop)
    func visit(shop:StoneBicycleShop)
    func visit(shop:StoneFurnitureShop)
    
}

/*
 * 抽成規則
 * WoodComputerShop 5%
 * WoodBicycleShop 15%
 * WoodFurnitureShop 25%
 *
 */
class ShopVisitor: Visitor {
    var totalRevenue:Float = 0
    
    func visit(shop: StoneComputerShop) {
        totalRevenue += shop.revenue * 0.05
    }
    
    func visit(shop: StoneBicycleShop) {
        totalRevenue += shop.revenue * 0.15
    }
    
    func visit(shop: StoneFurnitureShop) {
        totalRevenue += shop.revenue * 0.25
    }
    
}
