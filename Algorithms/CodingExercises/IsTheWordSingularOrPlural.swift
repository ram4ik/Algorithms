//
//  IsTheWordSingularOrPlural.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 09.01.2021.
//

import Foundation

class IsTheWordSingularOrPlural {
    
    func isPlural(_ word: String) -> Bool {
        return word.hasSuffix("s");
    }
}
