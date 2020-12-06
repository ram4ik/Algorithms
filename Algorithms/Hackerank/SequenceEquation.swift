//
//  SequenceEquation.swift
//  Algorithms
//
//  Created by ramil on 06.12.2020.
//

import Foundation

class SequenceEquation {
    
    func permutationEquation(p: [Int]) -> [Int] {
        
        return (1...p.count).map { x in
            if let firstIndex = p.firstIndex(where: { $0 == x}) {
                let firstIndexUp = firstIndex + 1
                if let secondIndex = p.firstIndex(where: { $0 == firstIndexUp}) {
                    return secondIndex + 1
                } else { return 0 }
            } else { return 0 }
        }
    }
}
