//
//  CountOnesInBinaryRepresentationOfInteger.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 08.01.2021.
//

import Foundation

class CountOnesInBinaryRepresentationOfInteger {
    
    func countOnes(_ num: Int) -> Int {
        var sum = 0
        var n = num
        
        while (n>0) {
            if (n%2==1){sum+=1}
            n/=2
        }
        return sum
    }
}
