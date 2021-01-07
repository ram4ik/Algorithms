//
//  NextPrime.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 07.01.2021.
//

import Foundation

class NextPrime {
    
    func nextPrime(_ num: Int) -> Int {
        func isPrime(_ num: Int) -> Bool {
            guard num != 2 else { return true }
            guard num > 2 else { return false }
            
            for i in 2..<num {
                guard num % i != 0 else { return false }
            }
            return true
        }
        
        guard !isPrime(num) else { return num }
        var number = num
        
        while !isPrime(number) {
            number += 1
        }
        return number
    }
}
