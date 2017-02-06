//
//  Transmitters.swift
//  Chain-Of-Responsibility-Pattern
//
//  Created by don chen on 2017/1/22.
//  Copyright © 2017年 don chen. All rights reserved.
//

import Foundation

class Transmitter {
    var nextLink:Transmitter?
    
    required init() {}
    
    func confirm(payment:Payment) {
        if nextLink != nil {
            nextLink?.confirm(payment: payment)
            
        } else {
            print("抵達責任鏈尾端，似乎用來 \(payment.usage) 的費用 沒有人可以處理")
            
        }
    }
    
    class func createChain() -> Transmitter? {
        
        let transmitterClasses:[Transmitter.Type] = [
            TeamLeaderTransmitter.self,
            ChefTransmitter.self,
            BossTransmitter.self
        ]
        
        var link:Transmitter?
        
        for tClass in transmitterClasses {
            let existingLink = link
            link = tClass.init()
            link?.nextLink = existingLink
            
        }
        
        return link
    }
    
}

class TeamLeaderTransmitter: Transmitter {
    
    override func confirm(payment:Payment) {
        if payment.amount <= 1000 {
            print("Team Leader 同意了 \(payment.name) 用來 \(payment.usage) 的費用報銷，金額為: \(payment.amount)")
        } else {
            super.confirm(payment: payment)
        }
    }
}

class ChefTransmitter: Transmitter {
    
    override func confirm(payment:Payment) {
        if payment.amount > 1000 && payment.amount < 10000 {
            print("Chef 同意了 \(payment.name) 用來 \(payment.usage) 的費用報銷，金額為: \(payment.amount)")
            
        } else {
            super.confirm(payment: payment)
            
        }
    }
}

class BossTransmitter: Transmitter {
    
    override func confirm(payment: Payment) {
        if payment.amount > 10000 && payment.amount < 100000 {
            print("Boss 同意了 \(payment.name) 用來 \(payment.usage) 的費用報銷，金額為: \(payment.amount)")
            
        } else {
            super.confirm(payment: payment)
            
        }
    }
}

