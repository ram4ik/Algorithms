//
//  MatchstickHouses.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 12.01.2021.
//

import Foundation

class MatchstickHouses {
    
    func matchHouses(_ step: Int) -> Int {
        var result = 0
        
        if step == 0 { result = 0 }
        else if step == 1 { result = 6 }
        else if step > 1 { result = (step - 1) * 5 + 6 }
        
        return result
    }
}
