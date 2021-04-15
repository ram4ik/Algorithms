//
//  MasteringGenerics.swift
//  Algorithms
//
//  Created by ramil on 15.04.2021.
//

import Foundation

class MasteringGenerics {
    
    func genericAdd<T: Numeric>(a: T, b: T) -> T {
        return a + b
    }
    
    func linearSearch<T: Equatable>(array: [T], key: T) -> Int? {
        for i in 0..<array.count {
            if array[i] == key {
                return i
            }
        }
        return nil
    }
    
}
