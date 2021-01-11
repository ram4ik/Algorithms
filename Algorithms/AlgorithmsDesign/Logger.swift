//
//  Logger.swift
//  Algorithms
//
//  Created by ramil on 11.01.2021.
//

import Foundation

class Logger {
    
    private var map = [String: Int]()
    
    func shouldPrintMessage(timestamp: Int, message: String) -> Bool {
        
        if let val = map[message] {
            let diff = timestamp - val
            if diff >= 10 {
                map[message] = timestamp
                return true
            }
            return false
        }
        
        map[message] = timestamp
        return true
    }
}
