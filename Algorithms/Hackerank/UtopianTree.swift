//
//  UtopianTree.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 14.11.2020.
//

import Foundation

class UtopianTree {
    
    func utopianTree(n: Int) -> Int {
        var height = 0
        for cycle in 0...n {
            if cycle == 0 {
                height = 1
            } else if cycle % 2 == 0 {
                height += 1
            } else {
                height *= 2
            }
        }
        return height
    }
}
