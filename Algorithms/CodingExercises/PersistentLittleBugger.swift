//
//  PersistentLittleBugger.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 07.01.2021.
//

import Foundation

class PersistentLittleBugger {
    
    func bugger(_ num: Int) -> Int {
        
        if (num < 10){return 0}
        else {
            var n = num
            var m = 1
            
            while (n>0) {
                m = m*(n%10)
                n/=10
            }
            return 1+bugger(m)
        }
    }
}
