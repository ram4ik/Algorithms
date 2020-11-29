//
//  AngryProfessor .swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 29.11.2020.
//

import Foundation

class AngryProfessor {
    
    func angryProfessor(k: Int, a: [Int]) -> String {
        
        let punctualStudents = a.filter { $0 <= 0 }
        if punctualStudents.count < k {
            return "Yes"
        } else {
            return "No"
        }
    }
}
