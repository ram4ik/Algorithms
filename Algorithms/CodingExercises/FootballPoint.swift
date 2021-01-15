//
//  FootballPoint.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 15.01.2021.
//

import Foundation

class FootballPoint {
    
    func footballPoints(_ wins: Int, _ draws: Int, _ losses: Int) -> Int {

        return wins*3+draws
    }
}
