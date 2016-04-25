/*Creating a 2 dimenional array with dynamic rows(R) and columns (C)
Structure of the array will be in the form a matrix RxC, where R = C. Deduce a formula to create the below structure for any given number (N):
if N = 3                            if N = 2
Output: 3 3 3 3 3                   Output: 2 2 2
        3 2 2 2 3                           2 1 2
        3 2 1 2 3                           2 2 2
        3 2 2 2 3
        3 3 3 3 3
*/

import Foundation

var number = Int(readLine()!)! // Maximum number in the array
var arrayLength:Int = (2 * number) - 1
var row = arrayLength
var col = arrayLength
var array = [[Int]]()

print(arrayLength)

// Initializaing the Array and building its matrix structure
for column in 0..<arrayLength {
    array.append(Array(count:arrayLength, repeatedValue:Int()))
}
//print("Initial Array: \(array)") // Uncomment to see the array


var max = arrayLength - 1

 for i in 0..<row {
    for(var j = i; j < row; j++) {
       
        array[i][j]=number
        array[j][i]=number
        array[j][max-i]=number
        array[max-i][j]=number
    }
    number -= 1
    col -= 1
    row -= 1
}

print("Output is")
for (i,row) in array.enumerate() {
    print(row)
}

/*INPUT
5
//OUTPUT
9
Output is
[5, 5, 5, 5, 5, 5, 5, 5, 5]
[5, 4, 4, 4, 4, 4, 4, 4, 5]
[5, 4, 3, 3, 3, 3, 3, 4, 5]
[5, 4, 3, 2, 2, 2, 3, 4, 5]
[5, 4, 3, 2, 1, 2, 3, 4, 5]
[5, 4, 3, 2, 2, 2, 3, 4, 5]
[5, 4, 3, 3, 3, 3, 3, 4, 5]
[5, 4, 4, 4, 4, 4, 4, 4, 5]
[5, 5, 5, 5, 5, 5, 5, 5, 5]

//INPUT
3
//OUTPUT
5
Output is
[3, 3, 3, 3, 3]
[3, 2, 2, 2, 3]
[3, 2, 1, 2, 3]
[3, 2, 2, 2, 3]
[3, 3, 3, 3, 3]
*/
