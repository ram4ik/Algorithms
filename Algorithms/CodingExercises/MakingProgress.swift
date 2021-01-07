//
//  MakingProgress.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 07.01.2021.
//

import Foundation

class MakingProgress {
    
    func progressDays(_ runs: [Int]) -> Int {
        var count = 0
        
        for x in 0..<runs.count-1{
            if (runs[x]<runs[x+1]) {
                count+=1
            }
        }
        return count
    }
}
