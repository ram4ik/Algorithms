//
//  EqualizeTheArray.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 16.11.2020.
//

import Foundation

class EqualizeTheArray {
    
    func equalizeArray(arr: [Int]) -> Int {
        let dict = Dictionary(grouping: arr, by: { e in arr.filter { $0 == e }.count })
        let m = dict.max(by: { a, b in a.key < b.key })
        if let m = m {
            return arr.count - m.key
        }
        return 0
    }
}
