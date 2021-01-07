//
//  OddUpEvenDown.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 07.01.2021.
//

import Foundation

class OddUpEvenDown {
    
    func evenOddTransform(_ arr: [Int], _ n: Int) -> [Int] {
        var array1 = [Int]();

        for i in 0..<arr.count {
            if (arr[i] % 2 != 0) {
                array1.append(arr[i] + (n * 2));
            }
            else if (arr[i] % 2 == 0) {
                array1.append(arr[i] + (n * (-2)));
            }
        }
        return array1;
    }
}
