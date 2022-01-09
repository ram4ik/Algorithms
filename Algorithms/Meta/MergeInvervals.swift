//
//  MergeInvervals.swift
//  Algorithms
//
//  Created by ramil on 09.01.2022.
//

import Foundation

class MergeInvervals {
    
    func solve(_ input: [[Int]]) -> [[Int]] {
        
        guard input.count > 1 else {
            return []
        }
        
        // nlog
        let sortedInput = input.sorted(by: {item1, item2 in
            return item1[0] < item2[0]
        })
        
        var result = [[Int]]()
        result.reserveCapacity(input.count)
        
        result.append(sortedInput[0])
        
        for i in 1..<sortedInput.count {
            let current = sortedInput[i]
            let lastInterval = result.last!
            
            if current[0] >= lastInterval[0] && current[0] <= lastInterval[1] {
                // Change last interval
                _ = result.removeLast()
                result.append([
                    min(current[0], lastInterval[0]),
                    max(current[1], lastInterval[1])
                ])
            } else {
                result.append(current)
            }
        }
        
        return result
    }
}
