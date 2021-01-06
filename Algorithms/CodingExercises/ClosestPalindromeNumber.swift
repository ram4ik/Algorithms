//
//  ClosestPalindromeNumber.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 06.01.2021.
//

import Foundation

class ClosestPalindromeNumber {
    
    func closestPalindrome(_ num: Int) -> Int {
        
        var next = num
        var nCount = 0
        var previous = num
        var pCount = 0
        
        while (!isPalindrome(next)){
            next+=1
            nCount+=1
        }
        
        while (!isPalindrome(previous)){
            previous-=1
            pCount+=1
        }
        if (pCount<=nCount){ return previous }
        else { return next }
    }

    func isPalindrome(_ num: Int) -> Bool {
        let arr = Array("\(num)")
        let ch = arr.count
        
        for i in 0..<ch/2{
            if (arr[i] != arr[arr.count-1-i]) {
                return false
            }
        }
        return true
    }
}
