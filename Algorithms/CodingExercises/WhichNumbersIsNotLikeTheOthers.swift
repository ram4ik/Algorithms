//
//  WhichNumbersIsNotLikeTheOthers.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 05.01.2021.
//

import Foundation

class WhichNumbersIsNotLikeTheOthers {
    
    func unique(_ arr: [Double]) -> Double {
        let newArr = arr.sorted()
        return newArr[0] == newArr[1] ? newArr.last! : newArr.first!
    }
}
