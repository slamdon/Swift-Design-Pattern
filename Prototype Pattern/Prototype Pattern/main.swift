//
//  main.swift
//  Prototype Pattern
//
//  Created by don chen on 2017/1/29.
//  Copyright © 2017年 Don Chen. All rights reserved.
//

import Foundation

print("value type copy")
let valueTypeShopA = ValueTypeShop(name: "Shop A", place: "West")

var valueTypeShopB = valueTypeShopA
valueTypeShopB.name = "Shop B"
valueTypeShopB.place = "West"

valueTypeShopA.printDetails()
valueTypeShopB.printDetails()

print("---------")
print("reference type copy")
// 如果使用reference type, Swift將會創建一個指向該對象的引用而不是複製這個對象。
let referenceShopC = ReferenceTypeShop(name: "Shop C", place: "West")

let referenceShopD = referenceShopC
referenceShopD.name = "Shop C"
referenceShopD.place = "West"

referenceShopC.printDetails()
referenceShopD.printDetails()
