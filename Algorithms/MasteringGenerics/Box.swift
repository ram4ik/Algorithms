//
//  Box.swift
//  Algorithms
//
//  Created by ramil on 15.04.2021.
//

import Foundation

class Box<T>: Storage {
    
    typealias Item = T
    
    var items = [T]()
    
    func store(item: Item) {
        items.append(item)
    }
    
    func retrive(index: Int) -> Item {
        return items[index]
    }
}
