//
//  StoneLibrary.swift
//  Adapter Pattern
//
//  Created by Don on 2017/1/9.
//  Copyright © 2017年 Don. All rights reserved.
//

import Foundation

struct StoneBook {
    var name:String
    var category:String
}

protocol StoneLibraryDataSource {
    var books:[StoneBook] { get }
    func searchByName(name:String) -> [StoneBook]
    func searchByCategory(category:String) -> [StoneBook]
    
}
