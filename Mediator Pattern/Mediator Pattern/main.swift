//
//  main.swift
//  Mediator Pattern
//
//  Created by Don on 2017/1/11.
//  Copyright © 2017年 Don. All rights reserved.
//

import Foundation


// 舊系統測試
//let stoneTestCar = TestCar(carName: "Stone Car", position: TestPosition(x: 0))
//let woodTestCar  = TestCar(carName: "Wood Car", position: TestPosition(x:10))
//let ironTestCar  = TestCar(carName: "Iron Car", position: TestPosition(x:20))
//let waterTestCar = TestCar(carName: "Water Car", position: TestPosition(x:30))
//
//stoneTestCar.addCarsInArea(cars: woodTestCar, ironTestCar, waterTestCar)
//woodTestCar.addCarsInArea(cars: stoneTestCar, ironTestCar, waterTestCar)
//ironTestCar.addCarsInArea(cars: stoneTestCar, woodTestCar, waterTestCar)
//waterTestCar.addCarsInArea(cars: stoneTestCar, woodTestCar, ironTestCar)
//
//
//woodTestCar.changePosition(newPosition: TestPosition(x: 17))


// 加入 中介者模式後的測試
let mediator:Mediator = CarMediator()

let stoneCar = Car(name: "Stone Car", pos: Position(x:0), mediator: mediator)
let woodCar = Car(name: "Wood Car", pos: Position(x:10), mediator: mediator)
let ironCar = Car(name: "Iron Car", pos: Position(x:20),mediator: mediator)
let waterCar = Car(name: "Water Car", pos: Position(x:30), mediator: mediator)

woodCar.changePosition(newPosition: Position(x: 17))

