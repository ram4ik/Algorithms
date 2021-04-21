//
//  FlatArray.swift
//  Algorithms
//
//  Created by ramil on 21.04.2021.
//

import Foundation

class FlatArray {
    
    func solution<T>(_ array: [Any]) -> [T] {
        var result = [T]()
        
        for element in array {
            if let element = element as? T {
                result.append(element)
            } else if let element = element as? [Any] {
                result.append(contentsOf: solution(element))
            }
        }
        
        return result
    }
}
