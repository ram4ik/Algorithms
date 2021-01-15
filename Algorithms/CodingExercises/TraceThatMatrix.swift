//
//  TraceThatMatrix.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 15.01.2021.
//

import Foundation

class TraceThatMatrix {
    
    func trace(_ matrix: [[Int]]) -> Int {
        var sum = 0
        
        for i in 0..<matrix.count{
            sum+=matrix[i][i]
        }
        return sum
    }
}
