//
//  LeastCommonMultiple.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 07.01.2021.
//

import Foundation

class LeastCommonMultiple {
    
    func lcm(_ n1: Int, _ n2: Int) -> Int {
        var n = 2

        while n % n1 != 0 || n % n2 != 0 {
            n += 1
        }
        return n
    }
}
