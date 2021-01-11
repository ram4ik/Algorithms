//
//  MajorityElement.swift
//  Algorithms
//
//  Created by ramil on 11.01.2021.
//

import Foundation

class MajorityElement {
    
    func majority(_ arr: [Int]) -> Int {
        
        var majorityItem = arr[0]
        var counter = 0
        
        for item in arr {
            if item == majorityItem {
                counter += 1
            } else {
                counter -= 1
            }
            
            if counter == 0 {
                majorityItem = item
                counter = 1
            }
        }
        return majorityItem
    }
}
