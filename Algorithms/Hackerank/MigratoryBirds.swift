//
//  MigratoryBirds.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 04.11.2020.
//

import Foundation

class MigratoryBirds {
    
    func migratoryBirds(arr: [Int]) -> Int {
        let dict = Dictionary(grouping: arr, by: { $0 })
        
        var lowestId = dict.first!.key
        var highestSeeing = dict.first!.value.count
        
        for element in dict {
            if highestSeeing < element.value.count || (highestSeeing == element.value.count && lowestId > element.key) {
                lowestId = element.key
                highestSeeing = element.value.count
            }
        }
        return lowestId
    }
}
