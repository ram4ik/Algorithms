//
//  Bubble.swift
//  Algorithms
//
//  Created by ramil on 19.01.2021.
//

import Foundation

class Bubble {
    
    func selectionSort(arr: [Int]) -> [Int] {
        
        var tempArr = arr
        
        for i in 0..<arr.count {
            for j in 0..<(arr.count-i-1) {
                if tempArr[j] > tempArr[j+1] {
                    var temp = 0
                    temp = tempArr[j+1]
                    tempArr[j+1] = tempArr[j]
                    tempArr[j] = temp
                }
            }
        }
        
        return tempArr
    }
}
