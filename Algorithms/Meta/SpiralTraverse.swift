//
//  SpiralTraverse.swift
//  Algorithms
//
//  Created by ramil on 31.12.2021.
//

import Foundation

class SpiralTraverse {
    
    func spiralTraverse(_ matrix: [[Int]]) -> [Int] {
        
        var result = [Int]()
        
        let total = matrix[0].count * matrix.count
        
        var left = 0
        var top = 0
        var right = matrix[0].count - 1
        var bottom = matrix.count - 1
        
        while result.count < total {
            // Go left to right
            for col in stride(from: left, through: right, by: 1) {
                result.append(matrix[top][col])
            }
            
            // Go top to down
            for row in stride(from: top + 1, through: bottom, by: 1) {
                result.append(matrix[row][right])
            }
            
            // Go right to left
            for col in stride(from: right - 1, through: left, by: -1) {
                result.append(matrix[bottom][col])
            }
            
            // Go up
            for row in stride(from: bottom - 1, through: top + 1, by: -1) {
                result.append(matrix[row][left])
            }
            
            left += 1
            top += 1
            right -= 1
            bottom -= 1
        }
        
        return result
    }
}
