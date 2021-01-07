//
//  ExtendingTheArrayPrototype.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 07.01.2021.
//

import Foundation

class ExtendingTheArrayPrototype {
    
}

extension Array where Element == Int {
    
    var squared: [Int] { return map { $0 * $0 } }
    
    var cubed: [Int] { return map { $0 * $0 * $0 } }
    
    func divisible(by n: Int) -> [Int] { return filter { $0 % n == 0 } }
    
    func strictly(above n: Int) -> [Int] { return filter { $0 > n } }
    
    func strictly(below n: Int) -> [Int] { return filter { $0 < n } }
}
