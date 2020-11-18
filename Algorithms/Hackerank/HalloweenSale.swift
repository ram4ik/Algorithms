//
//  HalloweenSale.swift
//  Algorithms
//
//  Created by ramil on 18.11.2020.
//

import Foundation

class HalloweenSale {
    
    func howManyGames(p: Int, d: Int, m: Int, s: Int) -> Int {
        
        var os = p
        var wm = s
        var cg = 0
        
        while wm > 0 {
            wm -= os
            if wm > 0 { cg += 1 }
            
            if os > m && (os - d) >= m { os -= d }
            else {
                cg = cg + (wm / m)
                break
            }
        }
        return cg
    }
}
