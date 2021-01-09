//
//  CumulativeArraySum.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 09.01.2021.
//

import Foundation

class CumulativeArraySum {
    
    func cumulativeSum(_ arr: [Int]) -> [Int] {
        var a : [Int] = [];
        
        for i in 0..<arr.count {
            var sum = 0;
            
            for j in 0...i {
                sum += arr[j];
            }
            a.append(sum);
        }
        return a;
    }
}
