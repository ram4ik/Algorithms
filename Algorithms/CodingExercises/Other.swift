//
//  Other.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 08.01.2021.
//

import Foundation

class Other {
    
    func sortByLast(_ str: String) -> String {
        var words = [""]
        
        for char in str {
            if char == " " {
                words.append("")
            } else {
                words[words.count - 1].append(char)
            }
        }
        words.sort { $0.last! < $1.last! }
        return words.joined(separator: " ")
    }
    
    func isSmooth(_ sentence: String) -> Bool {
        var strArr = sentence.lowercased().components(separatedBy: " ")
        for i in 0...strArr.count - 2 {
            if (strArr[i].removeLast()) != (strArr[i + 1].removeFirst()) {
                return false
            }
        }
        return true
    }
    
    func josephus(_ n: Int, _ i: Int) -> Int {
        var soldiers = Array(1...n)
        var index = 0
        
        while soldiers.count != 1 {
            index = (index + i - 1) % soldiers.count
            soldiers.remove(at: index)
        }
        return soldiers[0]
    }
    
    func alliterationCorrect(_ sentence: String) -> Bool {
        var firstLet = Set<Character>()
        let sentStr = sentence.lowercased().components(separatedBy: " ")
        
        for words in sentStr {
            if String(words).count > 3 {
                firstLet.insert (words[words.startIndex])
            }
        }
        return firstLet.count == 1
    }
    
    func mangle(_ str: String) -> String {
        var ans = ""
        let lowerCase = (0..<26).map({Character(UnicodeScalar("a".unicodeScalars.first!.value + $0)!)})
        let upperCase = (0..<26).map({Character(UnicodeScalar("A".unicodeScalars.first!.value + $0)!)})
        let vowelStr = ["a", "e", "i", "o", "u"]

        for char in str {
            if lowerCase.contains (char) {
                if lowerCase.firstIndex(of: char)! != 25 {
                    if vowelStr.contains (String(lowerCase[lowerCase.firstIndex(of: char)! + 1])) {
                        ans += String(upperCase[lowerCase.firstIndex(of: char)! + 1])
                    } else {
                        ans += String(lowerCase[lowerCase.firstIndex(of: (char))! + 1])
                    }
                } else {
                    ans += String(upperCase[0])
                }
            } else if upperCase.contains (char) {
                if upperCase.firstIndex(of: char)! != 25 {
                    ans += String(upperCase[upperCase.firstIndex(of: char)! + 1])
                } else {
                    ans += String(upperCase[0])
                }
            } else  {
                ans += String(char)
            }
        }
        return ans
    }
    
    func coveredIntegers(_ arr: [[Int]]) -> Int {
        var resultArr = [Int]()
        
        for elem in arr {
            for i in elem[0]...elem[1] {
                resultArr.append (i)
            }
        }
        return Set(resultArr).count
    }
    
    func mean(_ arr: [Double]) -> Double {
        var sum = 0.0
        
        for i in arr {
            sum = sum + i
        }
        
        var mean = sum / Double(arr.count)
        mean = (mean * 100).rounded() / 100
        return mean
    }
    
    func add_suffix(_ suffix: String) -> (String) -> String {
        return { $0 + suffix }
    }
}
