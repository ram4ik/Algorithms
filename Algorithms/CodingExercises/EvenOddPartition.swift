//
//  EvenOddPartition.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 07.01.2021.
//

import Foundation

class EvenOddPartition {
    
    func evenOddPartition(_ arr: [Int]) -> [[Int]] {
        
        let evens = arr.filter{$0 % 2 == 0}
        let odds = arr.filter{$0 % 2 == 1}
        
        return [evens, odds]
    }
}
