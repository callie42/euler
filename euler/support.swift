//
//  support.swift
//  euler
//
//  Created by Callie on 15/9/17.
//  Copyright © 2017 crc. All rights reserved.
//

import Foundation

// See if the candidate number is prime
func isPrime(_ candidate: Int) -> Bool {
  var i = 2
  while i <= Int(sqrt(Double(candidate))) {
    if candidate % i == 0 {
      return false
    }
    i += 1
  }
  return true
}
