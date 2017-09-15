//
//  euler7.swift
//  euler
//
//  Created by Callie on 15/9/17.
//  Copyright © 2017 crc. All rights reserved.
//

import Foundation

// 10001st prime

func euler7() -> Void {
  print("PE7: Start")
  print("PE7: 10001st prime")
  var primeCandidate = 3
  var primes = [2]
  while (primes.count < 10001) {
    if isPrime(primeCandidate) {
      primes.append(primeCandidate)
    }
    primeCandidate += 2
  }
  
  print("PE7: 10001 prime = \(primes.last!)")
  print("PE7: End\n")
}
