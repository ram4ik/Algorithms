//
//  ServiceLane.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 21.11.2020.
//

import Foundation

class ServiceLane {
    
    func serviceLane(n: Int, width: [Int], cases: [[Int]]) -> [Int] {
        var r: [Int] = []
        
        for c in cases {
            let sp = c[0]
            let ep = c[1]
            var s = width[sp]
            
            for i in sp...ep {
                let v = width[i]
                if v < s { s = v }
            }
            r.append(s)
        }
        return r
    }
}
