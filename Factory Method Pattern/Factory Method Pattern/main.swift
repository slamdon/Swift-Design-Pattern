//
//  main.swift
//  Factory Method Pattern
//
//  Created by don chen on 2017/3/4.
//  Copyright © 2017年 Don Chen. All rights reserved.
//

import Foundation

let orderList = [1,3,5,7,9,12,15,18]

let factory = ProductFactory.shared
var products = [Product]()
for order in orderList {
    let product = factory.createProduct(biscuitCount: order)
    products.append(product)
}

for product in products {
    print(product.name + " - Price: " + "\(product.price)")
}

