//
//  QueueUsingStack.swift
//  Algorithms
//
//  Created by ramil on 15.12.2020.
//

import Foundation

class QueueUsingStack {
    
    var s1 = [Int](), s2 = [Int]()
    
    func engueue(data: Int) {
        s1.append(data)
    }
    
    func dequeue() -> Int {
        var x = -1
        if s2.isEmpty {
            if s1.isEmpty {
                return x
            } else {
                while !s1.isEmpty {
                    s2.append(s1.removeFirst())
                }
            }
        }
        x = s2.removeFirst()
        return x
    }
}
