//
//  CatsAndMouse.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 09.11.2020.
//

import Foundation

class CatsAndMouse {
    
    func catAndMouse(x: Int, y: Int, z: Int) -> String {
        let distanceA = z > x ? z - x : x - z
        let distanceB = z > y ? z - y : y - z
        
        if distanceA == distanceB {
            return "Mouse C"
        }
        
        if distanceA < distanceB {
            return "Cat A"
        } else {
            return "Cat B"
        }
    }
}
