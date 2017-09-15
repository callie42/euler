//
//  euler14.swift
//  euler
//
//  Created by Callie on 15/9/17.
//  Copyright © 2017 crc. All rights reserved.
//

import Foundation



//
//  The following iterative sequence is defined for the set of positive integers:
//
//  n → n/2 (n is even)
//  n → 3n + 1 (n is odd)
//
//  Using the rule above and starting with 13, we generate the following sequence:
//  13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
//
//  It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has
//  not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
//
//  Which starting number, under one million, produces the longest chain?
//
//  NOTE: Once the chain starts the terms are allowed to go above one million.
//

//Return the length of the collatz sequence starting at n
func collatz(_ n: Int) -> Int {
  if n == 1 {
    return 1
  } else {
    if n % 2 == 0 {
      return collatz(n / 2) + 1
    } else {
      return collatz(3 * n + 1) + 1
    }
  }
}

// optimisations could include caching results, and then of we hit a value we've alreay done, just lookup it's value
// and incrment current by it
func euler14() -> Void {
  print("PE14: Start")
  print("PE14: Longest Collatz sequence")
  
  var answer = 0
  var largest = 0
  for i in 1 ... 1000000 {
    let c = collatz(i)
    if c > largest {
      answer = i
      largest = c
    }
  }

  print("PE14: Starts at \(answer), length= \(largest)")
  print("PE14: End\n")
}
