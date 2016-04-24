//
//  ArrayDuplicateNumbers.swift
//
//  Created by Plk Jln on 4/12/16.
//  Copyright © 2016 P Jln. All rights reserved.
//

import Foundation

// Removing duplicated from an Array without taking another array and printing the new array with its new count.

//Approach (A): Using inbuilt SET() in Swift
var arr = [10,10,80,90,10,10,10,10,10,10,80,90,100,20,70]
arr.sortInPlace() //This sorting is optional, just for proper display of elements in ascending order
print("Initial arr: \(arr), count: \(arr.count)")
arr = Array(Set(arr))
print("Final arr: \(arr), count: \(arr.count)")

/* OUTPUT
Initial arr: [10, 10, 10, 10, 10, 10, 10, 10, 20, 70, 80, 80, 90, 90, 100], count: 15
Final arr: [100, 70, 10, 20, 90, 80], count: 6
Program ended with exit code: 0
*/

//Approach (B): Using inbuilt REVOMEATINDEX() in Swift
var arr = [10,10,80,90,10,10,10,10,10,10,80,90,100,20,70]
arr.sortInPlace() //This sorting is optional, just for proper display of elements in ascending order
print("Initial arr: \(arr), count: \(arr.count)")

var count:Int = arr.count // a variable is takem as arr.count is a GET ONLY property, it can be changed by overriding a func.
for var i = count-1; i > 0; i-- {
    if arr[i] == arr[i-1] {
        arr.removeAtIndex(i)
        count = count - 1
    }
}
print("Final arr: \(arr), count: \(arr.count)")

/* OUTPUT
Initial arr: [10, 10, 10, 10, 10, 10, 10, 10, 20, 70, 80, 80, 90, 90, 100], count: 15
Final arr: [10, 20, 70, 80, 90, 100], count: 6
Program ended with exit code: 0
*/
