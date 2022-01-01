//
//  PascalsTriangle.swift
//  Algorithms
//
//  Created by ramil on 01.01.2022.
//

import Foundation

class PascalsTriangle {
    
    func solve(_ numRows: Int) -> [[Int]] {
        
        guard numRows > 0 else {
            return []
        }
        if numRows == 1 { return [[1]]}
        
        var result = [[Int]]()
        result.reserveCapacity(numRows)
        result.append([1])
        
        for x in 1..<numRows {
            var newRow = [1]
            let prevRow = result[x - 1]
            
            for j in 1..<prevRow.count {
                let sum = prevRow[j] + prevRow[j - 1]
                newRow.append(sum)
            }
            
            newRow.append(1)
            result.append(newRow)
        }
        
        return result
    }
}
