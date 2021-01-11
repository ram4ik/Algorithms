//
//  ContainsDuplicate.swift
//  Algorithms
//
//  Created by ramil on 11.01.2021.
//

import Foundation

class ContainsDuplicate {
    
    func containsDuplicate(_ arr: [Int]) -> Bool {
        
        var dict = [Int: Int]()
        for item in arr {
            if dict[item] != nil {
                return true
            } else {
                dict[item] = 1
            }
        }
        return false
    }
}
