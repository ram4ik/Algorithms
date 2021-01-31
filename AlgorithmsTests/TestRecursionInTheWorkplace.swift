//
//  TestRecursionInTheWorkplace.swift
//  AlgorithmsTests
//
//  Created by Ramill Ibragimov on 31.01.2021.
//

import XCTest
@testable import Algorithms

class TestRecursionInTheWorkplace: XCTestCase {

    func testStripLeadingZeros() {
        
        XCTAssertEqual("001".stripLeadingZone(), "1")
        XCTAssertEqual("010".stripLeadingZone(), "10")
        XCTAssertEqual("VOD".stripLeadingZone(), "VOD")
        
        XCTAssertEqual(StringUtils.stripLeadingZeros(from: "001"), "1")
        XCTAssertEqual(StringUtils.stripLeadingZeros(from: "010"), "10")
        XCTAssertEqual(StringUtils.stripLeadingZeros(from: "VOD"), "VOD")
    }
}
