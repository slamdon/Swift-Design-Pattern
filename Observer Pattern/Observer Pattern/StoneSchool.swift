//
//  StoneSchool.swift
//  Observer Pattern
//
//  Created by Don on 2017/1/10.
//  Copyright © 2017年 Don. All rights reserved.
//

import Foundation

class StoneSchool:Observer {
    func notify(item: String) {
        notifyStudentsTodaySpecial(item: item)
    }
    
    func notifyStudentsTodaySpecial(item:String) {
        print("notified students today's special is \(item)")
    }
}
