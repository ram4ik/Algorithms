//
//  ATMPINCodeValidation.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 10.01.2021.
//

import Foundation

class ATMPINCodeValidation {
    
    func validatePIN(_ pin: String) -> Bool {
        var count = 0
        
        for num in pin {
            if (num < "0" || num > "9") {
                return false
            }
            count = count + 1
        }
        return count == 4 || count == 6
    }
}
