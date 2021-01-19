//
//  TestEdu.swift
//  AlgorithmsTests
//
//  Created by ramil on 19.01.2021.
//

import XCTest
@testable import Algorithms

class TestEdu: XCTestCase {

    func testBubble() {
        
        let b = Bubble()
        
        XCTAssertEqual(b.sort(arr: [3,4,2,5,7,6,1,9,8]), [1,2,3,4,5,6,7,8,9])
    }
    
    func testSelection() {
        
        let s = Selection()
        
        XCTAssertEqual(s.sort(tempArr: [3,4,2,5,7,6,1,9,8]), [1,2,3,4,5,6,7,8,9])
    }
    
    func testInsertion() {
        
        let i = Insertion()
        
        XCTAssertEqual(i.sort(tempArr: [3,4,2,5,7,6,1,9,8]), [1,2,3,4,5,6,7,8,9])
    }
    
    func testQuick() {
        
        let q = Quick()
        
        XCTAssertEqual(q.sort(tempArr: [3,4,2,5,7,6,1,9,8]), [1,2,3,4,5,6,7,8,9])
    }
}
