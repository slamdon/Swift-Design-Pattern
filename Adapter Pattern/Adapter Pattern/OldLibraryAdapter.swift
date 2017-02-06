//
//  OldLibraryAdapter.swift
//  Adapter Pattern
//
//  Created by Don on 2017/1/9.
//  Copyright © 2017年 Don. All rights reserved.
//

import Foundation

class OldLibraryAdapter:StoneLibraryDataSource {
    
    fileprivate let directory:OldLibraryDirectory
    
    init() {
        directory = OldLibraryDirectory()
    }
    
    var books:[StoneBook] {
        return directory.getItems().values.map { item -> StoneBook in
            return StoneBook(name: item.getName(), category: item.getKind())
        }
    }
    
    func searchByName(name:String) -> [StoneBook] {
        return createBooks(filter: {(oldBook:OldLibraryBook) -> Bool in
            return oldBook.getName().range(of: name) != nil
        })
    }
    
    func searchByCategory(category:String) -> [StoneBook] {
        return createBooks(filter: {(oldBook:OldLibraryBook) -> Bool in
            return oldBook.getKind().range(of: category) != nil
        })
    }
    
    // 查找出資料後，轉換成Book類型
    func createBooks(filter filterClosure:((OldLibraryBook) -> Bool)) -> [StoneBook] {
        var results = [StoneBook]()
        for item in directory.getItems().values {
            if filterClosure(item) {
                let aBook = StoneBook(name: item.getName(), category: item.getKind())
                 results.append(aBook)
            }
        }
        return results
        
    }
    
    
}
