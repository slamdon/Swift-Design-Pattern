
//
//  Services.swift
//  Decorator Pattern
//
//  Created by don chen on 2017/1/15.
//  Copyright © 2017年 don chen. All rights reserved.
//

import Foundation

class PurchaseWithDelivery: BasePurchaseDecorator {
    override var description:String {
        return "\(super.description) + 運送"
    }
    
    override var totalPrice:Float {
        return super.totalPrice + 5
    }
}

class PurchaseWithGiftWrap: BasePurchaseDecorator {
    override var description:String {
        return "\(super.description) + 禮盒包裝"
    }
    
    override var totalPrice:Float {
        return super.totalPrice + 7.5
    }
}

class PurchaseWithCard: BasePurchaseDecorator {
    override var description:String {
        return "\(super.description) + 卡片"
    }
    
    override var totalPrice: Float {
        return super.totalPrice + 3.5
    }
}

class BasePurchaseDecorator: Purchase {
    private let wrappedPurchase: Purchase
    
    init(purchase:Purchase) {
        wrappedPurchase = purchase
        super.init(product: purchase.description, price: purchase.totalPrice)
        
    }
}
