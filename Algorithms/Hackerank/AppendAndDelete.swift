//
//  AppendAndDelete.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 07.12.2020.
//

import Foundation

class AppendAndDelete {
    
    func appendAndDelete(s: String, t: String, k: Int) -> String {
        
        var mui = -1
        for i in 0...s.count-1 {
            if i == t.count { break }
            let ci = s.index(s.startIndex, offsetBy: i)
            if s[ci] == t[ci] { mui = i }
            else { break }
        }
        
        if mui == -1 {
            if s.count + t.count <= k { return "Yes" }
        }
        
        let los = s.count - (mui + 1)
        let lot = t.count - (mui + 1)
        
        let mn = los + lot
        if mn == k {
            return "Yes"
        } else if mn < k && (k - mn) % 2 == 0 {
            return "Yes"
        } else if mn < k && (k - s.count) >= t.count {
            return "Yes"
        } else {
            return "No"
        }
    }
}
