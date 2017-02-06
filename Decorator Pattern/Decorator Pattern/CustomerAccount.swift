//
//  CustomerAccount.swift
//  Decorator Pattern
//
//  Created by don chen on 2017/1/15.
//  Copyright © 2017年 don chen. All rights reserved.
//

import Foundation

class CustomerAccount {
    
    let name:String
    var purchases = [Purchase]()
    
    init(name:String) {
        self.name = name
    }
    
    func addPurchase(purchase:Purchase) {
        self.purchases.append(purchase)
    }
    
    func showAccount() {
        var total:Float = 0
        print("購物車中包含：")
        for item in purchases {
            total += item.totalPrice
            print("商品 \(item.description) 價格 \(formatCurrencyString(number: item.totalPrice))")
        }
    }
    
    func formatCurrencyString(number:Float) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter.string(from: NSNumber(value: number))!
    }
}
