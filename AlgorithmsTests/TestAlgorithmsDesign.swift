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
    
    func testLogger() {
        
        let l = Logger()
        
        XCTAssertEqual(l.shouldPrintMessage(timestamp: 1, message: "foo"), true)
        XCTAssertEqual(l.shouldPrintMessage(timestamp: 2, message: "bar"), true)
        XCTAssertEqual(l.shouldPrintMessage(timestamp: 3, message: "foo"), false)
        XCTAssertEqual(l.shouldPrintMessage(timestamp: 8, message: "bar"), false)
        XCTAssertEqual(l.shouldPrintMessage(timestamp: 10, message: "foo"), false)
        XCTAssertEqual(l.shouldPrintMessage(timestamp: 11, message: "foo"), true)
    }
    
    func testUniqueEmailAddresses() {
        
        let uea = UniqueEmailAddresses()
        
        let emailList = [
            "test.email+mark@email.com",
            "test.email@email.com",
            "testemail@email.com",
            "test.email.com@email.com"
        ]
        
        XCTAssertEqual(uea.getUniqueAddresses(emailList), 2)
    }
    
    func testBuildQueueUsingStack() {
        
        let bqus = BuildQueueUsingStack()
        
        XCTAssertEqual(bqus.queueUsingStack(elements: [2,3,1,4,5,7,6,9,8]), [2,3,1,4,5,7,6,9,8])
    }
    
    func testMajorityElement() {
        
        let me = MajorityElement()
        
        XCTAssertEqual(me.majority([3,2,3]), 3)
        XCTAssertEqual(me.majority([3,2,3,2,2]), 2)
        XCTAssertEqual(me.majority([2,2,1,1,1,1,2,2,2]), 2)
    }
    
    func testMajorityElementTwo() {
        
        let met = MajorityElementTwo()
        
        XCTAssertEqual(met.majority([3,2,3]), [3])
        XCTAssertEqual(met.majority([3,2,2,2]), [2])
        XCTAssertEqual(met.majority([2,1,1,1,1,2]), [1])
        XCTAssertEqual(met.majority([1,1,1,3,3,2,2]), [1])
    }
    
    func testIntersectionOfTwoArrays() {
        
        let iota = IntersectionOfTwoArrays()
        
        XCTAssertEqual(iota.intersection([1,2,2,1], [2,2]), [2])
    }
    
    func testIntersectionOfTwoArraysTwo() {
        
        let iotat = IntersectionOfTwoArraysTwo()
        
        XCTAssertEqual(iotat.inter([1,2,2,1], [2,2]), [2,2])
        XCTAssertEqual(iotat.inter([1,2,2,1], [2,2,2]), [2,2])
        XCTAssertEqual(iotat.inter([1,2,2,1,3], [2,2,2]), [2,2])
    }
    
    func testContainsDuplicate() {
        
        let cd = ContainsDuplicate()
        
        XCTAssertEqual(cd.containsDuplicate([1,2,3,1,1]), true)
        XCTAssertEqual(cd.containsDuplicate([2,1,3,4,5,6,7,0,9]), false)
    }
}
