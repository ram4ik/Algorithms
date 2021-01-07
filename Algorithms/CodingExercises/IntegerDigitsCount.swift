//
//  IntegerDigitsCount.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 07.01.2021.
//

import Foundation

class IntegerDigitsCount {
    
    func count(_ n: Int) -> Int {
        
        if (n/10==0){return 1}
        else {return 1+count(n/10)}
    }
}
