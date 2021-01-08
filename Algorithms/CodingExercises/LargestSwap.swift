//
//  LargestSwap.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 08.01.2021.
//

import Foundation

class LargestSwap {
    
    func largestSwap(_ num: Int) -> Bool {
        
        var a = num%10
        a = (a*10)+num/10
        
        return num>=a
    }
}
