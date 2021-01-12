//
//  SpellingItOut.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 12.01.2021.
//

import Foundation

class SpellingItOut {
    
    func spelling(_ str: String) -> [String] {
        
        var ans:[String]=[]
        var s=""
        
        for i in str {
            s+=String(i)
            ans.append(s)
        }
        return ans
    }
}
