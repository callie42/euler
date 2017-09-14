//
//  euler1.swift
//  euler
//
//  Created by Calliope on 14/9/17.
//  Copyright © 2017 crc. All rights reserved.
//

import Foundation

func euler1() -> Void {
  print("PE1:")
  var sum: Int = 0
  for i in 1..<1000 {
    if ((i % 3 == 0) || (i % 5 == 0)) {
      sum += i
    }
  }
  print("Sum of multiples of 3 & 5 below 1000 is \(sum)")
  print("PE1: End")
}// Multiples of 3 and 5


