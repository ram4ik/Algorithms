//
//  FindTheIndex.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 09.01.2021.
//

import Foundation

class FindTheIndex {
    
    func find_index(_ arr: [String], _ str: String) -> Int {
        var index = 0
        
        for string in arr {
            if string == str {
                return index
            }
            index += 1
        }
        return index
    }
}
