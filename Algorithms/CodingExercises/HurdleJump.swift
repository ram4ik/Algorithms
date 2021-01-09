//
//  HurdleJump.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 09.01.2021.
//

import Foundation

class HurdleJump {
    
    func hurdleJump(_ hurdles: [Int], _ jumpHeight: Int) -> Bool {
        
        for elem in hurdles {
            if (elem>jumpHeight){return false}
        }
        return true
    }
}
