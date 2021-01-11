//
//  BuildQueueUsingStack.swift
//  Algorithms
//
//  Created by ramil on 11.01.2021.
//

import Foundation

class BuildQueueUsingStack {
    
    var s1 = [Int]()
    var s2 = [Int]()
    
    private func enqueue(data: Int) {
        s1.append(data)
    }
    
    private func dequeue() -> Int {
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
    
    var newArr = [Int]()
    
    func queueUsingStack(elements: [Int]) -> [Int] {
        
        let queue = BuildQueueUsingStack()
        for item in elements {
            queue.enqueue(data: item)
        }
        var value = queue.dequeue()
        while value != -1 {
            newArr.append(value)
            value = queue.dequeue()
        }
        return newArr
    }
}
 
