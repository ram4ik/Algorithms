//
//  SaveThePrisoner.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 26.11.2020.
//

import Foundation

class SaveThePrisoner {
    
    func saveThePrisoner(n: Int, m: Int, s: Int) -> Int {
        if m + s - 1 < n { return m + s - 1 }
        let los = m - (n - (s - 1))
        if los > n {
            let lo = los % n
            if lo == 0 { return n }
            else { return lo }
        }
        if los == 0 { return n }
        return los
    }
}
