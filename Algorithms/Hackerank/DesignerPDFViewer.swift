//
//  DesignerPDFViewer.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 01.12.2020.
//

import Foundation

class DesignerPDFViewer {
    
    func designerPdfView(h: [Int], word: String) -> Int {
        let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
        
        var highestHeight = 0
        
        for letter in word {
            let stringLetter = String(describing: letter)
            if let index = alphabet.firstIndex(where: { $0 == stringLetter }) {
                if highestHeight < h[index] {
                    highestHeight = h[index]
                }
            }
        }
        return highestHeight * word.count
    }
}
