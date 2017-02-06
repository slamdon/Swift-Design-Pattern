//
//  main.swift
//  Decorator Pattern
//
//  Created by don chen on 2017/1/15.
//  Copyright © 2017年 don chen. All rights reserved.
//

import Foundation

let account = CustomerAccount(name: "Don")

account.addPurchase(purchase: Purchase(product: "Sandwich", price: 10))
account.addPurchase(purchase: Purchase(product: "Coffee", price: 20))

account.addPurchase(purchase: PurchaseWithGiftWrap(purchase: PurchaseWithDelivery(purchase: Purchase(product: "Chocolate", price: 30))))

account.showAccount()
