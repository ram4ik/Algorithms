//
//  TestMasteringGenerics.swift
//  AlgorithmsTests
//
//  Created by ramil on 15.04.2021.
//

import XCTest
@testable import Algorithms

class TestMasteringGenerics: XCTestCase {
    
    let mg = MasteringGenerics()
    
    func testUseAdd() {
        XCTAssertEqual(mg.genericAdd(a: 10, b: 10), 20)
        XCTAssertEqual(mg.genericAdd(a: 3.14, b: 1.25), 4.390000000000001)
    }
    
    let testArray = ["AA", "bb", "c", "DDD", "eE"]
    let testIntArray = [1, 2, 4, 66, 7, 8, 99, 1001]
    
    func testUseLinearSearch() {
        XCTAssertEqual(mg.linearSearch(array: testArray, key: "eE"), 4)
        XCTAssertNil(mg.linearSearch(array: testArray, key: "lookingNil"))
        
        XCTAssertEqual(mg.linearSearch(array: testIntArray, key: 1001), 7)
        XCTAssertNil(mg.linearSearch(array: testIntArray, key: 42))
    }
    
    func testUsePersonExample() {
        let jim = Person(name: "Jim", age: 23)
        let jim2 = Person(name: "Jim", age: 23)
        let bob = Person(name: "Bob", age: 42)
        
        XCTAssertTrue(jim == jim2)
        XCTAssertFalse(jim == bob)
        XCTAssertFalse(jim2 == bob)
        
        let people = [jim, jim2, bob]
        XCTAssertEqual(mg.linearSearch(array: people, key: bob), 2)
        
        let mark = Person(name: "Mark", age: 69)
        XCTAssertNil(mg.linearSearch(array: people, key: mark))
    }

}
