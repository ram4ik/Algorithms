//
//  TestLinkedList.swift
//  AlgorithmsTests
//
//  Created by Ramill Ibragimov on 04.02.2021.
//

import XCTest
@testable import Algorithms

class TestLinkedList: XCTestCase {

    func testSimpleLinkedList() {
        
        let element1 = LinkedListNode.value(element: "A", next: .end)
        let list = LinkedList(head: element1)
        
        XCTAssertTrue(list.contains("A"))
        XCTAssertFalse(list.contains("B"))
        
        XCTAssertEqual(list.sorted().last, "A")
    }
    
    func testLinkedListWithSomeElements() {

        let element4 = LinkedListNode.value(element: "D", next: .end)
        let element3 = LinkedListNode.value(element: "C", next: element4)
        let element2 = LinkedListNode.value(element: "B", next: element3)
        let element1 = LinkedListNode.value(element: "A", next: element2)
        
        let list = LinkedList(head: element1)
        
        XCTAssertTrue(list.contains("A"))
        XCTAssertFalse(list.contains("E"))
        XCTAssertEqual(list.reversed().first, "D")
    }
}
