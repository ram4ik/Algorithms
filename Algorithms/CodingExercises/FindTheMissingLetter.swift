//
//  FindTheMissingLetter.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 06.01.2021.
//

import Foundation

class FindTheMissingLetter {
    
    func missingLetter(_ arr: [Character]) -> Character {
        
        for i in 0..<(arr.count - 1) {
            let value = UnicodeScalar(String(arr[i]))!.value
            let nextChar = Character(UnicodeScalar(value + 1)!)
            
            if arr[i + 1] != nextChar {
                return nextChar
            }
        }
        return "!"
    }
}
