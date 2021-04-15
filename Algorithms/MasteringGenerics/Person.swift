//
//  Person.swift
//  Algorithms
//
//  Created by ramil on 15.04.2021.
//

import Foundation

struct Person: Equatable {
    let name: String
    let age: Int
    
    static func == (lhs: Person, rhs: Person) -> Bool {
        if lhs.name == rhs.name && lhs.age == rhs.age {
            return true
        } else {
            return false
        }
    }
}
