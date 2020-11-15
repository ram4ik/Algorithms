//
//  ModifiedKaprekarNumbers.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 15.11.2020.
//

import Foundation

class ModifiedKaprekarNumbers {
    
    func kaprekarNumbers(p: Int, q: Int) -> [Int] {

        var ra: [Int] = []
        for number in p...q {
            if number == 1 {
                ra.append(number)
                continue
            }
            let d = String(number).count
            let sn = number * number
            let ssn = String(sn)
            
            let offset = ssn.count - d
            let ri = ssn.index(ssn.startIndex, offsetBy: offset)
            let l = ssn[ssn.startIndex..<ri]
            let r = ssn[ri..<ssn.endIndex]
            
            if let rn = Int(r), let ln = Int(l) {
                let c = rn + ln
                if c == number { ra.append(c) }
            }
        }
        ra.sort()
    
        return ra
    }
}
