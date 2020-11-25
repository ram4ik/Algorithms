//
//  JumpingOnTheCloudsRevisited.swift
//  Algorithms
//
//  Created by ramil on 25.11.2020.
//

import Foundation

class JumpingOnTheCloudsRevisited {
    
    func jumpingOnClouds(c: [Int], k: Int) -> Int {
        
        var p = k
        var e = 99
        
        if p == c.count { p = 0 }
        
        else {
            while p > 0 {
                e -= 1
                
                if c[p] == 1 { e -= 2 }
                p = p + k
                
                if p >= c.count { p = p - c.count }
            }
        }
        
        if c[p] == 1 { e -= 2 }
        
        return e
    }
}
