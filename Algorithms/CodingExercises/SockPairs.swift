//
//  SockPairs.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 06.01.2021.
//

import Foundation

class SockPairs {
    
    func sockPairs(_ str: String) -> Int {
        
        var pairCount = 0
        var currentSock = ""
        
        for sock in Array(str).sorted() {
            if String(sock) == currentSock {
                pairCount += 1
                currentSock = ""
            } else {
                currentSock = String(sock)
            }
        }
        return pairCount
    }
}
