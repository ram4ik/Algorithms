//
//  Quick.swift
//  Algorithms
//
//  Created by ramil on 19.01.2021.
//

import Foundation

class Quick {
    
    func sort(tempArr: [Int]) -> [Int] {
        
        let arr = tempArr
        
        var less = [Int]()
        var equal = [Int]()
        var greater = [Int]()
        
        if arr.count > 1 {
            let pivot = arr[0]
            
            for x in arr {
                if x < pivot {
                    less.append(x)
                }
                if x == pivot {
                    equal.append(x)
                }
                if x > pivot {
                    greater.append(x)
                }
            }
            return (sort(tempArr: less) + equal + sort(tempArr: greater))
        } else {
            return arr
        }
    
    }
}
