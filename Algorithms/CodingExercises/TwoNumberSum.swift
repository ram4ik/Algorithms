//
//  TwoNumberSum.swift
//  Algorithms
//
//  Created by ramil on 06.05.2021.
//

import Foundation

class TwoNumberSum {
    
    func contains(arr: [Int], sum: Int) -> [Int] {
        var hashMap: [Int] = []
        
        for num in arr {
            let potentialMatch = sum - num
            if hashMap.contains(potentialMatch) {
                return [potentialMatch, num]
            } else {
                hashMap.append(num)
            }
        }
        return hashMap
    }
}
