//
//  AlgorithmsTests.swift
//  AlgorithmsTests
//
//  Created by Ramill Ibragimov on 31.10.2020.
//

import XCTest
@testable import Algorithms

class AlgorithmsTests: XCTestCase {
 
    func testGradingStudents() throws {
        let input = [4, 73, 67, 38, 33]
        let expectedOutput = [4, 75, 67, 40, 33]
        
        let gs = GradingStudent()
        
        let output = gs.gradingStudents(grades: input)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func testCountApplesAndOranges() throws {
        let ao = AppleAndOrange()
        let output = ao.countApplesAndOranges(s: 7, t: 10, a: 4, b: 12, apples: [2, 3, -4], oranges: [3, -2, -4])
        XCTAssertEqual(output, [1, 2])
    }
    
    func testKangaroo() throws {
        let nlj = NumberLineJumps()
        XCTAssertEqual(nlj.kangaroo(x1: 0, v1: 3, x2: 4, v2: 2), "YES")
    }
    
    func testGetTotal() throws {
        let bts = BetweenTwoSets()
        XCTAssertEqual(2, bts.getTotal(a: [2, 6], b: [24, 36]))
        XCTAssertEqual(3, bts.getTotal(a: [2, 4], b: [16, 32, 96]))
    }
    
    func testBreakingTheRecords() throws {
        let btr = BreakingTheRecords()
        
        let input = [10, 5, 20, 20, 4, 5, 2, 25, 1]
        let output = [2, 4]
        
        XCTAssertEqual(btr.breakingRecords(scores: input), output)
    }
    
    func testMigratoryBirds() throws {
        let mb = MigratoryBirds()
        let input = [1, 4, 4, 5, 3]
        let output = 4
        
        XCTAssertEqual(mb.migratoryBirds(arr: input), output)
    }
    
    func testDayOfTheProgrammer() throws {
        let dotp = DayOfTheProgrammer()
        
        XCTAssertEqual(dotp.dayOfProgrammer(year: 2016), "12.09.2016")
        XCTAssertEqual(dotp.dayOfProgrammer(year: 2017), "13.09.2017")
        XCTAssertEqual(dotp.dayOfProgrammer(year: 2018), "13.09.2018")
        
        XCTAssertEqual(dotp.dayOfProgrammer(year: 2020), "12.09.2020")
        XCTAssertEqual(dotp.dayOfProgrammer(year: 2021), "13.09.2021")
    }

}
