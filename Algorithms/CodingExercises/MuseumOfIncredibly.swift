//
//  MuseumOfIncredibly.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 10.01.2021.
//

import Foundation

class MuseumOfIncredibly {
    
    func removeSmallest(_ arr: [Int]) -> [Int] {
        var arr1=arr
        
        if(!arr1.isEmpty) {
            arr1.remove(at:arr1.firstIndex(of:arr1.min()!)!)
        }
        return arr1
    }
}
