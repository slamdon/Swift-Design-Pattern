//
//  StoneFireStation.swift
//  Observer Pattern
//
//  Created by Don on 2017/1/10.
//  Copyright © 2017年 Don. All rights reserved.
//

import Foundation

class StoneFireStation:Observer {
    func notify(item: String) {
        notifyFiremanTodaySpecial(item: item)
    }
    
    func notifyFiremanTodaySpecial(item:String) {
        print("notified fireman today's special \(item)")
    }
    
}
