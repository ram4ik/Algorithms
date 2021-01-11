//
//  TestAlgorithmsDesign.swift
//  AlgorithmsTests
//
//  Created by ramil on 11.01.2021.
//

import XCTest
@testable import Algorithms

class TestAlgorithmsDesign: XCTestCase {

    func testIntro() {
        
        let intro = Intro()
        
        XCTAssertEqual(intro.licenseKeyFormatter(s: "5jK8-3r-8-l", k: 4), "5JK8-3R8L")
        XCTAssertEqual(intro.licenseKeyFormatter(s: "2-6u-9-d", k: 2), "2-6U-9D")
    }

}
