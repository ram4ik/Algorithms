//
//  VowelReplacer.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 09.01.2021.
//

import Foundation

class VowelReplacer {
    
    func replaceVowels(_ str: String, _ char: String) -> String {
        
        let vowels = ["a", "e", "i", "o", "u"]
        var s = ""
        
        for charac in str {
            if vowels.contains(String(charac)) {
                s += String(char)
            } else {
                s += String(charac)
            }
        }
        return s
    }
}
