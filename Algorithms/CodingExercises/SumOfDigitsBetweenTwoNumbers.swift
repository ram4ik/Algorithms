//
//  SumOfDigitsBetweenTwoNumbers.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 15.01.2021.
//

import Foundation

class SumOfDigitsBetweenTwoNumbers {
    
    private func sum(_ a: Int) -> Int {
        var ans = 0, n = a
        
        while n > 0 {
            ans += n % 10
            n /= 10
        }
        return ans
    }
    
    func sumDigits(_ a: Int, _ b: Int) -> Int {
        var ans = 0
        
        for n in a...b {
            ans += sum(n)
        }
        return ans
    }
}
