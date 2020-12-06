//
//  CircularArrayRotation.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 05.12.2020.
//

import Foundation

class CircularArrayRotation {
    
    func circularArrayRotation(a: [Int], k: Int, queries: [Int]) -> [Int] {
        let r = k > a.count ? k % a.count : k
        let ai = a.count - r
        
        return queries.map { i -> Int in
            var idx = ai + i
            if idx > a.count-1 { idx = idx - a.count }
            return a[idx]
        }
    }
}
