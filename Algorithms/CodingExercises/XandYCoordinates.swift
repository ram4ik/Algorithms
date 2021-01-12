//
//  XandYCoordinates.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 12.01.2021.
//

import Foundation

class XandYCoordinates {
    
    func convertCartesian(_ x: [Int], _ y: [Int]) -> [[Int]] {
        var retArray = [[Int]]()
        
        for index in 0...x.count-1 {
            var tempArray = [Int]()
            tempArray.append(x[index])
            tempArray.append(y[index])
            retArray.append(tempArray)
        }
        return retArray
    }
}
