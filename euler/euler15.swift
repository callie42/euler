//
//  euler15.swift
//  euler
//
//  Created by Callie on 15/9/17.
//  Copyright © 2017 crc. All rights reserved.
//

import Foundation

//
// Pre-calcuated answers
//
// Lattice 1 = 2
// Lattice 2 = 6
// Lattice 3 = 20
// Lattice 4 = 70
// Lattice 5 = 252
// Lattice 6 = 924
// Lattice 7 = 3432
// Lattice 8 = 12870
// Lattice 9 = 48620
// Lattice 10 = 184756
// Lattice 11 = 705432
// Lattice 12 = 2704156
// Lattice 13 = 10400600
// Lattice 14 = 40116600
// Lattice 15 = 155117520
// Lattice 16 = 601080390
// Lattice 17 = 2333606220
// Lattice 18 = 9075135300
// Lattice 19 = 35345263800
// Lattice 20 = 137846528820
//


// Return the lattice path count for x*y grid

func lattice(x n: Int, y m: Int) -> Int {
  if n == 0 || m == 0 {
    return 1
  }
  
  if (n == m) {
    return 2 * lattice(x: n-1, y: m)
  } else {
    return lattice(x: n-1, y: m) + lattice(x: n, y: m-1)
  }
}


// We construct the grid from the ground up, we don't explore the paths, as
// much as pre-seed them, avoiding vast amounts re-treading terrain

// This is orders of magnitude faster than version 1
func lattice2(_ x: Int, _ y: Int) -> Int {

  // First we initialise the grid, to 0
  var latticeCache = [[Int]](repeating: [Int](repeating: 0, count: 21), count: 21)
  
  // Then we seed the outer edges to 1, there is obviously only 1 route when you're on the edge
  for i in 0 ... 20 {
    latticeCache[i][0] = 1
    latticeCache[0][i] = 1
  }
  
  // Now, for an x,y location the paths is obviously the sum of the 2 nearby points
  for i in 1 ... 20 {
    for j in 1 ... 20 {
      latticeCache[i][j] = latticeCache[i][j-1] + latticeCache[i-1][j]
    }
  }
  
  // As overkill print entire set of results
  for i in 1 ... 20 {
    print("(\(i)) = \(latticeCache[i][i])")
  }
  
  // This is the ONE value asked for
  return(latticeCache[x][y])
}


// This approach is a brute force method, it annoys me, but it works
func euler15() -> Void {
  print("PE15: Start")
  print("PE15: Lattice Paths")
  
  print("Lattice(20) = \(lattice2(20, 20))")
  
  print("PE15: End\n")
}
