//
//  TallestSkyscraper.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 05.01.2021.
//

import Foundation

class TallestSkyscraper {
    
    func tallestSkyscraper(_ arr: [[Int]]) -> Int {
        
        var resultArr = [Int]()
        var height = 0
        
        for j in 0...arr[0].count - 1 {
            for i in 0...arr.count - 1 {
                height += (arr[i][j])
            }
            
            resultArr.append (height)
            height = 0
        }
        
        return resultArr.max()!
    }
}
