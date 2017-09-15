//
//  euler9.swift
//  euler
//
//  Created by Callie on 15/9/17.
//  Copyright © 2017 crc. All rights reserved.
//

import Foundation




// A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
//                         a^2 + b^2 = c^2
//
//  For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
//
// There exists exactly one Pythagorean triplet for which a + b + c = 1000.
// Find the product abc.


func euler9() -> Void {
  print("PE9: Start")
  print("PE9: Special Pythagorean triplet")
  
  // This is simplistric, but works
  for a in 1 ... 499 {
   for b in a+1 ... 500 {
     let c = 1000 - a - b
     if (a*a + b*b) == c*c {
       print("PE9: \(a) \(b) \(c) \(a*b*c)")
     }
   }
  }
  
  print("PE9: End\n")
}
