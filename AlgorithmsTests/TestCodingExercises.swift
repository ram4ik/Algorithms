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
    
    func testHurdleJump() {
        
        let hj = HurdleJump()
        
        XCTAssertEqual(hj.hurdleJump([1,2,3,4,5], 5), true)
        XCTAssertEqual(hj.hurdleJump([5,5,3,4,5], 3), false)
        XCTAssertEqual(hj.hurdleJump([5,4,4,6], 10), true)
        XCTAssertEqual(hj.hurdleJump([1,2,1], 1), false)
    }
    
    func testProfitableGamble() {
        
        let pg = ProfitableGamble()
        
        XCTAssertEqual(pg.profitableGamble(0.2, 50, 9), true)
        XCTAssertEqual(pg.profitableGamble(0.9, 1, 2), false)
        XCTAssertEqual(pg.profitableGamble(0.9, 3, 2), true)
    }
    
    func testMovieThreatreAdmittance() {
        
        let mta = MovieThreatreAdmittance()
        
        XCTAssertEqual(mta.acceptIntoMovie(14, true), true)
        XCTAssertEqual(mta.acceptIntoMovie(14, false), false)
        XCTAssertEqual(mta.acceptIntoMovie(16, false), true)
    }
    
    func testFindTheIndex() {
        
        let fti = FindTheIndex()
        
        XCTAssertEqual(fti.find_index(["Red", "blue", "Green", "Blue"], "blue"), 1)
        XCTAssertEqual(fti.find_index(["a", "g", "y", "d"], "d"), 3)
        XCTAssertEqual(fti.find_index(["Orange", "Banana", "Apple", "Grape"], "Apple"), 2)
    }
    
    func testIsTheWordSingularOrPlural() {
        
        let itwsop  = IsTheWordSingularOrPlural()
        
        XCTAssertEqual(itwsop.isPlural("changes"), true)
        XCTAssertEqual(itwsop.isPlural("chnage"), false)
        XCTAssertEqual(itwsop.isPlural("dudes"), true)
        XCTAssertEqual(itwsop.isPlural("magic"), false)
    }
    
    func testAllOccurrencesOfAnElementInAnArray() {
        
        let ao = AllOccurrencesOfAnElementInAnArray()
        
        XCTAssertEqual(ao.getIndices([1,5,5,2,7], 7), [4])
        XCTAssertEqual(ao.getIndices([1,5,5,2,7], 5), [1,2])
        XCTAssertEqual(ao.getIndices([1,5,5,2,7], 8), [])
    }
    
    func testNDifference() {
        
        let nd = NDifference()
        
        XCTAssertEqual(nd.nDifferences([5,1,9,3,4,0]), -80)
    }
    
    func testArrayOfMultiples() {
        
        let aom = ArrayOfMultiples()
        
        XCTAssertEqual(aom.arrayOfMultiples(7, 5), [7,14,21,28,35])
    }
    
    func testFilterOutStringFromAnArray() {
        
        let f = FilterOutStringFromAnArray()
        
        XCTAssertEqual(f.filterArray([1,2,"a","b"]), [1,2])
        XCTAssertEqual(f.filterArray([1,2,"asd","42",123]), [1,2,123])
    }
    
    func testATMPINCodeValidation() {
        
        let ap = ATMPINCodeValidation()
        
        XCTAssertEqual(ap.validatePIN("1234"), true)
        XCTAssertEqual(ap.validatePIN("a1234"), false)
        XCTAssertEqual(ap.validatePIN("01234"), false)
        XCTAssertEqual(ap.validatePIN(""), false)
    }
    
    func testSliceOfPie() {
        
        let sop = SliceOfPie()
        
        XCTAssertEqual(sop.equalSlices(11, 5, 2), true)
        XCTAssertEqual(sop.equalSlices(11, 5, 3), false)
        XCTAssertEqual(sop.equalSlices(8, 3, 2), true)
        XCTAssertEqual(sop.equalSlices(8, 3, 3), false)
        XCTAssertEqual(sop.equalSlices(24, 12, 2), true)
    }
    
    func testMuseumOfIncredibly() {
        
        let moi = MuseumOfIncredibly()
        
        XCTAssertEqual(moi.removeSmallest([1,2,3,4,5]), [2,3,4,5])
        XCTAssertEqual(moi.removeSmallest([5,3,2,1,4]), [5,3,2,4])
        XCTAssertEqual(moi.removeSmallest([2,2,1,2,1]), [2,2,2,1])
    }
    
    func testMatchstickHouses() {
        
        let mh = MatchstickHouses()
        
        XCTAssertEqual(mh.matchHouses(1), 6)
        XCTAssertEqual(mh.matchHouses(2), 11)
        XCTAssertEqual(mh.matchHouses(4), 21)
        XCTAssertEqual(mh.matchHouses(87), 436)
    }
    
    func testXandYCoordinates() {
        
        let xy = XandYCoordinates()
        
        XCTAssertEqual(xy.convertCartesian([1,5,3,3,4], [5,8,9,1,0]), [[1,5],[5,8],[3,9],[3,1],[4,0]])
        XCTAssertEqual(xy.convertCartesian([9,8,3], [1,1,1]), [[9,1],[8,1],[3,1]])
    }
    
    func testReverseCodingChallenge() {
        
        let rcc = ReverseCodingChallenge()
        
        XCTAssertEqual(rcc.mysteryFunc([5,7,8,2,1], 2), [1,1,0,0,1])
        XCTAssertEqual(rcc.mysteryFunc([9,8,16,47], 4), [1,0,0,3])
        XCTAssertEqual(rcc.mysteryFunc([17,11,99,55,23,1], 5), [2,1,4,0,3,1])
        XCTAssertEqual(rcc.mysteryFunc([6,1], 7), [6,1])
    }
    
    func testSpellingItOut() {
        
        let sio = SpellingItOut()
        
        XCTAssertEqual(sio.spelling("bee"), ["b", "be", "bee"])
        XCTAssertEqual(sio.spelling("happy"), ["h", "ha", "hap", "happ", "happy"])
    }
    
    func testCountOnes() {
        
        let co = CountOnes()
        
        let inputOne = [
            [1, 0],
            [0, 0]
        ]
        XCTAssertEqual(co.countOnes(inputOne), 1)
        
        let inputTwo = [
            [1, 0, 0],
            [1, 1, 1],
            [0, 1, 1]
        ]
        XCTAssertEqual(co.countOnes(inputTwo), 6)
        
        let inputThree = [
            [1, 1, 2, 0],
            [2, 3, 42, 1],
            [12, 13, 10, 9],
            [0, 9, 1, 3]
        ]
        XCTAssertEqual(co.countOnes(inputThree), 4)
    }
    
    func testIsTheStringEmpty() {
        
        let itse = IsTheStringEmpty()
        
        XCTAssertEqual(itse.isEmpty(""), true)
        XCTAssertEqual(itse.isEmpty(" "), false)
        XCTAssertEqual(itse.isEmpty("a"), false)
    }
    
    func testPerfectNumber() {
        
        let pn = PerfectNumber()
        
        XCTAssertEqual(pn.checkPerfect(6), true)
        XCTAssertEqual(pn.checkPerfect(28), true)
        XCTAssertEqual(pn.checkPerfect(496), true)
        XCTAssertEqual(pn.checkPerfect(12), false)
        XCTAssertEqual(pn.checkPerfect(97), false)
    }
    
    func testConvertHoursAndMinutesToSeconds() {
        
        let converter = ConvertHoursAndMinutesToSeconds()
        
        XCTAssertEqual(converter.convert(1, 3), 3780)
        XCTAssertEqual(converter.convert(2, 0), 7200)
        XCTAssertEqual(converter.convert(0, 0), 0)
    }
    
    func testFindThePerimeterOfARectangle() {
        
        let fpor = FindThePerimeterOfARectangle()
        
        XCTAssertEqual(fpor.findPerimeter(6, 7), 26)
        XCTAssertEqual(fpor.findPerimeter(20, 10), 60)
        XCTAssertEqual(fpor.findPerimeter(2, 9), 22)
    }
    
    func testGetTheSumOfAllArrayElements() {
        
        let gsoae = GetTheSumOfAllArrayElements()
        
        XCTAssertEqual(gsoae.getSum(of: [2,7,4]), 13)
        XCTAssertEqual(gsoae.getSum(of: [45,3,0]), 48)
        XCTAssertEqual(gsoae.getSum(of: [-2,84,23]), 105)
    }
    
    func testMultiplyOf100() {
        
        let m = MultiplyOf100()
        
        XCTAssertEqual(m.divisible(1), false)
        XCTAssertEqual(m.divisible(1000), true)
        XCTAssertEqual(m.divisible(100), true)
    }
    
    func testReturnTheFirstElementInAnArray() {
        let fe = ReturnTheFirstElementInAnArray()
        
        XCTAssertEqual(fe.getFirstValue([1,2,3]), 1)
        XCTAssertEqual(fe.getFirstValue([80,5,100]), 80)
        XCTAssertEqual(fe.getFirstValue([-500,0,50]), -500)
    }
    
    func testReturnTheLastElementInAnArray() {
        let le = ReturnTheLastElementInAnArray()
        
        XCTAssertEqual(le.getLastItem([1,2,3]), 3)
    }
    
    func testFootballPoint() {
        
        let fp = FootballPoint()
        
        XCTAssertEqual(fp.footballPoints(3, 4, 2), 13)
        XCTAssertEqual(fp.footballPoints(5, 0, 2), 15)
        XCTAssertEqual(fp.footballPoints(0, 0, 1), 0)
    }
}
