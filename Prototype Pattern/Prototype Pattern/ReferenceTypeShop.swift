//
//  ReferenceTypeShop.swift
//  Prototype Pattern
//
//  Created by don chen on 2017/1/29.
//  Copyright © 2017年 Don Chen. All rights reserved.
//

import Foundation

class ReferenceTypeShop {
    var name:String
    var place:String
    
    init(name:String, place:String) {
        self.name = name
        self.place = place
    }
    func printDetails() {
        print("\(name) is at \(place)")
    }
}
