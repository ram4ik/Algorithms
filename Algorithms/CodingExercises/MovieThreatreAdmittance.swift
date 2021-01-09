//
//  MovieThreatreAdmittance.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 09.01.2021.
//

import Foundation

class MovieThreatreAdmittance {
    
    func acceptIntoMovie(_ age: Double, _ isSupervised: Bool) -> Bool {
        
        if age >= 15 { return true }
        else if isSupervised { return true }
        else { return false }
    }
}
