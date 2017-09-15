//
//  euler10.swift
//  euler
//
//  Created by Callie on 15/9/17.
//  Copyright © 2017 crc. All rights reserved.
//

import Foundation



//
//  The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
//
//  Find the sum of all the primes below two million.
//

func euler10() -> Void {
  var sum = 0
  for i in 1 ..< 2000000 {
    if isPrime(i) {
      sum += i
    }
  }
  print("PE10: Summation of primes \(sum)")
}
