//
//  OldLibrary.swift
//  Adapter Pattern
//
//  Created by Don on 2017/1/9.
//  Copyright © 2017年 Don. All rights reserved.
//

import Foundation

class OldLibraryBook {
    fileprivate var name:String
    fileprivate var kind:String
    
    init(name:String, kind:String) {
        self.name = name
        self.kind = kind
    }
    
    func getName() -> String {
        return name
    }
    
    func getKind() -> String {
        return kind
    }
    
}

class OldLibraryDirectory {
    fileprivate var items:[String: OldLibraryBook]
    
    init() {
        items = ["gone girl": OldLibraryBook(name:"gone girl", kind:"novel"),
                "the martian" : OldLibraryBook(name: "the martian", kind: "novel")
        ]
    }
    
    func getItems() -> [String: OldLibraryBook] {
        return items
    }
    
}
