//
//  euler16.swift
//  euler
//
//  Created by Callie on 15/9/17.
//  Copyright © 2017 crc. All rights reserved.
//

import Foundation



//
// 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
//
// What is the sum of the digits of the number 2^1000?
//



func euler16() -> Void {
  print("PE16: Start")
  print("PE16: Power Sum Digit")
  var power = BigInt(s: "2")
  for _ in 2 ... 1000 {
    power = power.add(power)
  }
  // We now have 2^1000 (a ~300 digit number)
  
  // OK Use map to do the work
  let sum = power.value.reduce(0, +)
  
  print("PE16: 2^1000 = \(power)")
  print("PE16: sum of digits in 2^1000 = \(sum)")

  print("PE16: End\n")
}
