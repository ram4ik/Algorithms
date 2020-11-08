//
//  BillDivision.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 08.11.2020.
//

import Foundation

class BillDivision {
    
    func bonAppetit(bill: [Int], k: Int, b: Int) -> String {
        var result = ""
        let totalSum = bill.reduce(0) { $0 + $1 }
        let sharedSum = totalSum - bill[k]
        let annasCharge = sharedSum / 2
        let charge = annasCharge - b
        
        if charge < 0 {
            result = "\(charge * -1)"
        } else {
            result = "Bon Appetit"
        }
        return result
    }
}
