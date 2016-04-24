//  array2D.swift
//
//  Created by Plk Jln on 4/22/16.
//  Copyright © 2016 P Jln. All rights reserved.
//
/*A: 6×6 2D Array
//Define an hourglass in A to be a subset of values with indices falling in this pattern in A's graphical representation:
    a b c
      d
    e f g
 There are 16 hourglasses in A, and an hourglass sum is the sum of an hourglass' values. Calculate the hourglass sum for every hourglass in A, then print the maximum hourglass sum.
 INPUT: There are 6 lines of input, where each line contains 6 space-separated integers describing 2D Array A; every value in A will be in the inclusive range of −9 to 9; (−9 ≤ A[i][j] ≤ 9) & (0 ≤ i,j ≤ 5) 
 OUTPUT: Print the largest (maximum) hourglass sum found in A.
*/

import Foundation

//Custom 6x6 2D Array values, inputted by the user
/*var arr = [[Int]]()
for i in 0..<6 {
    var row = readLine()!.characters.split(" ").map{Int(String($0))!}
    arr.append(row)
}
print(arr) // arr: 6X6, 2D*/

// Constant values for the 6x6 2D Array
var arr = [[1,1,1,0,0,0],[0,1,0,0,0,0],[1,1,1,0,0,0],[0,0,2,4,4,0],[0,0,0,2,0,0],[0,0,1,2,4,0]]

var final = [Int]()

for i in 0..<4 {
    var eachIFirst = 0
    var eachISecond = 0
    var eachImid = 0
    var eachI = 0
    for j in 0..<4 {
        eachIFirst  = (arr[i][j] + arr[i][j+1] + arr[i][j+2])
        eachImid    = (arr[i+1][j+1])
        eachISecond = (arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2])
        
        eachI = eachIFirst + eachImid + eachISecond
        final.append(eachI)
    }
}
 print("Maximum sum of elements is \(final.maxElement()!)")
 
 /*
 INPUT
 [[1, 1, 1, 0, 0, 0], [0, 1, 0, 0, 0, 0], [1, 1, 1, 0, 0, 0], [0, 0, 2, 4, 4, 0], [0, 0, 0, 2, 0, 0], [0, 0, 1, 2, 4, 0]]
 OUTPUT
Maximum sum of elements is 19 // 2 4 4 : eachIFirst 
                                   2   : eachImid
                                 1 2 4 : eachIsecond
 */
