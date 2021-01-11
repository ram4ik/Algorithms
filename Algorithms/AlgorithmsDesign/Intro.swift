//
//  Intro.swift
//  Algorithms
//
//  Created by ramil on 11.01.2021.
//

import Foundation

class Intro {
    
    func licenseKeyFormatter(s: String, k: Int) -> String {
        let arr = Array(s.uppercased())
        var i = arr.count - 1
        var count = 0
        var result = [Character]()
        
        while i >= 0 {
            let curr = arr[i]
            if curr == "-" {
                i -= 1
            } else if count != 0 && count % k == 0 {
                result.insert("-", at: 0)
                count = 0
            } else {
                result.insert(curr, at: 0)
                i -= 1
                count += 1
            }
        }
        return String(result)
    }
}
