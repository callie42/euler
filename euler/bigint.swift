//
//  bigint.swift
//  euler
//
//  Created by Callie on 15/9/17.
//  Copyright © 2017 crc. All rights reserved.
//

import Foundation


// A class whose purpose is just to handle arbitrary arge integers
// currently onky has the add operation

class BigInt : CustomStringConvertible {
  // Represent a bigint as an array of int, counting backwards, ie element zero is the 10^0 slot
  
  var value = [Int]()
  var length = 0
  
  var description : String {
    var val = ""
    for i in value.indices.reversed() {
      val += String(value[i])
    }
    return val
  }
  
  init () {
  }
  
  init(s: String) {
    for i in String(s.characters.reversed()).characters {
      self.value.append(Int("\(i)")!)
    }
    self.length = self.value.count
  }
  
  func set(_ s: String) {
    //    self.value = s
  }
  
  func add(_ a: BigInt) -> BigInt {
    var result = ""
    var carry = 0
    for i in 0 ..< max(self.length, a.length) {
      let first = i < self.length ? self.value[i] : 0
      let second = i < a.length ? a.value[i] : 0
      let t = first + second + carry
      carry = t >= 10 ? 1 : 0
      result += "\(t % 10)"
    }
    if carry == 1 {
      result += "1"
    }
    return BigInt(s: String(result.characters.reversed()))
  }
}
