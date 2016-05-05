//
//  main.swift
//  SparseArray
//
//  Created by P Jln on 5/4/16.
//  Copyright © 2016 Plk Jln. All rights reserved.
//
/*There are N strings. Each string's length is no more than 20 characters. There are also Q queries. 
 For each query, you are given a string, and you need to find out how many times this string occurred previously.
INPUT
 4 // No. string that will be inputted by the user
 aba
 baba
 aba
 xzxb
 3 // No. of query strings that will be inputted by the user
 aba
 OUTPUT-> 2
 xzxb
 OUTPUT-> 1
 ab
 OUTPUT-> 0
 Program ended with exit code: 0
 
// Here, "aba" occurs twice, in the first and third string. The string "xzxb" occurs once in the fourth string, and "ab" does not occur 
at all. */
 
import Foundation

var t = Int(readLine()!)! //Input no. of strings
var arrStr = [String]()
while t-- > 0 {
    var str = readLine()!
    arrStr.append(str)
}
//print(arrStr) //  ["aba", "baba", "aba", "xzxb"]

var q = Int(readLine()!)! // No. of Query strings
while q-- > 0{
    var currStr = readLine()!
    var count = 0
    for (i,char) in arrStr.enumerate() {
        if char == currStr {
            count += 1
        }
    }
    print(count)
}
