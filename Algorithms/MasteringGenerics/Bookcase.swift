//
//  Bookcase.swift
//  Algorithms
//
//  Created by ramil on 15.04.2021.
//

import Foundation

class Bookcase: Storage {
    
    private var book = [Book]()
    
    func store(item: Book) {
        book.append(item)
    }
    
    func retrive(index: Int) -> Book {
        return book[index]
    }
}
