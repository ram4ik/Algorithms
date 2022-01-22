//
//  ContainerWithMostWater.swift
//  Algorithms
//
//  Created by ramil on 22.01.2022.
//

import Foundation

class ContainerWithMostWater {
    
    func getMaxArea(_ height: [Int]) -> Int {
        
        guard !height.isEmpty else { return -1 }
        
        var maxArea = 0
        var left = 0
        var right = height.count - 1
        
        while left < right {
            // Re-calc maxArea
            let minHeight = min(height[left], height[right])
            let currentHeight = minHeight * (right - left)
            maxArea = max(maxArea, currentHeight)
            
            // Move points
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        
        return maxArea
    }
}
