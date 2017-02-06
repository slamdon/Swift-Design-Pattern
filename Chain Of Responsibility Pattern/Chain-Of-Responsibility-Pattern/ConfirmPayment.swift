//
//  ConfirmPayment.swift
//  Chain-Of-Responsibility-Pattern
//
//  Created by don chen on 2017/1/22.
//  Copyright © 2017年 don chen. All rights reserved.
//

import Foundation

struct Payment {
    let name:String
    let amount:Int
    let usage:String
}

class TeamLeader {
    func confirm(payment:Payment) {
        if payment.amount <= 1000 {
            print("Team Leader 同意了 \(payment.name) 用來 \(payment.usage) 的費用報銷，金額為: \(payment.amount)")
        } else {
            print("Team Leader: 這個費用不該找我審核吧？")
        }
        
    }
}

class Chef {
    func confirm(payment:Payment) {
        if payment.amount > 1000 && payment.amount < 10000 {
            print("Chef 同意了 \(payment.name) 用來 \(payment.usage) 的費用報銷，金額為: \(payment.amount)")
        } else {
            print("Chef: 這個費用不該找我審核吧？")
        }
        
    }
}

class Boss {
    func confirm(payment:Payment) {
        if payment.amount > 10000 && payment.amount < 100000 {
            print("Boss 同意了 \(payment.name) 用來 \(payment.usage) 的費用報銷，金額為: \(payment.amount)")
        } else {
            print("Boss: 請問\(payment.name) 這個用來 \(payment.usage) 用途是？")
        }
        
    }
}
