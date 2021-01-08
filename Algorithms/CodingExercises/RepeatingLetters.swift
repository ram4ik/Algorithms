//
//  RepeatingLetters.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 08.01.2021.
//

import Foundation

class RepeatingLetters {
    
    func doubleChar(_ str: String) -> String {
        var a = ""
        
        for e in str {
            a+=String(e)+String(e)
        }
        return a
    }
}
