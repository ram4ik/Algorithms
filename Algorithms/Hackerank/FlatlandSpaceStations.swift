//
//  FlatlandSpaceStations.swift
//  Algorithms
//
//  Created by ramil on 30.11.2020.
//

import Foundation

class FlatlandSpaceStations {
    
    func flatlandSpaceStations(n: Int, c: [Int]) -> Int {
        if n == c.count { return 0 }
        if c.count == 1 { return n - 1 }
        
        var md = 0
        let cc = c.sorted()
        
        for i in 0...c.count - 2 {
            let fs = cc[i]
            let ii = i + 1
            let ss = cc[ii]
            let ds = ss - fs
            
            if (ds / 2) > md { md = (ds / 2) }
        }
        
        let max = cc[cc.count - 1]
        let r = n > max ? (n - max) - 1 : 0
        
        let min = cc[0]
        let rm = 0 < min ? min : 0
        
        return [rm, r].max() ?? 0
    }
}
