//
//  ProductFactory.swift
//  Factory Method Pattern
//
//  Created by don chen on 2017/3/4.
//  Copyright © 2017年 Don Chen. All rights reserved.
//

import Foundation

enum BoxType {
    case smallBox
    case bigBox
    case largeBox
}

class ProductFactory {
    static let shared = ProductFactory()
    private init(){}
    
    func createProduct(biscuitCount:Int) -> Product {
        switch biscuitCount {
        case 0...4:
            return SmallProduct(biscuitCount: biscuitCount)
        case 6...10:
            return BigProduct(biscuitCount: biscuitCount)
        default:
            return LargeProduct(biscuitCount: biscuitCount)
        }
    }
    
}

class Product {
    var name:String
    var box:BoxType
    var price:Float
    
    init(name:String, box:BoxType, biscuitCount:Int) {
        let price = Float(biscuitCount) * 5.0
        
        self.name = name
        self.box = box
        self.price = price
    }
}

class SmallProduct:Product {
    init(biscuitCount:Int) {
        super.init(name: "Small Product", box: .smallBox, biscuitCount: biscuitCount)
        
    }
}

class BigProduct:Product {
    init(biscuitCount:Int) {
        super.init(name: "Big Product", box: .bigBox, biscuitCount: biscuitCount)
        
    }
}

class LargeProduct:Product {
    init(biscuitCount:Int) {
        super.init(name: "Large Product", box: .largeBox, biscuitCount: biscuitCount)
        
    }
}
