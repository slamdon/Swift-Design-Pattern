//
//  main.swift
//  Adapter Pattern
//
//  Created by Don on 2017/1/8.
//  Copyright © 2017年 Don. All rights reserved.
//

import Foundation

let searchTool = StoneLibrarySearchTool(sources: [ComputerScienceDB(), FruitDB(), OldLibraryAdapter()])

print("== list ==")
for book in searchTool.books {
    print(book.name)
}

print("== search ==")
for book in searchTool.search(text: "computer science", type: .category) {
    print(book.name)
}
