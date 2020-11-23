//
//  LibraryFine.swift
//  Algorithms
//
//  Created by ramil on 23.11.2020.
//

import Foundation

class LibraryFine {
    
    func libraryFine(d1: Int, m1: Int, y1: Int, d2: Int, m2: Int, y2: Int) -> Int {
        var fine = 0
        let sameYear = y1 <= y2
        let sameMonth = m1 <= m2
        let sameDay = d1 <= d2
        
        if y1 < y2 { return fine }
        else if sameYear && m1 < m2 { return fine }
        else if sameYear && sameMonth && sameDay { return fine }
        else if sameYear && sameMonth && d1 > d2 { fine = 15 * (d1 - d2) }
        else if sameYear && m1 > m2 { fine = 500 * (m1 - m2) }
        else if !sameYear { fine = 10_000 }
        return fine
    }
}
