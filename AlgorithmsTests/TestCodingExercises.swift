//
//  TestCodingExercises.swift
//  AlgorithmsTests
//
//  Created by Ramill Ibragimov on 04.01.2021.
//

import XCTest
@testable import Algorithms

class TestCodingExercises: XCTestCase {

    func testStaircaseOfRecursion() {
        
        let sor = StaircaseOfRecursion()
        XCTAssertEqual(sor.waysToClimb(0), 1)
        XCTAssertEqual(sor.waysToClimb(1), 1)
        XCTAssertEqual(sor.waysToClimb(2), 2)
        XCTAssertEqual(sor.waysToClimb(3), 3)
        XCTAssertEqual(sor.waysToClimb(4), 5)
        XCTAssertEqual(sor.waysToClimb(5), 8)
        XCTAssertEqual(sor.waysToClimb(6), 13)
    }
    
    func testWhichNumbersIsNotLikeTheOthers() {
        
        let wninlto = WhichNumbersIsNotLikeTheOthers()
        
        XCTAssertEqual(wninlto.unique([3, 3, 3, 3, 3, 7, 3, 3]), 7)
        XCTAssertEqual(wninlto.unique([0, 0, 0, 0.77, 0, 0, 0]), 0.77)
        XCTAssertEqual(wninlto.unique([0, 1, 1, 1, 1, 1, 1, 1, 1]), 0)
    }
    
    func testTicTakToe() {
        
        let ttt = TicTakToe()
        
        let gameOne = [
            ["O", "X", "O"],
            ["X", "X", "O"],
            ["O", "X", "X"]
        ]
        XCTAssertEqual(ttt.whoWon(gameOne), "X")
        
        let gameTWO = [
            ["O", "X", "X"],
            ["X", "O", "O"],
            ["O", "X", "O"]
        ]
        XCTAssertEqual(ttt.whoWon(gameTWO), "O")
        
        let gameThree = [
            ["O", "X", "O"],
            ["X", "O", "O"],
            ["X", "X", "X"]
        ]
        XCTAssertEqual(ttt.whoWon(gameThree), "X")
    }

}
