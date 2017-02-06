//
//  main.swift
//  Observer Pattern
//
//  Created by Don on 2017/1/9.
//  Copyright © 2017年 Don. All rights reserved.
//

import Foundation

print("==== Wood City ====")
let woodBakery = WoodBakery()
woodBakery.announceTodaySpecial(item: "donutes")

print("==== Stone City ====")
let school = StoneSchool()
let fireStation = StoneFireStation()
let hospital = StoneFireStation()

let bakery = StoneBakery()
bakery.addObservers(observers: school, fireStation, hospital)
bakery.sendNotifications(item: "French bread")

print("----- remove fireStation -----")
bakery.removeObserver(observer: fireStation)
bakery.sendNotifications(item: "baguette")



var numbers = [1,2,3,4,5,6]
var newNumbers = numbers.filter{ $0 == 2 }
print(newNumbers)
