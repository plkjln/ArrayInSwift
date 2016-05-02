//
//  BubbleSort.swift
//  Sorting
//
//  Created by P Jln on 5/2/16.
//  Copyright © 2016 Plk Jln. All rights reserved.
//

import Foundation

// Bubble Sort technique, displaying the total swaps required to sort the array, printing the 1st and last number from the sorted array.

var n = Int(readLine()!)! // Total numbers to be inputed for sort
var num = readLine()!.characters.split(" ").map{Int(String($0))!} // The Numbers to be sorted inputted in an Array

print("Actual Num: \(num)") // Before sorting the array of numbers
var numberOfSwaps = 0

for i in 0..<n {
    for j in 0..<n-1 {
        if num[j] > num[j+1] {
            swap(&num[j], &num[j+1])
            numberOfSwaps += 1
        }
    }
    if numberOfSwaps == 0 {
        break
    }
}

print("Array is sorted in \(numberOfSwaps) swaps.")
print("First Element: \(num.minElement()!)")
print("Last Element: \(num.maxElement()!)")
print("Num Sorted:\(num)") // The Array after sorting


/*INPUT
 3
 2 4 1
 OUTPUT
 Actual Num: [2, 4, 1]
 Array is sorted in 2 swaps.
 First Element: 1
 Last Element: 4
 Num Sorted:[1, 2, 4]
 */
