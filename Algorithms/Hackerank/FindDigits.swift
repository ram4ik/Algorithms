//
//  FindDigits.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 11.11.2020.
//

import Foundation

class FindDigit {
    
    func findDigit(n: Int) -> Int {
        var no = n
        var r = 0
        while no > 0 {
            let d = no % 10
            no = no / 10
            if d != 0 && n % d == 0 { r += 1 }
        }
        return r
    }
}
