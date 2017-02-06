//
//  Purchase.swift
//  Decorator Pattern
//
//  Created by don chen on 2017/1/15.
//  Copyright © 2017年 don chen. All rights reserved.
//

import Foundation


class Purchase {
    private let product:String
    private let price:Float
    
    init(product:String, price:Float) {
        self.product = product
        self.price = price
        
    }
    
    var description:String {
        return product
    }
    
    var totalPrice:Float {
        return price
    }
    
}
