//
//  BigONotation.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 24.01.2021.
//

import Foundation

class BigONotation {
    
}

extension Array where Element: Comparable {
    
    // brute force approach...
    func lineSearch(for evalue: Element) -> Bool {
        
        // check all possible values
        for number in self {
            if number == evalue {
                return true
            }
        }
        return false
    }
}
