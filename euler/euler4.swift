//
//  euler4.swift
//  euler
//
//  Created by Calliope on 15/9/17.
//  Copyright © 2017 crc. All rights reserved.
//

import Foundation

//
//
//  A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers
// is 9009 = 91 × 99.
//
//  Find the largest palindrome made from the product of two 3-digit numbers.
//

func euler4() -> Void {
  print("PE4: Start")
  print("PE4: Largest palindrome product of 2, 3 digit numbers")
  var largest = 0
  for i in 100 ... 999 {
    for j in i ... 999 {
      let product = i*j
      var s1 = "\(product)"
      var s2 = ""
      for c in s1.characters.reversed() {
        s2.append(c)
      }
      if ((s1 == s2) && (product > largest)) {
        largest = product
      }
    }
  }
  print("PE4: largest = \(largest)")
  print("PE4: End\n")
}
