//
//  NumberLineJumps.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 01.11.2020.
//

import Foundation

class NumberLineJumps {
    
    func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
        
        if x1 < x2 && v1 < v2 { return "NO" }
        
        for index in 1...10_000 {
            let positionOne = x1 + v1 * index
            let positionTwo = x2 + v2 * index
            
            if positionOne < positionTwo && v1 < v2 { return "NO" }
            
            if positionOne == positionTwo { return "YES" }
        }
        return "No"
    }
}
