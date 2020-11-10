//
//  HurdleRace.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 10.11.2020.
//

import Foundation

class HurdleRace {
    
    func hurdleRace(k: Int, height: [Int]) -> Int {
        
        let higher = height.filter { $0 > k }
        if height.count == 0 { return 0 }
        
        let max = higher.max() ?? 0
        
        return max - k
    }
}
