//
//  CutSticks.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 22.11.2020.
//

import Foundation

class CutSticks {
    
    func cutTheSticks(arr: [Int]) -> [Int] {
        var a = arr
        var r = [a.count]
        while a.count > 0 {
            var ss = a[0]
            a.forEach { if $0<ss {ss = $0}}
            a = a.compactMap {
                if $0 == ss { return nil }
                else { return $0 - ss }
            }
            if a.count == 0 { continue }
            else { r.append(a.count) }
        }
        return r
    }
}
