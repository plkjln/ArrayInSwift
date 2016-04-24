//
//  ArrayElementSearch.swift
//  ArrayElementSearch
//  Copyright © 2016 Plk Jln. All rights reserved.
//

import Foundation

//An array inputed by user with random number. A number is searched inside it and its index is thrown if it exists, else "Not found"
print("Enter number to be searched: ", terminator:"")

var num = Int(readLine()!)!   // Number to be searched in side the Array
var n = 6//Int(readLine()!)!  // The number of entries the Array will have
//let arr = [1,4,5,7,9,12]   // constant declaration of the Array

// read array and map the elements to integer
print("Enter the \(n) numbers for the array: ", terminator:"")
var arr = readLine()!.characters.split(" ").map{Int(String($0))!} //Array elements inputted by the user separated by space

if arr.contains(num) == true {
print(arr.indexOf(num)!)
} else {
print("Arr \(arr) does not contain element \(num)")
}

/* INPUT
Enter number to be searched: 11
Enter the 6 numbers for array: 1 4 5 6 7 3
OUTPUT
Arr [1, 4, 5, 6, 7, 3] does not contain element 11
Program ended with exit code: 0 
INPUT
Enter number to be searched: 4
Enter the 6 numbers for array: 1 4 5 6 7 3
OUTPUT
1
*/
