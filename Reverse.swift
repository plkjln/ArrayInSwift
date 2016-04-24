// Reverse a string/Number using array

import Foundation

// number of elements inside the array
var n = Int(readLine()!)!

// read array from the console
var arr = readLine()!.characters.split(" ").map(String.init)

// iterate over the array in reverse order and print the elements separated by space
for (var i = n - 1; i >= 0; i-=1) {
    print(arr[i], terminator: " ")
}


/* INPUT
-> 4
-> 1 4 3 2
OUTPUT
-> 2 3 4 1

INPUT
->4
->1 3 S D
OUTPUT
->D S 3 1
*/
