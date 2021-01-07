//
//  EncodeMorse.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 07.01.2021.
//

import Foundation

class EncodeMorse {
    
    func encodeMorse(_ str: String) -> String {
        let chars = str
        var result = [String]()
        
        for char in chars {
            for (key, value) in charToMorse {
                if char == key {
                    result.append(value)
                }
            }
        }
        return result.joined(separator: " ")
    }
    
    let charToMorse: [Character : String] = [
        "A": ".-",
        "B": "-...",
        "C": "-.-.",
        "D": "-..",
        "E": ".",
        "F": "..-.",
        "G": "--.",
        "H": "....",
        "I": "..",
        "J": ".---",
        "K": "-.-",
        "L": ".-..",
        "M": "--",
        "N": "-.",
        "O": "---",
        "P": ".--.",
        "Q": "--.-",
        "R": ".-.",
        "S": "...",
        "T": "-",
        "U": "..-",
        "V": "...-",
        "W": ".--",
        "X": "-..-",
        "Y": "-.--",
        "Z": "--..",
        "a": ".-",
        "b": "-...",
        "c": "-.-.",
        "d": "-..",
        "e": ".",
        "f": "..-.",
        "g": "--.",
        "h": "....",
        "i": "..",
        "j": ".---",
        "k": "-.-",
        "l": ".-..",
        "m": "--",
        "n": "-.",
        "o": "---",
        "p": ".--.",
        "q": "--.-",
        "r": ".-.",
        "s": "...",
        "t": "-",
        "u": "..-",
        "v": "...-",
        "w": ".--",
        "x": "-..-",
        "y": "-.--",
        "1": ".----",
        "2": "..---",
        "3": "...--",
        "4": "....-",
        "5": ".....",
        "6": "-....",
        "7": "--...",
        "8": "---..",
        "9": "----.",
        "0": "-----",
        "&" : ".-...",
        "@" : ".--.-.",
        "," : "--..--",
        "!" : "-.-.--",
        ".": ".-.-.-",
        "?": "..--..",
        "/": "-..",
        "+":".-.-.",
        "-":"-....-",
        ":": "---...",
        "'": ".----.",
        " ": " "
    ]
}