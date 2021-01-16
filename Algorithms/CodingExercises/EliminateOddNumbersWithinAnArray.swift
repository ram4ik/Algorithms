//
//  EliminateOddNumbersWithinAnArray.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 16.01.2021.
//

import Foundation

class EliminateOddNumbersWithinAnArray {
    
    func noOdds(_ arr: [Int]) -> [Int] {
        var a: [Int] = Array()
        
        for elem in arr{
            if (elem % 2 == 0) {
                a.append(elem)
            }
        }
        return a
    }
}
