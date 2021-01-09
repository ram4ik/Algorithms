//
//  PerfectSquarePatch.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 09.01.2021.
//

import Foundation

class PerfectSquarePatch {
    
    func squarePatch(_ n: Int) -> [[Int]] {
        
        if n == 0 {
            return [[]]
        }
        return Array(repeating: Array(repeating: n, count: n) , count: n)
    }
}
