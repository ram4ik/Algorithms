//
//  BeautifulDaysAtTheMovies.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 28.11.2020.
//

import Foundation

class BeautifulDaysAtTheMovies {
    
    func beautifulDays(i: Int, j: Int, k: Int) -> Int {
        
        var bd = 0
        
        for day in i...j {
            var number = day
            
            let m = 10
            var r = 0
            while number > 0 {
                r = r * m
                r = r + number % 10
                number = number / 10
            }
            
            if (day - r) % k == 0 {bd += 1}
        }
        return bd
    }
}
