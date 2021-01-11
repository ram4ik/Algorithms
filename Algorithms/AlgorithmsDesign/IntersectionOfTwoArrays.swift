//
//  IntersectionOfTwoArrays.swift
//  Algorithms
//
//  Created by ramil on 11.01.2021.
//

import Foundation

class IntersectionOfTwoArrays {
    
    func intersection(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
        
        var set1 = Set<Int>()
        for item in arr1 {
            set1.insert(item)
        }
        
        var set2 = Set<Int>()
        for item in arr2 {
            set2.insert(item)
        }
        return Array(set1.intersection(set2))
    }
}
