//
//  CountIslands.swift
//  Algorithms
//
//  Created by ramil on 01.01.2022.
//

import Foundation

class CountIslands {
    
    func countIslands(_ grid: [[String]]) -> Int {
        
        var numberOfIsland = 0
        var matrix = grid
        
        // Solution
        for i in 0..<matrix.count {
            let row = matrix[i]
            for j in 0..<row.count {
                let value = matrix[i][j]
                if value == "1" {
                    numberOfIsland += 1
                    
                    // Depth First Search (DFS)
                    search(i, j, &matrix)
                }
            }
        }
        
        
        return numberOfIsland
    }
    
    private func search(_ row: Int, _ col: Int, _ grid: inout[[String]]) {
        // Verify base case
        guard row >= 0, row < grid.count, col >= 0, col < grid[0].count else {
            return
        }
        
        guard grid[row][col] == "1" else {
            return
        }
        
        // Update value to 0
        grid[row][col] = "0"
        
        // Search all neighbors
        search(row + 1, col, &grid)
        search(row - 1, col, &grid)
        search(row, col + 1, &grid)
        search(row, col - 1, &grid)
    }
}
