//
//  BreakingTheRecords.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 01.11.2020.
//

import Foundation

class BreakingTheRecords {
    
    func breakingRecords(scores: [Int]) -> [Int] {
        var maxScore = scores[0]
        var minScore = scores[0]
        
        var brokeMax = 0
        var brokeMin = 0
        
        for score in scores {
            if score > maxScore {
                maxScore = score
                brokeMax += 1
                continue
            }
            if score < minScore {
                minScore = score
                brokeMin += 1
            }
        }
        return [brokeMax, brokeMin]
    }
}
