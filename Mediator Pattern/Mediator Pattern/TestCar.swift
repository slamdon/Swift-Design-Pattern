//
//  TestCar.swift
//  Mediator Pattern
//
//  Created by Don on 2017/1/12.
//  Copyright © 2017年 Don. All rights reserved.
//

import Foundation

struct TestPosition {
    var x:Int
}

class TestCar {
    var carName:String
    var currentPosition:TestPosition
    private var otherCars:[TestCar]
    
    init(carName:String, position:TestPosition) {
        self.carName = carName
        self.currentPosition = position
        self.otherCars = [TestCar]()
    }
    
    // 加入關注的汽車對象
    func addCarsInArea(cars:TestCar...) {
        for car in cars {
            otherCars.append(car)
        }
    }
    
    // 當有車輛改變位置時，檢查是不是太靠近了。
    func checkIsOtherCarsTooClose(car:TestCar) -> Bool {
        return abs(currentPosition.x - car.currentPosition.x) < 5
    }
    
    // 更新目前車輛的位置
    func changePosition(newPosition:TestPosition) {
        self.currentPosition = newPosition
        
        for car in otherCars {
            if car.checkIsOtherCarsTooClose(car: self) {
                print("\(carName), 慢一點，太靠近 \(car.carName) 了")
            }
        }
        print("\(carName) 移動到了位置 \(currentPosition.x)")
    }
    
}
