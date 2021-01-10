//
//  SliceOfPie.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 10.01.2021.
//

import Foundation

class SliceOfPie {
    
    func equalSlices(_ total: Int, _ people: Int, _ each: Int) -> Bool {
        
        return each*people<=total
    }
}
