//
//  AllAboutClosuresAdding.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 15.01.2021.
//

import Foundation

class AllAboutClosuresAdding {
    
    func addsNum(_ n: Int) -> (Int) -> Int {

        return {$0 + n}
    }
}
