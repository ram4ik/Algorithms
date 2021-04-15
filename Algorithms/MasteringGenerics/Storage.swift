//
//  Storage.swift
//  Algorithms
//
//  Created by ramil on 15.04.2021.
//

import Foundation

protocol Storage {
    associatedtype Item
    func store(item: Item)
    func retrive(index: Int) -> Item
}
