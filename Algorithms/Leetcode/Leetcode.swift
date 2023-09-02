//
//  Leetcode.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 02.09.2023.
//

import Foundation

class Leetcode {
    
    // https://leetcode.com/problems/container-with-most-water/
    func containerWithMostWater(_ height: [Int]) -> Int {
        guard height.count > 1 else { return 0 }
        
        var left = 0
        var right = height.count - 1
        var maxAmount = 0
        
        while left < right {
            let waterAmount = (right - left) * min(height[left], height[right])
            maxAmount = max(maxAmount, waterAmount)
            
            if height[left] <= height[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        return maxAmount
    }
    
    // https://leetcode.com/problems/move-zeroes/
    func moveZeroes(_ nums: inout [Int]) {
        var lastNonZeroFountAt = 0
        for i in 0..<nums.count {
            if nums[i] != 0 {
                nums.swapAt(lastNonZeroFountAt, i)
                lastNonZeroFountAt += 1
            }
        }
    }
}
