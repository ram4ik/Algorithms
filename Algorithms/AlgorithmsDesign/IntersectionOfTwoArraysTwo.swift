//
//  IntersectionOfTwoArraysTwo.swift
//  Algorithms
//
//  Created by ramil on 11.01.2021.
//

import Foundation

class IntersectionOfTwoArraysTwo {
    
    func inter(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
        if arr1.count > arr2.count {
            return findIntersect(largerArr: arr1, smallArr: arr2)
        } else {
            return findIntersect(largerArr: arr2, smallArr: arr1)
        }
    }
    
    private func findIntersect(largerArr: [Int], smallArr: [Int]) -> [Int] {
        
        var dict = [Int: Int]()
        var result = [Int]()
        
        for item in largerArr {
            if dict[item] != nil {
                dict[item]! += 1
            } else {
                dict[item] = 1
            }
        }
        
        for item in smallArr {
            if dict[item] != nil {
                result.append(item)
                dict[item]! -= 1
                if dict[item]! == 0 {
                    dict[item] = nil
                }
            }
        }
        
        return result
    }
}
