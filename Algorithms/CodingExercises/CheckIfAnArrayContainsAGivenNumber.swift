//
//  CheckIfAnArrayContainsAGivenNumber.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 16.01.2021.
//

import Foundation

class CheckIfAnArrayContainsAGivenNumber {
    
    func check(_ arr: [Int], _ el: Int) -> Bool {
        
        for elem in arr{
            if elem == el {
                return true
            }
        }
        return false
    }
}
