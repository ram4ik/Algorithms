//
//  PickingNumbers.swift
//  Algorithms
//
//  Created by ramil on 02.12.2020.
//

import Foundation

class PickingNumbers {
    
    func pickingNumbers(a: [Int]) -> Int {
        var result: [Int] = []
        
        var leftList: [Int] = []
        var rightList: [Int] = []
        
        
        for index in 0...a.count-1 {
            let currentNumber = a[index]
            
            for number in a {
                if number == currentNumber || number == currentNumber + 1 {
                    rightList.append(number)
                }
                
                if number == currentNumber || number == currentNumber - 1 {
                    leftList.append(number)
                }
            }
            
            let list = rightList.count > leftList.count ? rightList : leftList
            if list.count > result.count { result = list }
            
            leftList = []
            rightList = []
        }
        
        return result.count
    }
}
