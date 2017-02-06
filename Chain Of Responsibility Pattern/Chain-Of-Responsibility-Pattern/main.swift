//
//  main.swift
//  Chain-Of-Responsibility-Pattern
//
//  Created by don chen on 2017/1/22.
//  Copyright © 2017年 don chen. All rights reserved.
//

import Foundation

let payments = [
    Payment(name:"Don", amount:75000, usage:"購買麵包設備"),
    Payment(name:"Howard", amount:33000, usage:"購買高級調味料"),
    Payment(name:"Jerry", amount:7500, usage:"購買進口桿麵棍"),
    Payment(name:"Jack", amount:2500, usage:"購買麵粉"),
    Payment(name:"Oliver", amount:300, usage:"購買瓦斯"),
    Payment(name:"ES", amount:100000, usage:"購買生產線")
]

let teamLeader = TeamLeader()
let chef = Chef()
let boss = Boss()

for payment in payments {
    if payment.amount <= 1000 {
        teamLeader.confirm(payment: payment)
        
    } else if payment.amount < 10000 {
        chef.confirm(payment: payment)
        
    } else {
        boss.confirm(payment: payment)
        
    }
}

print("======== with chain of responsibility pattern ======")

if let chain = Transmitter.createChain() {
    for payment in payments {
        chain.confirm(payment: payment)
    }
}


