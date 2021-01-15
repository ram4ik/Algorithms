//
//  ConcatenatingTwoIntegerArrays.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 15.01.2021.
//

import Foundation

class ConcatenatingTwoIntegerArrays {
    
    func concat(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
        
        return arr1+arr2
    }
    
    func concat2(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
        
        var concatArr = [Int]()
        concatArr.append(contentsOf: arr1)
        concatArr.append(contentsOf: arr2)
        
        return concatArr
    }
}
