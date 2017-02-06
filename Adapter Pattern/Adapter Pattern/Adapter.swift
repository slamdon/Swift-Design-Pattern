//
//  Adapter.swift
//  Adapter Pattern
//
//  Created by Don on 2017/1/8.
//  Copyright © 2017年 Don. All rights reserved.
//

import Foundation

//class NewCompanyDirectoryAdapter: EmployeeDataSource {
//    private let directory:NewCompanyDirectory

//    init() {
//        directory = NewCompanyDirectory()
//    }
//    
//    var employees:[Employee] {
//        return directory.getStaff().values.map({ sv -> Employee in
//            return Employee(name: sv.getName(), title: sv.getJob())
//        })
//    }
//    
//    func searchByName(name: String) -> [Employee] {
//        return createEmployees(filter: { (sv: NewCompanyMember) -> Bool in
//            return sv.getName().range(of: name) != nil
//        })
//    }
//    
//    func searchByTitle(title: String) -> [Employee] {
//        return createEmployees(filter: {(sv: NewCompanyMember) -> Bool in
//            return sv.getJob().range(of: title) != nil
//        })
//    }
//    
//    private func createEmployees(filter filterClosure:((NewCompanyMember) -> Bool)) -> [Employee] {
//        directory.getStaff().filter{ }
//        
//        return directory.getStaff().map{ entry -> Employee in
//            return Employee(name: entry.getName(), title: entry.getJob())
//            }.filter {
        
//    }
    
    
//}
