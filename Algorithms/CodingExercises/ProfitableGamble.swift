//
//  ProfitableGamble.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 09.01.2021.
//

import Foundation

class ProfitableGamble {
    
    func profitableGamble(_ prob: Float, _ prize: Float, _ pay: Float) -> Bool {

        return prob * prize > pay
    }
}
