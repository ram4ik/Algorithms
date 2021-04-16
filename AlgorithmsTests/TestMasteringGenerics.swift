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

    func testCustomAdd() {
        XCTAssertEqual(mg.customAdd(a: 4, b: 5), 9)
        XCTAssertEqual(mg.customAdd(a: 3.14, b: 1.25), 4.390000000000001)
    }
    
    func testUseStorage() {
        let booksBox = Box<Book>()
        
        booksBox.store(item: Book(title: "Mastering SwiftUI", author: "Paul"))
        booksBox.store(item: Book(title: "Mastering Generics", author: "Markus"))
        
        XCTAssertEqual(booksBox.items.count, 2)
        
        let retriveAuthor = booksBox.retrive(index: 0).author
        XCTAssertEqual(retriveAuthor, "Paul")
        
        let retriveTitle = booksBox.retrive(index: 1).title
        XCTAssertEqual(retriveTitle, "Mastering Generics")
        
    }
    
    func testUseLocation() {
        let loc = "777 Main str."
        let loc1 = Location.address(loc)
        let loc2 = Location.coordinate(42.041123, -101.22345)
        
        let adr = Address(streetNumber: 777, streetName: "Main str.", city: "San Francisco", zipCode: 11002)
        let adr1 = GenLocation.address(adr)
        let adr2 = GenLocation.coordinated(Coordinate(lat: 42.041123, long: -101.22345))
        
        XCTAssertEqual(loc, "\(adr.streetNumber) \(adr.streetName)")
        XCTAssertNotNil(loc1)
        XCTAssertNotNil(loc2)
        XCTAssertNotNil(adr1)
        XCTAssertNotNil(adr2)
    }
}
