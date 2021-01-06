//
//  LeftSideRightSide.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 06.01.2021.
//

import Foundation

class LeftSideRightSide {
    
    func leftSide(_ arr: [Int]) -> [Int] {
        var result = [0]
        var count = 0
        
        for i in 1..<arr.count{
            count = 0
            for j in 0...i-1{
                if (arr[i]>arr[j]) {
                    count+=1
                }
            }
            result.append(count)
        }
        return result
    }

    func rightSide(_ arr: [Int]) -> [Int] {
        var result = [Int]()
        var count = 0
        
        for i in 0..<arr.count-1{
            count = 0
            for j in i+1...arr.count-1 {
                if (arr[i]>arr[j]) {
                    count+=1
                }
            }
            result.append(count)
        }
        result.append(0)
        return result
    }
}
