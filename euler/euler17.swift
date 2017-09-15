//
//  euler17.swift
//  euler
//
//  Created by Callie on 15/9/17.
//  Copyright © 2017 crc. All rights reserved.
//

import Foundation


//
// If the numbers 1 to 5 are written out in words: one, two, three, four, five, then
// there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
//
// If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
//
// NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and
// 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
//


func toWords(_ value: Int) -> String {
  switch value {
  case 1:
    return "One"
  case 2:
    return "Two"
  case 3:
    return "Three"
  case 4:
    return "Four"
  case 5:
    return "Five"
  case 6:
    return "Six"
  case 7:
    return "Seven"
  case 8:
    return "Eight"
  case 9:
    return "Nine"
  case 10:
    return "Ten"
  case 11:
    return "Eleven"
  case 12:
    return "Twelve"
  case 13:
    return "Thirteen"
  case 14:
    return "Fourteen"
  case 15:
    return "Fifteen"
  case 16:
    return "Sixteen"
  case 17:
    return "Seventeen"
  case 18:
    return "Eighteen"
  case 19:
    return "Nineteen"
  case 20:
    return "Twenty"
  case 21 ... 29:
    return "Twenty " + toWords(value - 20)
  case 30:
    return "Thirty"
  case 30 ... 39:
    return "Thirty " + toWords(value - 30)
  case 40:
    return "Forty"
  case 41 ... 49:
    return "Forty " + toWords(value - 40)
  case 50:
    return "Fifty"
  case 51 ... 59:
    return "Fifty " + toWords(value - 50)
  case 60:
    return "Sixty"
  case 61 ... 69:
    return "Sixty " + toWords(value - 60)
  case 70:
    return "Seventy"
  case 71 ... 79:
    return "Seventy " + toWords(value - 70)
  case 80:
    return "Eighty"
  case 81 ... 89:
    return "Eighty " + toWords(value - 80)
  case 90:
    return "Ninety"
  case 91 ... 99:
    return "Ninety " + toWords(value - 90)
  case 100, 200, 300, 400, 500, 600, 700, 800, 900:
    return toWords(value / 100) + " Hundred";
  case 100 ... 999:
    return toWords(value / 100) + " Hundred and " + toWords(value % 100)
  case 1000:
    return "One Thousand";
  default:
    return "";
  }
}


func euler17() -> Void {
  print("PE17: Start")
  var words: String = ""
  for i in 1 ... 1000 {
    print("PE17: \(toWords(i))")
    words += toWords(i)
  }
  let answer = words.characters.filter({$0 != " "}).count
  print("Answer = \(answer)")
  print("PE17: End\n")
}

