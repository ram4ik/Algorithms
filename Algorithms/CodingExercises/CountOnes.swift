//
//  CountOnes.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 12.01.2021.
//

import Foundation

class CountOnes {
    
    func countOnes(_ m: [[Int]]) -> Int {
        var count = 0
        
        for i in m {
            for j in i {
                if (j==1) {
                    count+=1
                }
            }
        }
        return count
    }
}
