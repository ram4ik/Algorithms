//
//  ElectronicsShop.swift
//  Algorithms
//
//  Created by ramil on 03.12.2020.
//

import Foundation

class ElectronicsShop {
    
    func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
        
        let setKeyBoards = Set(keyboards)
        let setDrives = Set(drives)
        
        let filteredKeyBoards = setKeyBoards.filter { $0 < b}
        let filteredDrives = setDrives.filter { $0 < b }
        
        if filteredKeyBoards.count == 0 || filteredDrives.count == 0 { return -1 }
        
        var mostExpensive = 0
        for keyboard in filteredKeyBoards {
            for drive in filteredDrives {
                let sum = keyboard + drive
                if sum > mostExpensive && sum <= b {
                    mostExpensive = sum
                }
            }
        }
        
        return mostExpensive
    }
}
