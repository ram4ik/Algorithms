//
//  MajorityElementTwo.swift
//  Algorithms
//
//  Created by ramil on 11.01.2021.
//

import Foundation

class MajorityElementTwo {
    
    func majority(_ arr: [Int]) -> [Int] {
        var dict = [Int: Int]()
        var result = [Int]()
        
        for item in arr {
            if dict[item] != nil {
                dict[item] = dict[item]! + 1
            } else {
                dict[item] = 1
            }
        }
        
        for (key, value) in dict {
            if value > arr.count / 3 {
                result.append(key)
            }
        }
        
        return result
    }
}
