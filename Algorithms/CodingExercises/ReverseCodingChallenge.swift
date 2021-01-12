//
//  ReverseCodingChallenge.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 12.01.2021.
//

import Foundation

class ReverseCodingChallenge {
    
    func mysteryFunc(_ arr: [Int], _ num: Int) -> [Int] {
        var newArr = [Int]()
        
        for x in 0...arr.count-1{
            newArr.append(arr[x]%num)
        }
        return newArr
    }
}
