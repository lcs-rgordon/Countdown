//
//  main.swift
//  Countdown
//
//  Created by Russell Gordon on 2022-11-24.
//

import Foundation

func countdown(from: Int, to: Int) {
    
    // Check for bad input
    // 'from' must be greater than or equal to 'to' so a countdown can happen
    if from < to {
        print("Cannot countdown from \(from) to \(to)")
        return
    }
        
    if from == to {
        // Reached base case, don't call function again
        print("Blast off!")
    } else {
        // Print the current value of from
        print(from)
        
        // We have not reached base case, so call function again
        // BUT crucially, reduce the 'from' value by 1 so base case
        // is eventually reached
        countdown(from: from - 1, to: to)
    }
    
}


// This won't work
countdown(from: 0, to: 10)

// This will work!
countdown(from: 10, to: 0)
