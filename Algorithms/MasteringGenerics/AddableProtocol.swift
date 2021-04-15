//
//  AddableProtocol.swift
//  Algorithms
//
//  Created by ramil on 15.04.2021.
//

import Foundation

protocol AddableProtocol {
    static func +(lhs: Self, rhs: Self) -> Self
}

extension Int: AddableProtocol {
    
}

extension Double: AddableProtocol {
    
}
