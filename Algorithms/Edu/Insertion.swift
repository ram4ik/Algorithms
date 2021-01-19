//
//  Insertion.swift
//  Algorithms
//
//  Created by ramil on 19.01.2021.
//

import Foundation

class Insertion {
    
    func sort(tempArr: [Int]) -> [Int] {
        
        var arr = tempArr
        
        var j = 0
        var key = 0
        
        for i in 1..<arr.count {
            j = i
            key = arr[i]
            
            for j in stride(from: j, to: 0, by: -1) {
                if arr[j-1] > key {
                    var temp = 0
                    temp = arr[j]
                    arr[j] = arr[j-1]
                    arr[j-1] = temp
                }
            }
        }
        
        return arr
    }
}
