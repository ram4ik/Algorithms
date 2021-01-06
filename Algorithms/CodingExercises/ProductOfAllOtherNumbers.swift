//
//  ProductOfAllOtherNumbers.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 06.01.2021.
//

import Foundation

class ProductOfAllOtherNumbers {
    
    func getProducts(_ arr: [Int]) -> [Int] {
        
        var result : [Int] = []
        var position = 0
        
        for _ in arr {
            var product = 1
            var tmp = arr
            tmp.remove(at: position)
            
            for integer in tmp{
                product *= integer
            }
            
            result.append(product)
            position += 1
        }
        return result
    }
}
