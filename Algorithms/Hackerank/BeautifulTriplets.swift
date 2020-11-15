//
//  BeautifulTriplets.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 15.11.2020.
//

import Foundation

class BeautifulTriplets {
    
    func beautifulTriplets(d: Int, arr: [Int]) -> Int {
        let a = arr
        var bt = 0
        if arr.count < 3 { return bt }
        
        for idx in 0...a.count-3 {
            let i = a[idx]
            
            for it in (idx+1)...a.count-2 {
                let j = a[it]
                
                let ji = j - i
                if ji != d { continue }
                
                for ith in (it+1)...a.count-1 {
                    let k = a[ith]
                    
                    let kj = k - j
                    if kj != d { continue }
                    
                    bt += 1
                }
            }
        }
        return bt
    }
}
