//
//  main.swift
//  Visitor Pattern
//
//  Created by don chen on 2017/1/27.
//  Copyright © 2017年 Don Chen. All rights reserved.
//

import Foundation

let woodComputerShop = WoodComputerShop(revenue: 8000)
let woodBicycleShop = WoodBicycleShop(revenue: 7500)
let woodFurnitureShop = WoodFurnitureShop(revenue: 15000)

let woodMall = WoodMall(shops: woodComputerShop, woodBicycleShop, woodFurnitureShop)
let woodRevenue = woodMall.calculateRevenue()
print("Wood Mall 一共盈利 \(woodRevenue)")

print("-------------")
let stoneComputerShop = StoneComputerShop(revenue: 8000)
let stoneBicycleShop = StoneBicycleShop(revenue: 7500)
let stoneFurnitureShop = StoneFurnitureShop(revenue: 15000)

let stoneMall = StoneMall(shops: stoneComputerShop, stoneBicycleShop, stoneFurnitureShop)
let shopVisitor = ShopVisitor()
stoneMall.accept(visitor: shopVisitor)
print("Stone Mall 一共盈利 \(shopVisitor.totalRevenue)")
