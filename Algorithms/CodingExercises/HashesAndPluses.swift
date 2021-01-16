//
//  HashesAndPluses.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 16.01.2021.
//

import Foundation

class HashesAndPluses {
    
    func hashPlusCount(_ str: String) -> [Int] {
        
        var x: [Int] = []
        x.append(str.filter { $0 == "#" }.count)
        x.append(str.filter { $0 == "+" }.count)
        return x
    }
}
