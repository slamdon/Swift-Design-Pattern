//
//  StoneWaiter.swift
//  Proxy-Pattern
//
//  Created by don chen on 2017/1/20.
//  Copyright © 2017年 don chen. All rights reserved.
//

import Foundation

class StoneWaiter:StoneBakeryDelegate {
    
    func didOrderItem(name: String, amount: Int) {
        print("客人下單：\(amount) 份 \(name)")
    }
}
