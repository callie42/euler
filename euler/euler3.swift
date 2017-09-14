//
//  euler3.swift
//  euler
//
//  Created by Calliope on 14/9/17.
//  Copyright © 2017 crc. All rights reserved.
//

import Foundation


// return whwther a number is prime or not

func isPrime(candidate: Int) -> Bool {
  var i = 2.0
  while i <= floor(sqrt(Double(candidate))) {
    if candidate % Int(i) == 0 {
      return false
    }
    i += 1.0
  }
  return true
}


//
// The prime factors of 13195 are 5, 7, 13 and 29.
// What is the largest prime factor of the number 600851475143 ?
//


func euler3() -> Void {
  print("PE3: Start")
  print("PE3: looking for the largest prime factor of 600851475143")
  let candidate = 600851475143
  var primeFactors = [Int]()
  for i in 2 ... Int(floor(sqrt(Double(candidate)))) {
    if ((candidate % i == 0) && isPrime(candidate: i)) {
      primeFactors.append(i)
    }
  }
  print("PE3: Prime factors are \(primeFactors)")
  print("PE3: largest prime factor = \(primeFactors.last!)")
  print("PE3: End\n")
}
