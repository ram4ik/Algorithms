//
//  StaircaseOfRecursion.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 04.01.2021.
//

import Foundation

class StaircaseOfRecursion {
    
    func waysToClimb(_ n: Int) -> Int {
        
        if (n <= 1) { return 1 }
        else {
            return waysToClimb(n - 1) + waysToClimb(n - 2)
        }
    }
}
