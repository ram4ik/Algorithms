//
//  Palindrome.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 19.06.2021.
//

import Foundation

class Palindrome {
    
    func isValid(_ s: String) -> Bool {
        let arrayChar = Array(s)
        var first = 0
        var rear = arrayChar.count - 1
        
        while(first < rear) {
            if (!isAlpha(c: arrayChar[first])) {
                first += 1
                continue
            }
            
            if (!isAlpha(c: arrayChar[rear])) {
                rear -= 1
                continue
            }
            
            if (arrayChar[first].lowercased() != arrayChar[rear].lowercased()) {
                return false
            }
            first += 1
            rear -= 1
        }
        return true
    }
    
    private func isAlpha(c: Character) -> Bool {
        return (c.isLetter) || (c.isNumber)
    }
}
