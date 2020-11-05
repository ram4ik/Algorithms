//
//  DayOfTheProgrammer.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 05.11.2020.
//

import Foundation

class DayOfTheProgrammer {
    
    func dayOfProgrammer(year: Int) -> String {
        let dayOfProgrammer = 256
        var untilAugust = 243
        
        if year == 1918 { untilAugust -= 13 }
        else if year < 1918 && year % 4 == 0 { untilAugust += 1 }
        else if year % 400 == 0 || (year % 4 == 0 && year % 100 != 0) {
            untilAugust += 1
        }
        let leftOverDays = dayOfProgrammer - untilAugust
        let actualMonth = 9
        let result = String(
            format: "%02d.%02d.\(year)",
            leftOverDays,
            actualMonth
        )
        if year == 1918 { print(result) }
        return result
    }
}
