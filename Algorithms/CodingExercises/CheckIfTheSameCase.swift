//
//  CheckIfTheSameCase.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 16.01.2021.
//

import Foundation

class CheckIfTheSameCase {
    
    func sameCase(_ str: String) -> Bool {

        return str.uppercased() == str || str.lowercased() == str
    }
}
