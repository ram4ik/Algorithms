//
//  TestQueue.swift
//  AlgorithmsTests
//
//  Created by ramil on 26.01.2021.
//

import XCTest
@testable import Algorithms

class TestQueue: XCTestCase {

    var queueArray = QueueArray<String>()
    var queueStack = QueueStack<String>()
    
    override func setUp() {
        queueArray.enqueue("Tom")
        queueArray.enqueue("Max")
        queueArray.enqueue("Marta")
        queueArray.enqueue("Alex")
        
        queueStack.enqueue("Maris")
        queueStack.enqueue("Martina")
        queueStack.enqueue("Mayli")
    }
    
    func testEnqueueArray() {
        XCTAssertEqual(queueArray.peek, "Tom")
    }
    
    func testDequeueArray() {
        queueArray.dequeue()
        queueArray.dequeue()
        queueArray.dequeue()
        XCTAssertEqual(queueArray.peek, "Alex")
        queueArray.dequeue()
        XCTAssertTrue(queueArray.isEmpty)
    }
    
    func testEnqueueStack() {
        XCTAssertEqual(queueStack.peek, "Maris")
    }
    
    func testDequeueStack() {
        queueStack.dequeue()
        queueStack.dequeue()
        XCTAssertEqual(queueStack.peek, "Mayli")
        queueStack.dequeue()
        XCTAssertTrue(queueStack.isEmpty)
    }

}
