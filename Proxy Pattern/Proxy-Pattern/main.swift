//
//  main.swift
//  Proxy-Pattern
//
//  Created by don chen on 2017/1/20.
//  Copyright © 2017年 don chen. All rights reserved.
//

import Foundation

let woodBakery = WoodBakery(name: "Wood 1號店")
woodBakery.showTodaySpecial()

print("-----------------------")

woodBakery.orderItem(name: "法國麵包", amount: 5)
woodBakery.orderItem(name: "太陽餅", amount: 75)
woodBakery.orderItem(name: "草莓大福", amount: 100)

print("-----------------------")

let stoneBakery = StoneBakery(name: "Stone 1號店")
stoneBakery.showTodaySpecial()

print("-----------------------")

stoneBakery.orderItem(name: "法國麵包", amount: 10)
stoneBakery.orderItem(name: "太陽餅", amount: 120)
stoneBakery.orderItem(name: "草莓大福", amount: 330)
