//
//  fibonnaci.swift
//  Fibonacci_App
//
//  Created by Brian McMinn on 4/25/17.
//  Copyright © 2017 Brian McMinn. All rights reserved.
//

import Foundation
import UIKit

class FibonacciSequence {
    
    let includesZero: Bool
    let values: [Int]
    
    init(maxNumber: Int, includesZero: Bool) {
        self.includesZero = includesZero
        if maxNumber == 0 && includesZero == false {
            values = []
        } else if maxNumber == 0 {
            values = [0]
        } else {
            var sequence = [0,1,1]
            var nextNumber = 2
            while nextNumber <= maxNumber {
                sequence.append(nextNumber)
                let lastNumber = sequence.last!
                let secondToLastNumber = sequence[sequence.count-2]
                nextNumber = secondToLastNumber + lastNumber
            }
            if includesZero == false {
                sequence.remove(at:0)
            }
            values = sequence
        }
    }
    
    init(numberOfItemsInSequence: Int, includesZero: Bool) {
        self.includesZero = includesZero
        if numberOfItemsInSequence == 0 {
            values = []
        } else if numberOfItemsInSequence == 1 {
            if includesZero == true {
                values = [0]
            } else {
                values = [1]
            }
        } else {
            var sequence: [Int]
            if includesZero == true {
                sequence = [0,1]
            } else {
                sequence = [1,1]
            }
            for _ in 2 ..< numberOfItemsInSequence {    // as we never use the variable in the for loop, we can replace it with underscore _
                let lastNumber = sequence.last!
                let secondToLastNumber = sequence[sequence.count-2]
                let nextNumber = secondToLastNumber + lastNumber
                sequence.append(nextNumber)
            }
            values = sequence
        }
    }
}





