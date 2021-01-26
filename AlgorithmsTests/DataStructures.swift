//
//  DataStructures.swift
//  AlgorithmsTests
//
//  Created by ramil on 26.01.2021.
//

import XCTest
@testable import Algorithms

class DataStructures: XCTestCase {

    var stack = Stack<Int>()
    
    override func setUp() {
        stack.push(1)
        stack.push(2)
        stack.push(3)
        stack.push(4)
    }
    
    func testPush() {
        XCTAssertEqual(stack.description, "1 2 3 4")
    }
    
    func testPop() {
        XCTAssertEqual(stack.pop(), 4)
    }
    
    func testPeek() {
        XCTAssertEqual(stack.peek(), 4)
    }
    
    func testIsEmpty() {
        XCTAssertFalse(stack.isEmpty)
    }
    
    func testInitWithArray() {
        let array = [1, 2, 3, 4]
        XCTAssertEqual(stack, Stack(array))
    }
    
    func testArrayLeteral() {
        let stack: Stack = ["blueberry", "plain", "potato"]
        XCTAssertEqual(stack, ["blueberry", "plain", "potato"])
    }
}
