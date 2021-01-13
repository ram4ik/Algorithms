//
//  GetTheSumOfAllArrayElements.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 13.01.2021.
//

import Foundation

class GetTheSumOfAllArrayElements {
    
    func getSum(of items: [Int]) -> Int {
        var sum = 0;
        
        for item in items {
            sum += item
        }
        return sum
    }
}
