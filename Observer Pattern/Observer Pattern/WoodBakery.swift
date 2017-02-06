//
//  WoodBakery.swift
//  Observer Pattern
//
//  Created by Don on 2017/1/10.
//  Copyright © 2017年 Don. All rights reserved.
//

import Foundation

class WoodBakery {
    private let school = WoodSchool()
    private let fireStation = WoodFireStation()
    private let hospital = WoodHospital()
    
    func announceTodaySpecial(item:String) {
        school.notifyStudentsTodaySpecial(item: item)
        fireStation.notifyFiremanTodaySpecial(item: item)
        hospital.notifyDoctorsTodaySpecial(item: item)
    }
    
}
