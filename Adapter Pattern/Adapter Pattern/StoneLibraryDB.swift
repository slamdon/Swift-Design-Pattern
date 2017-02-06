//
//  StoneLibraryDB.swift
//  Adapter Pattern
//
//  Created by Don on 2017/1/9.
//  Copyright © 2017年 Don. All rights reserved.
//

import Foundation

class StoneLibraryDB:StoneLibraryDataSource {
    var books = [StoneBook]()
    
    func searchByName(name:String) -> [StoneBook] {
        return search({ book -> Bool in
            return book.name.range(of: name) != nil
        })
    }
    
    func searchByCategory(category:String) -> [StoneBook] {
        return search({ book -> Bool in
            return book.category.range(of: category) != nil
        })
    }
    
    private func search(_ selector:((StoneBook) -> Bool)) -> [StoneBook] {
        var results = [StoneBook]()
        for book in books {
            if selector(book) {
                results.append(book)
            }
        }
        return results
    }
    
}

class ComputerScienceDB:StoneLibraryDB {
    
    override init() {
        super.init()
        books.append(StoneBook(name: "Code Complete", category: "computer science"))
        books.append(StoneBook(name: "Algorithm", category: "computer science"))
    }
    
}

class FruitDB:StoneLibraryDB {
    
    override init() {
        super.init()
        
        books.append(StoneBook(name: "apple", category: "fruit"))
        books.append(StoneBook(name: "orange", category: "fruit"))
    }
}
