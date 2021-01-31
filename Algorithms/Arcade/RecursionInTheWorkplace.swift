//
//  RecursionInTheWorkplace.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 31.01.2021.
//

import Foundation

extension String {
    func stripLeadingZone() -> String {
        if self.hasPrefix("00") {
            return self.deletingPrefix("00")
        } else if self.hasPrefix("0") {
            return self.deletingPrefix("0")
        }
        return self
    }
    
    func deletingPrefix(_ prefix: String) -> String {
        guard self.hasPrefix(prefix) else { return self }
        return String(self.dropFirst(prefix.count))
    }
}

public struct StringUtils {
    public static func stripLeadingZeros(from text: String) -> String {
        if text[text.startIndex] == "0" {
            return stripLeadingZeros(from: String(text.dropFirst()))
        }
        return text
    }
}
