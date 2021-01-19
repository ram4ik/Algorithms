//
//  Selection.swift
//  Algorithms
//
//  Created by ramil on 19.01.2021.
//

import Foundation

class Selection {
    
    func sort(tempArr: [Int]) -> [Int] {
        
        var arr = tempArr
        
        var min = 0
        var j = 0
        
        for i in 0..<arr.count {
            min = i
            j = i+1
            
            for j in stride(from: j, to: arr.count, by: 1) {
                
                if arr[min] > arr[j] {
                    min = j
                }
            }
            
            let temp = arr[i]
            arr[i] = arr[min]
            arr[min] = temp
        }
        
        return arr
    }
}
