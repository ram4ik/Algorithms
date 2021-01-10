//
//  NDifference.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 10.01.2021.
//

import Foundation

class NDifference {
    
    func nDifferences(_ arr: [Int]) -> Int {
        var a: [Int]=Array()
        a=arr
        
        while (a.count>1){a = check(a)}
        return a[0]
    }
    
    func check(_ arr: [Int]) -> [Int] {
        var a: [Int]=Array()
        
        for x in 0...arr.count-2{
            a.append(arr[x+1]-arr[x])
        }
        return a
    }
}
