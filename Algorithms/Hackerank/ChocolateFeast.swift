//
//  ChocolateFeast.swift
//  Algorithms
//
//  Created by ramil on 19.11.2020.
//

import Foundation

class ChocolateFeast {
    
    func chocolateFeast(n: Int, c: Int, m: Int) -> Int {
        
        let cb = n / c
        var ec = cb
        var w = cb
        
        while w >= m {
            let nb = w / m
            ec = ec + nb
            w = (w % m) + nb
        }
        
        return ec
    }
}
