//
//  AllOccurrencesOfAnElementInAnArray.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 09.01.2021.
//

import Foundation

class AllOccurrencesOfAnElementInAnArray {
    
    func getIndices(_ arr: [Int], _ el: Int) -> [Int] {
        var a: [Int] = []
        
        for x in 0...arr.count-1{
            if (arr[x]==el)
            {a.append(x)}}
        return a
    }
}
