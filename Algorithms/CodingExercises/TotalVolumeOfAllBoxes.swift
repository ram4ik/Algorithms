//
//  TotalVolumeOfAllBoxes.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 07.01.2021.
//

import Foundation

class TotalVolumeOfAllBoxes {
    
    func totalVolume(_ boxes: [Int]...) -> Int {
        var sum = 0
        var v = 1
        
        for box in boxes{
            for element in box{
                v = v*element
            }
            sum = sum + v
            v=1
        }
        return sum
    }
}
