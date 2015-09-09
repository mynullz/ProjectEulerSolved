//: Playground - noun: a place where people can play
// https://projecteuler.net/problem=3

import Cocoa

func isPrime(n: Int) -> Bool {
    if n < 2 { return false }
    for i in 2...n {
        if n % i == 0 { return false }
    }
    return true
}

func findBigPrime(n: Int) -> Int {
    let isOdd = (n % 2) == 1 ? true : false
    var prime: Int = 0
    for (var j = isOdd ? 3 : 2; j < n; j += 2) {
        if n % j == 0 {
            if isPrime(j) {
                prime = j
                break;
            }
        }
    }
    
    if prime != 0 {
        print(prime)
        return findBigPrime(n / prime)
    }
    print(n)
    return n
}

print(findBigPrime(600851475143))

