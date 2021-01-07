//
//  DigitDistance.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 07.01.2021.
//

import Foundation

class DigitDistance {
    
    func digitDistance(_ num1: Int, _ num2: Int) -> Int {
        var firstNum = num1
        var secondNum = num2
        var total = 0
        
        while(firstNum > 0) {
            total += abs(firstNum % 10 - secondNum % 10)
            firstNum = firstNum / 10
            secondNum = secondNum / 10
        }
        return total
    }
}
