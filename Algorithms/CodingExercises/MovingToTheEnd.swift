//
//  MovingToTheEnd.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 07.01.2021.
//

import Foundation

class MovingToTheEnd {
    
    func moveToEnd(_ arr: [Int], _ el: Int) -> [Int] {
        var g = [Int]()
        var other = [Int]()
        
        for ele in arr{
            if (ele==el){g.append(ele)}
            else {other.append(ele)}
        }
        return other+g
    }
}
