// Declaring and accessing an array
import Foundation

var emptyArray: [Int] = [] // Initial array declaration and empty values assignment

var arrayOfInts: [Int] = [1, 10, 3] // Array with Interger values
var arrayOfStrings: [String] = ["We", "created", "array", "Swift"] 

print(arrayOfInts.count) // Output is total number of elements in the array: 3

//To output each element of the Integer array on different lines
for number in arrayOfInts {
    print(number)
} 
// OUTPUT
// 1
// 10
// 3

// Adding values in the empty array and printing
for i in 1...5 {
    emptyArray.append(i)
}
print(emptyArray) // OUTPUT: [1, 2, 3, 4, 5]

// Inserting values in an array using += operator
arrayOfInts += [12, 2]
print(arrayOfInts) // OUTPUT: [1, 10, 3, 12, 2]

//Changing existing values in Array at a particular index
arrayOfInts[0] = 15
print(arrayOfInts) // OUTPUT: [15, 10, 3, 12, 2]

//Changing existing values in Array at a sequence of indices
arrayOfInts[2...4] = [0, 0]
print(arrayOfInts) // OUTPUT: [15, 10, 0, 0]

// Inserting values in an array at a particular index
arrayOfStrings.insert("in", atIndex: 3)
arrayOfStrings.insert("our", atIndex: 4)
print(arrayOfStrings) // OUTPUT: ["We", "created", "array", "in", "our", "Swift"]

// Removing values from an array at a particular index
arrayOfStrings.removeAtIndex(4)
print(arrayOfStrings) // OUTPUT: ["We", "created", "array", "in", "Swift"]


