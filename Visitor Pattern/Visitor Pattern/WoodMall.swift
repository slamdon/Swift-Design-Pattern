//
//  WoodMall.swift
//  Visitor Pattern
//
//  Created by don chen on 2017/1/27.
//  Copyright © 2017年 Don Chen. All rights reserved.
//

import Foundation

class WoodComputerShop {
    let revenue:Float
    
    init(revenue:Float) {
        self.revenue = revenue
    }
}

class WoodBicycleShop {
    let revenue:Float
    
    init(revenue:Float) {
        self.revenue = revenue
    }
}

class WoodFurnitureShop {
    let revenue:Float
    
    init(revenue:Float) {
        self.revenue = revenue
    }
}

/*
 * 抽成規則
 * WoodComputerShop 5%
 * WoodBicycleShop 15%
 * WoodFurnitureShop 25%
 *
 */
class WoodMall {
    let shops:[Any]
    
    init(shops:Any...) {
        self.shops = shops
    }
    
    func calculateRevenue() -> Float {
        return shops.reduce(0, { total, shop in
            if let computerShop = shop as? WoodComputerShop {
                return total + computerShop.revenue * 0.05
                
            } else if let bicycleShop = shop as? WoodBicycleShop {
                return total + bicycleShop.revenue * 0.15
                
            } else if let furnitureShop = shop as? WoodFurnitureShop {
                return total + furnitureShop.revenue * 0.25
                
            } else {
                return total
            }
            
        })
    }
    
}
