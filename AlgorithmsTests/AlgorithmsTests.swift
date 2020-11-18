//
//  AlgorithmsTests.swift
//  AlgorithmsTests
//
//  Created by Ramill Ibragimov on 31.10.2020.
//

import XCTest
@testable import Algorithms

class AlgorithmsTests: XCTestCase {
 
    func testGradingStudents() {
        let input = [4, 73, 67, 38, 33]
        let expectedOutput = [4, 75, 67, 40, 33]
        
        let gs = GradingStudent()
        
        let output = gs.gradingStudents(grades: input)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testCountApplesAndOranges() {
        let ao = AppleAndOrange()
        let output = ao.countApplesAndOranges(s: 7, t: 10, a: 4, b: 12, apples: [2, 3, -4], oranges: [3, -2, -4])
        XCTAssertEqual(output, [1, 2])
    }
    
    func testKangaroo() {
        let nlj = NumberLineJumps()
        XCTAssertEqual(nlj.kangaroo(x1: 0, v1: 3, x2: 4, v2: 2), "YES")
    }
    
    func testGetTotal() {
        let bts = BetweenTwoSets()
        XCTAssertEqual(2, bts.getTotal(a: [2, 6], b: [24, 36]))
        XCTAssertEqual(3, bts.getTotal(a: [2, 4], b: [16, 32, 96]))
    }
    
    func testBreakingTheRecords() {
        let btr = BreakingTheRecords()
        
        let input = [10, 5, 20, 20, 4, 5, 2, 25, 1]
        let output = [2, 4]
        
        XCTAssertEqual(btr.breakingRecords(scores: input), output)
    }
    
    func testMigratoryBirds() {
        let mb = MigratoryBirds()
        let input = [1, 4, 4, 5, 3]
        let output = 4
        
        XCTAssertEqual(mb.migratoryBirds(arr: input), output)
    }
    
    func testDayOfTheProgrammer() {
        let dotp = DayOfTheProgrammer()
        
        XCTAssertEqual(dotp.dayOfProgrammer(year: 2016), "12.09.2016")
        XCTAssertEqual(dotp.dayOfProgrammer(year: 2017), "13.09.2017")
        XCTAssertEqual(dotp.dayOfProgrammer(year: 2018), "13.09.2018")
        
        XCTAssertEqual(dotp.dayOfProgrammer(year: 2020), "12.09.2020")
        XCTAssertEqual(dotp.dayOfProgrammer(year: 2021), "13.09.2021")
    }
    
    func testBillDivision() {
        let bd = BillDivision()
        
        XCTAssertEqual(bd.bonAppetit(bill: [4, 1, 5, 9], k: 3, b: 12), "7")
        XCTAssertEqual(bd.bonAppetit(bill: [3, 10, 2, 9], k: 1, b: 7), "Bon Appetit")
    }
    
    func testCatsAndMouse() {
        let cam = CatsAndMouse()
        
        XCTAssertEqual(cam.catAndMouse(x: 2, y: 5, z: 4), "Cat B")
        XCTAssertEqual(cam.catAndMouse(x: 1, y: 2, z: 3), "Cat B")
        XCTAssertEqual(cam.catAndMouse(x: 1, y: 3, z: 2), "Mouse C")
    }
    
    func testHurdleRace() {
        let hr = HurdleRace()
        
        XCTAssertEqual(hr.hurdleRace(k: 1, height: [1, 2, 3, 3, 2]), 2)
        XCTAssertEqual(hr.hurdleRace(k: 5, height: [1, 6, 3, 5, 2]), 1)
        XCTAssertEqual(hr.hurdleRace(k: 4, height: [1, 6, 3, 5, 2]), 2)
        
        XCTAssertEqual(hr.hurdleRace(k: 2, height: [2, 5, 4, 5, 2]), 3)
        XCTAssertEqual(hr.hurdleRace(k: 3, height: [2, 5, 4, 5, 2]), 2)
    }
    
    func testFindDigit() {
        let fd = FindDigit()
        
        XCTAssertEqual(fd.findDigit(n: 2), 1)
        XCTAssertEqual(fd.findDigit(n: 12), 2)
        XCTAssertEqual(fd.findDigit(n: 1012), 3)
    }
    
    func testViralAdvertising() {
        let va = ViralAdvertising()
        
        XCTAssertEqual(va.viralAvertising(n: 1), 2)
        XCTAssertEqual(va.viralAvertising(n: 2), 5)
        XCTAssertEqual(va.viralAvertising(n: 3), 9)
        XCTAssertEqual(va.viralAvertising(n: 4), 15)
        XCTAssertEqual(va.viralAvertising(n: 5), 24)
    }
    
    func testTaumAndBDay() {
        
        let tbd = TaumAndBDay()
        
        XCTAssertEqual(tbd.taumBday(b: 5, w: 10, bc: 10, wc: 1, z: 1), 65)
    }
    
    func testUtopianTree() {
        let ut = UtopianTree()
        
        XCTAssertEqual(ut.utopianTree(n: 3), 6)
        XCTAssertEqual(ut.utopianTree(n: 1), 2)
        XCTAssertEqual(ut.utopianTree(n: 4), 7)
        XCTAssertEqual(ut.utopianTree(n: 0), 1)
    }
    
    func testModifiedKaprekarNumbers() {
        let mkn = ModifiedKaprekarNumbers()
        
        XCTAssertEqual(mkn.kaprekarNumbers(p: 1, q: 100), [1, 9, 45, 55, 99])
        
    }
    
    func testBeautifulTriplets() {
        
        let bt = BeautifulTriplets()
        
        XCTAssertEqual(bt.beautifulTriplets(d: 3, arr: [1, 2, 4, 5, 7, 8, 10]), 3)
    }
    
    func testEqualizeTheArray() {
        
        let eta = EqualizeTheArray()
        
        XCTAssertEqual(eta.equalizeArray(arr: [3, 3, 2, 1, 3]), 2)
    }
    
    func testHalloweenSale() {
        
        let hs = HalloweenSale()
        
        XCTAssertEqual(hs.howManyGames(p: 20, d: 3, m: 6, s: 80), 6)
    }
}
