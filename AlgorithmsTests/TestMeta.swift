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

}
