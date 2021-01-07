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
    
    func testTallestSkyscraper() {
        
        let ts = TallestSkyscraper()
        
        let cityOne = [
            [0, 1, 0, 0, 0],
            [0, 1, 0, 0, 1],
            [0, 1, 0, 0, 1],
            [0, 1, 1, 0, 1],
            [1, 1, 1, 0, 1],
        ]
        XCTAssertEqual(ts.tallestSkyscraper(cityOne), 5)
        
        let cityTwo = [
            [0, 0, 0, 0, 0],
            [0, 0, 0, 0, 1],
            [0, 1, 0, 0, 1],
            [1, 1, 1, 0, 1],
            [1, 1, 1, 0, 1],
        ]
        XCTAssertEqual(ts.tallestSkyscraper(cityTwo), 4)
    }

    func testFindTheMissingLetter() {
        
        let ftml = FindTheMissingLetter()
        
        XCTAssertEqual(ftml.missingLetter(["a", "b", "c", "e", "f"]), "d")
        XCTAssertEqual(ftml.missingLetter(["M", "O", "P"]), "N")
    }
    
    func testProductOfAllOtherNumbers() {
        
        let poaon = ProductOfAllOtherNumbers()
        
        XCTAssertEqual(poaon.getProducts([1, 7, 3, 4]), [84, 12, 28, 21])
        XCTAssertEqual(poaon.getProducts([1, 2, 3, 0, 5]), [0, 0, 0, 30, 0])
    }
    
    func testSockPairs() {
        
        let sp = SockPairs()
        
        XCTAssertEqual(sp.sockPairs("AA"), 1)
        XCTAssertEqual(sp.sockPairs("ABABC"), 2)
        XCTAssertEqual(sp.sockPairs("CABBACCC"), 4)
    }
    
    func testLeftSideRightSide() {
        
        let lsrs = LeftSideRightSide()
        
        XCTAssertEqual(lsrs.leftSide([5, 2, 1, 4, 8, 7]), [0, 0, 0, 2, 4, 4])
        XCTAssertEqual(lsrs.rightSide([5, 2, 1, 4, 8, 7]), [3, 1, 0, 0, 1, 0])
        XCTAssertEqual(lsrs.leftSide([1, 2, 3, -1]), [0, 1, 2, 0])
        XCTAssertEqual(lsrs.rightSide([1, 2, 3, -1]), [1, 1, 1, 0])
    }
    
    func testClosestPalindromeNumber() {
        
        let cpn = ClosestPalindromeNumber()
        
        XCTAssertEqual(cpn.closestPalindrome(887), 888)
        XCTAssertEqual(cpn.closestPalindrome(100), 99)
        XCTAssertEqual(cpn.closestPalindrome(888), 888)
        XCTAssertEqual(cpn.closestPalindrome(27), 22)
    }
    
    func testEncodeMorse() {
        
        let em = EncodeMorse()
        
        XCTAssertEqual(em.encodeMorse("CHANGE YOURSELF!"), "-.-. .... .- -. --. .   -.-- --- ..- .-. ... . .-.. ..-. -.-.--")
    }
    
    func testOddUpEvenDown() {
        
        let oued = OddUpEvenDown()
        
        XCTAssertEqual(oued.evenOddTransform([3, 4, 9], 3), [9, -2, 15])
        XCTAssertEqual(oued.evenOddTransform([0, 0, 0], 10), [-20, -20, -20])
        XCTAssertEqual(oued.evenOddTransform([1, 2, 3], 1), [3, 0, 5])
    }
    
    func testMovingToTheEnd() {
        
        let mtte = MovingToTheEnd()
        
        XCTAssertEqual(mtte.moveToEnd([1,3,2,4,4,1], 1), [3,2,4,4,1,1])
        XCTAssertEqual(mtte.moveToEnd([7,8,9,1,2,3,4], 9), [7,8,1,2,3,4,9])
    }
    
    func testNextPrime() {
        
        let np = NextPrime()
        
        XCTAssertEqual(np.nextPrime(12), 13)
        XCTAssertEqual(np.nextPrime(24), 29)
        XCTAssertEqual(np.nextPrime(11), 11)
    }
    
    func testMakingProgress() {
        
        let mp = MakingProgress()
        
        XCTAssertEqual(mp.progressDays([3,4,1,2]), 2)
        XCTAssertEqual(mp.progressDays([9,11,12,9,10]), 3)
        XCTAssertEqual(mp.progressDays([6,5,4,3,2,9]), 1)
    }
    
    func testPersistentLittleBugger() {
        
        let plb = PersistentLittleBugger()
        
        XCTAssertEqual(plb.bugger(39), 3)
        XCTAssertEqual(plb.bugger(999), 4)
        XCTAssertEqual(plb.bugger(4), 0)
    }
}
