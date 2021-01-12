//
//  PerfectNumber.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 12.01.2021.
//

import Foundation

class PerfectNumber {
    
    func checkPerfect(_ num: Int) -> Bool {
        
        var a = num-1
        var sum=0
        
        while (a>=1) {
            if (num%a==0){sum+=a}
            a-=1
        }
        return sum==num
    }
}
