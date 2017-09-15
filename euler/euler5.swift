//
//  euler5.swift
//  euler
//
//  Created by Calliope on 15/9/17.
//  Copyright © 2017 crc. All rights reserved.
//

import Foundation


//
// 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
//
// What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
//


// Given x, find the smallest number that is a multiple 1 ... x
func smallestMultiple(_ x: Int) -> Int {
  if x == 2 {
    return 2
  }

  let increment = smallestMultiple(x - 1)
  for i in 1 ... x {
    if (i * increment) % x == 0 {
      return i * increment
    }
  }
  
  // The algorithm means it will NEVER get here
  return 0
}

func euler5() -> Void {
  print("PE5: Start")
  print("PE5: Smallest multiple")
  
  print("PE5: samllestMultiple(20) = \(smallestMultiple(20))")
  print("PE5: End\n")
}

