//
//  DrawingBook.swift
//  Algorithms
//
//  Created by ramil on 04.12.2020.
//

import Foundation

class DrawingBook {
    
    func pageCount(n: Int, p: Int) -> Int {
        let site = (p % 2 == 0) ? (p / 2) + 1 : (p + 1) / 2
        let allSite = (n / 2) + 1
        
        if allSite % 2 == 0 {
            if site > allSite / 2 {
                return allSite - site
            } else {
                return site - 1
            }
        } else {
            let middle = (allSite / 2) + 1
            if middle == site { return site - 1 }
            else if site < middle {
                return site - 1
            } else {
                return allSite - site
            }
        }
    }
}
