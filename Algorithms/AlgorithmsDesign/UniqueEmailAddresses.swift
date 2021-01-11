//
//  UniqueEmailAddresses.swift
//  Algorithms
//
//  Created by ramil on 11.01.2021.
//

import Foundation

class UniqueEmailAddresses {
    
    func getUniqueAddresses(_ list: [String]) -> Int {
        if list.isEmpty { return -1 }
        
        var uniqueEmails = Set<String>()
        for item in list {
            let emailParts = item.split(separator: "@").map { String($0) }
            var localName = emailParts[0]
            let domainName = emailParts[1]
            
            localName = localName.replacingOccurrences(of: ".", with: "")
            if let idx = localName.range(of: "+") {
                localName = String(localName[..<idx.lowerBound])
            }
            uniqueEmails.insert("\(localName)@\(domainName)")
        }
        return uniqueEmails.count
    }
}
