//
//  Car.swift
//  Mediator Pattern
//
//  Created by Don on 2017/1/12.
//  Copyright © 2017年 Don. All rights reserved.
//

import Foundation

struct Position {
    var x:Int
}

class Car: Peer {
    var name:String
    var currentPosition:Position
    var mediator:Mediator
    
    init(name:String, pos:Position, mediator: Mediator) {
        self.name = name
        self.currentPosition = pos
        self.mediator = mediator
        
        mediator.registerPeer(peer: self)
    }
    
    func checkIsOtherCarsTooClose(position: Position) -> Bool {
        return abs(position.x - self.currentPosition.x) < 5
    }
    
    func changePosition(newPosition:Position) {
        self.currentPosition = newPosition
        print("\(name) 移動到了 \(self.currentPosition.x)")
        
        if(mediator.changePosition(peer: self, pos: self.currentPosition)) {
            print("\(name) 太靠近其他車了，慢一點)")
        }
    }
    
}

