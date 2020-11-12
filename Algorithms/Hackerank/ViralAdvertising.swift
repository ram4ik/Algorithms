//
//  ViralAdvertising.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 12.11.2020.
//

import Foundation

class ViralAdvertising {
    
    func viralAvertising(n: Int) -> Int {
        var r = 5
        var l = 0
        for _ in 1...n {
            l = l + (r / 2)
            r = (r / 2) * 3
        }
        return l
    }
}
