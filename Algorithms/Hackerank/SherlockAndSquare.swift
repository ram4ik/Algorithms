//
//  SherlockAndSquare.swift
//  Algorithms
//
//  Created by ramil on 24.11.2020.
//

import Foundation

class SherlockAndSquare {
    
    func squares(a: Int, b: Int) -> Int {
        var c = 0
        var sa = Int(sqrt(Double(a)))
        var msa = sa + sa
        while msa <= b {
            if msa >= a { c += 1 }
            sa += 1
            msa = sa + sa
        }
        return c
    }
}
