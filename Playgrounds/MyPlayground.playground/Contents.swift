//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var stringArray = [String?]()
stringArray = ["a", "b", nil,"c"]

print(stringArray)

let digits = [1,4,10,15]
let square = digits.map{$0 * $0}
let minus = digits.map{$0 - 1}
print(square)
print(minus)

let even = digits.filter { $0 % 2 == 0 }
print(even)

let numbers = [20,17,35,4,12]
let evenSquares = numbers.filter{$0 % 2 == 0}.map{$0 * $0}
let evenSquares1 = numbers.map{$0 * $0}.filter{$0 % 2 == 0}
print(evenSquares)
print(evenSquares1)

//Generic Function

func adding<T>(firstElement a: T, secondElement b: T) -> T {
    
    return a + b
}

func swapping<myType>(firstElement a: inout myType, secondElement b: inout myType) {
    let temp = a
    a = b
    b = temp
}

var fff = 4
var sss = 7

print(fff)
print(sss)

swapping(firstElement: &fff, secondElement: &sss)

print(fff)
print(sss)

//Equatable and Comparable

struct State {
    let name: String
    let capital: String
    let visited: Bool
}

func == (lhs: State, rhs: State) -> Bool{
    return lhs.name == rhs.name && lhs.capital == rhs.capital && lhs.visited == rhs.visited
}

let karnataka = State(name: "Karnataka", capital: "Bangalure", visited: true)
let maharashtra = State(name: "Maharashtra", capital: "Mumbai", visited: false)
let uttarPradesh = State(name: "UttarPradesh", capital: "Lucknow", visited: true)
let rajasthan = State(name: "Rajasthan", capital: "Jaipur", visited: false)
let kerla = State(name: "Kerla", capital: "Trivendrum", visited: true)
let tamilNadu = State(name: "TamilNadu", capital: "Chennai", visited: false)

let stateList = [uttarPradesh,karnataka,rajasthan,maharashtra,kerla]

let object = karnataka
let containsObject = stateList.contains { (state) -> Bool in
    return state.name == object.name && state.capital == object.capital && state.visited == object.visited
}


// Tuple
var tuple = ("Hello","Agent" ,"oo7",true, 0909)
print("\(tuple.0)")
print(tuple.1)
print(tuple.2)
print(tuple.3)




// Array sort
var array1 = [1,4,6,7,2,8,3,4,9,5]

array1.sorted(by: { (obj1, obj2) -> Bool in
    return obj1 > obj2
})

print(array1)

// Array filter

var array2 = ["1","2","1","9","1","7","6","1","1","2","1"]

array2.filter { $0 == "1" }

print(array2)


