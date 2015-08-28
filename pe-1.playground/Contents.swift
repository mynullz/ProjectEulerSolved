//: Playground - noun: a place where people can play

import Cocoa

var sum = 0
var index = 0
for index in 1...999 {
    if index % 3 == 0 || index % 5 == 0 {
        sum += index
    }
}

println(sum)