//
//  TestMeta.swift
//  AlgorithmsTests
//
//  Created by ramil on 31.12.2021.
//

import XCTest
@testable import Algorithms

class TestMeta: XCTestCase {
    
    let matrix = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
    ]

    func testMetaSpiralTraverse() {
        let st = SpiralTraverse()
        XCTAssertEqual(st.spiralTraverse(matrix), [1, 2, 3, 6, 9, 8, 7, 4, 5])
    }
    
    let grid = [
        ["1", "1", "1", "1", "0"],
        ["1", "1", "0", "1", "0"],
        ["1", "1", "0", "0", "0"],
        ["0", "0", "0", "0", "0"],
    ]
    
    func testCountIsland() {
        let ci = CountIslands()
        XCTAssertEqual(ci.countIslands(grid), 1)
    }
    
    let grid2 = [
        ["1", "1", "1", "1", "0"],
        ["1", "1", "0", "1", "0"],
        ["1", "1", "0", "0", "1"],
        ["0", "0", "1", "0", "1"],
    ]
    
    func testCountIsland2() {
        let ci = CountIslands()
        XCTAssertEqual(ci.countIslands(grid2), 3)
    }
    
    let triangle = [
        [1],
        [1, 1],
        [1, 2, 1],
        [1, 3, 3, 1],
        [1, 4, 6, 4, 1]
    ]
    
    func testPascalTriangle() {
        
        let pt = PascalsTriangle()
        
        XCTAssertEqual(pt.solve(5), triangle)
    }

    func testMergeInvervals() {
        
        let intervals = [[1, 3], [2, 6], [8, 10], [15, 18]]
        let output = [[1, 6], [8, 10], [15, 18]]
        
        let mi = MergeInvervals()
        XCTAssertEqual(mi.solve(intervals), output)
    }
}
