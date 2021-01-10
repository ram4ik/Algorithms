//
//  FilterOutStringFromAnArray.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 10.01.2021.
//

import Foundation

class FilterOutStringFromAnArray {
    
    func filterArray(_ arr: [Any]) -> [Int] {
        return arr.compactMap { $0 as? Int }
    }
}
