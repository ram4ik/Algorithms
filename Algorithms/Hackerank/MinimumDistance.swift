//
//  MinimumDistance.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 20.11.2020.
//

import Foundation

class MinimumDistance {
    
    func  minimumDistance(a: [Int]) -> Int {
        var distance: [Int] = []
        var hasResult = false
        
        for i in 0...a.count-1 {
            let n = a[i]
            let ni = i+1
            
            if ni == a.count { continue }
            
            for ii in ni...a.count-1 {
                let nn = a[ii]
                
                if n == nn {
                    hasResult = true
                    let r = ii - 1
                    distance.append(r)
                }
            }
        }
        if hasResult { return distance.min() ?? -1 }
        return -1
    }
}
