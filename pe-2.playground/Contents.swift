//: Playground - noun: a place where people can play

import Cocoa

// recursive
//func fibo(n : Int) -> Int
//{
//    if (n==0) {return 0}
//    if (n==1) {return 1}
//    return fibo(n-1) + fibo(n-2)
//}

func fibo(n : Int) -> Int
{
    var x=0,y=1,z=0
    for i : Int in 1...n {
        z = x + y
        x = y
        y = z
    }
    return z
}

var sum : Int = 0, Index = 0
for Index in 2...40 {
    var fiboResult = fibo(Index)
    if fiboResult % 2 == 0 && fiboResult <= 4000000 {
        sum += fiboResult
    }
    
    if fiboResult > 4000000 {
        break
    }
}

print(sum)