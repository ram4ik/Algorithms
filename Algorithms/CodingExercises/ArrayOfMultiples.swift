//
//  ArrayOfMultiples.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 10.01.2021.
//

import Foundation

class ArrayOfMultiples {
    
    func arrayOfMultiples(_ num: Int, _ length: Int) -> [Int] {
        var arr : [Int] = Array()
        
        for x in 1...length {
            arr.append(num*x)
        }
        return arr
    }
}
