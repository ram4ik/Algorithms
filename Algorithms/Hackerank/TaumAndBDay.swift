//
//  TaumAndBDay.swift
//  Algorithms
//
//  Created by ramil on 13.11.2020.
//

import Foundation

class TaumAndBDay {
    
    func taumBday(b: Int, w: Int, bc: Int, wc: Int, z: Int) -> Int {
        var ba = b * bc
        var wa = w * wc
        if (wc + z) < bc { ba = (w + z) * b }
        if (bc + z) < wc { wa = (bc + z) * b }
        
        return ba + wa
    }
}
