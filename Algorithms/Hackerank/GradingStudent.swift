//
//  GradingStudent.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 31.10.2020.
//

import Foundation

class GradingStudent {
    
    func gradingStudents(grades: [Int]) -> [Int] {
        
        var list: [Int] = []
        for index in 0...grades.count - 1 {
            let currentGrade = grades[index]
            if currentGrade < 38 {
                list.append(currentGrade)
                continue
            }
            
            let leftOver = currentGrade % 5
            if leftOver > 2 {
                let newGrade = currentGrade + (5 - leftOver)
                list.append(newGrade)
                continue
            }
            
            list.append(currentGrade)
        }
        
        return list
    }
}
