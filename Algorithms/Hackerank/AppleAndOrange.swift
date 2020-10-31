//
//  AppleAndOrange.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 31.10.2020.
//

import Foundation

class AppleAndOrange {
    
    func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> [Int] {
        
        var aResult = 0
        var oResult = 0
        
        for apple in apples {
            let landing = a + apple
            
            if landing >= s && landing <= t {
                aResult += 1
            }
        }
        
        for orange in oranges {
            let landing = b + orange
            
            if landing >= s && landing <= t {
                oResult += 1
            }
        }
        return [aResult, oResult]
    }
}
