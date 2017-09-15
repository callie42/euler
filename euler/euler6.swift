//
//  euler6.swift
//  euler
//
//  Created by Callie on 14/9/17.
//  Copyright © 2017 crc. All rights reserved.
//

import Foundation




// The sum of the squares of the first ten natural numbers is,
// 1^2 + 2^2 + ... + 10^2 = 385
//
// The square of the sum of the first ten natural numbers is,
// (1 + 2 + ... + 10)^2 = 55^2 = 3025
//
// Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
//
// Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.



func euler6() -> Void {
  print("PE6: Start")
  print("PE6: Sum Square difference")
  let target = 100
  var sumSquares = 0
  var squaresSums = 0
  for i in 1 ... target {
    sumSquares += i * i
    squaresSums += i
  }
  squaresSums *= squaresSums
  print("PE6: Sum square difference: \(squaresSums - sumSquares)")
  print("PE6: End\n")
}
