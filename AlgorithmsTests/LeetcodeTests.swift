//
//  LeetcodeTests.swift
//  AlgorithmsTests
//
//  Created by Ramill Ibragimov on 02.09.2023.
//

import XCTest
@testable import Algorithms

final class LeetcodeTests: XCTestCase {
    
    let lc = Leetcode()

    // https://leetcode.com/problems/container-with-most-water/
    func testContainerWithMostWater() {
        
        XCTAssertEqual(lc.containerWithMostWater([1,8,6,2,5,4,8,3,7]), 49)
        XCTAssertEqual(lc.containerWithMostWater([1,1]), 1)
    }

    // https://leetcode.com/problems/move-zeroes/
    func testMoveZeroes() {
            
        var testData1 = [0]
        lc.moveZeroes(&testData1)
        XCTAssertEqual(testData1, [0])
        
        var testData2 = [0,1,0,3,12]
        lc.moveZeroes(&testData2)
        XCTAssertEqual(testData2, [1,3,12,0,0])
    }
}
