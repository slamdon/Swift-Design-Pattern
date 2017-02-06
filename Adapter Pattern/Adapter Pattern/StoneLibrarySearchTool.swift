//
//  StoneLibrarySearchTool.swift
//  Adapter Pattern
//
//  Created by Don on 2017/1/9.
//  Copyright © 2017年 Don. All rights reserved.
//

import Foundation

class StoneLibrarySearchTool {
    
    enum SearchType {
        case name
        case category
    }
    
    private var sources = [StoneLibraryDataSource]()
    
    var books:[StoneBook] {
        var results = [StoneBook]()
        for source in sources {
            results += source.books
        }
        return results
        
    }
    
    init(sources:[StoneLibraryDataSource]) {
        self.sources = sources
    }
    
    func search(text:String, type:SearchType) -> [StoneBook] {
        var results = [StoneBook]()
        for source in sources {
            results += type == .name ? source.searchByName(name: text) : source.searchByCategory(category: text)
        }
        return results
        
    }
    
    
}
