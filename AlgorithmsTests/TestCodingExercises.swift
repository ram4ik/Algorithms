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
    
    func testEvenOddPartition() {
        
        let eop = EvenOddPartition()
        
        XCTAssertEqual(eop.evenOddPartition([5,8,9,2,0]), [[8,2,0],[5,9]])
        XCTAssertEqual(eop.evenOddPartition([1,0,1,0,1,0]), [[0,0,0],[1,1,1]])
        XCTAssertEqual(eop.evenOddPartition([1,3,5,7,9]), [[],[1,3,5,7,9]])
    }
    
    func testTotalVolumeOfAllBoxes() {
        
        let tvoab = TotalVolumeOfAllBoxes()
        
        XCTAssertEqual(tvoab.totalVolume([4,2,4],[3,3,3],[1,1,2],[2,1,1]), 63)
        XCTAssertEqual(tvoab.totalVolume([2,2,2],[2,1,1]), 10)
        XCTAssertEqual(tvoab.totalVolume([1,1,1]), 1)
    }
    
    func testIntegerDigitsCount() {
        
        let idc = IntegerDigitsCount()
        
        XCTAssertEqual(idc.count(318), 3)
        XCTAssertEqual(idc.count(-92563), 5)
        XCTAssertEqual(idc.count(4666), 4)
        XCTAssertEqual(idc.count(-314890), 6)
        XCTAssertEqual(idc.count(654321), 6)
    }
    
    func testDigitDistance() {
        
        let dd = DigitDistance()
        
        XCTAssertEqual(dd.digitDistance(234, 489), 12)
        XCTAssertEqual(dd.digitDistance(121, 599), 19)
        XCTAssertEqual(dd.digitDistance(12, 12), 0)
    }
    
    func testExtendingTheArrayPrototype() {
        
        XCTAssertEqual([1,2,3].squared, [1,4,9])
        XCTAssertEqual([1,2,3].cubed, [1,8,27])
        XCTAssertEqual([1,2,3,4].divisible(by: 2), [2,4])
        XCTAssertEqual([1,2,3,4].strictly(above: 1), [2,3,4])
        XCTAssertEqual([1,2,3,4].strictly(below: 2), [1])
    }
    
    func testLeastCommonMultiple() {
        
        let lcm = LeastCommonMultiple()
        
        XCTAssertEqual(lcm.lcm(9, 18), 18)
        XCTAssertEqual(lcm.lcm(8, 5), 40)
        XCTAssertEqual(lcm.lcm(17, 11), 187)
    }
    
    func testCountOnesInBinaryRepresentationOfInteger() {
        
        let cob = CountOnesInBinaryRepresentationOfInteger()
        
        //XCTAssertEqual(cob.countOnes(0), 0)
        //XCTAssertEqual(cob.countOnes(100), 3)
        XCTAssertEqual(cob.countOnes(999), 8)
    }
    
    func testRepeatingLetters() {
        
        let rl = RepeatingLetters()
        
        XCTAssertEqual(rl.doubleChar("SwiftUI"), "SSwwiiffttUUII")
    }
    
    func testLargestSwap() {
        
        let ls = LargestSwap()
        
        XCTAssertEqual(ls.largestSwap(27), false)
        XCTAssertEqual(ls.largestSwap(93), true)
    }
    
    func testCumulativeArraySum() {
        
        let cas = CumulativeArraySum()
        
        XCTAssertEqual(cas.cumulativeSum([1,2,3]), [1,3,6])
        XCTAssertEqual(cas.cumulativeSum([1,-2,3]), [1,-1,2])
        XCTAssertEqual(cas.cumulativeSum([3,3,-2,408,3,3]), [3,6,4,412,415,418])
    }
    
    func testChatRoomStatus() {
        
        let crs = ChatRoomStatus()
        
        XCTAssertEqual(crs.chatroomStatus([]), "no one online")
        XCTAssertEqual(crs.chatroomStatus(["Marie"]), "Marie online")
        XCTAssertEqual(crs.chatroomStatus(["Jan", "Marika"]), "Jan and Marika online")
        XCTAssertEqual(crs.chatroomStatus(["Ana", "Oli", "Pem", "Anu", "Sirja"]), "Ana, Oli and 3 more online")
    }
    
    func testVowelReplacer() {
        
        let vr = VowelReplacer()
        
        XCTAssertEqual(vr.replaceVowels("Swift", "*"), "Sw*ft")
        XCTAssertEqual(vr.replaceVowels("apollo", "@"), "@p@ll@")
    }
    
    func testPerfectSquarePatch() {
        
        let psp = PerfectSquarePatch()
        
        let resultForTwo = [
            [2, 2],
            [2, 2]
        ]
        
        let resultForThree = [
            [3, 3, 3],
            [3, 3, 3],
            [3, 3, 3]
        ]
        
        XCTAssertEqual(psp.squarePatch(2), resultForTwo)
        XCTAssertEqual(psp.squarePatch(3), resultForThree)
    }
}
