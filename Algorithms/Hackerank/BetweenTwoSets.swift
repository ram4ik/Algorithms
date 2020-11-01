//
//  BetweenTwoSets.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 01.11.2020.
//

import Foundation

class BetweenTwoSets {
    
    func getTotal(a: [Int], b: [Int]) -> Int {
        var numbers = 0
        
        for number in 1...100 {
            var shallContinue = false
            
            for aValue in a {
                if number % aValue > 0 {
                    shallContinue = true
                    break
                }
            }
            if shallContinue { continue }
            
            for bValue in b {
                if bValue % number > 0 {
                    shallContinue = true
                    break
                }
            }
            if shallContinue { continue }
            numbers += 1
        }
        return numbers
    }
}
