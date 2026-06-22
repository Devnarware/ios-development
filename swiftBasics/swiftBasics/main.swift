// basics of swift

// variable and const
// in swift we can use var to create variable and let to create constants

var a = 10 // this is a variable it can be changed 
let b = 10 // this is a constant, it can not be changed

// ---------------------------------------------------------------------------------------------------------

// how to declare variable
// 2 types 

var name = "dev"
var myName: String = "Dev" // specify the type

// ---------------------------------------------------------------------------------------------------------

// different type of print statement 

print("Hello my name is:", myName)
print("hello \(myName) is here") // just like the just like the `${}` in js


// ---------------------------------------------------------------------------------------------------------


/*
 Dfferent types of Datatypes
 
 1. Srting
 2. Boolean
 3. Int
 4. Double - used in mathamatical calculation
 5. Float - used in the unit defining
 
 */


// ---------------------------------------------------------------------------------------------------------


// Arrays in swift

// Are are not of fixed length in the swift as java and go, it act more like arraylist
// how to declare array - 2 types

var arr = [1,2,3,4,5]
var arr2: [Int] = [1,2,3,4,5]
var arr3: [Int]

arr3 = [1,2,3,4,5]

// operations on array

arr.append(6) // add the element in the last
arr.insert(0, at: 0) // add the element anywhere
arr.remove(at: 0) // remove at any specific index
arr.removeLast()  // remove the last element
arr.removeAll() // remove all


// ---------------------------------------------------------------------------------------------------------


// Sets

// Dictionary - just the hashMaps


// ---------------------------------------------------------------------------------------------------------

// function

func addTwoNumber(num: Int,to num2: Int) -> Int{
    return num + num2
}

func add(num: Int, num2: Int) -> Int{
    return num + num2
}


func addThree(num: Int, to num2: Int, kuchBhi num3: Int) -> Int{
    return num + num2 + num3
}


// ---------------------------------------------------------------------------------------------------------


// For Loop
// loop on array or set or dictionary

var numbers: [Int] = []

for _ in 0..<5{
    let randomNum = Int.random(in: 1...100)
    numbers.append(randomNum)
}

print(numbers)

var sum = 0
for num in numbers where num%2 == 0{
        sum += num
}

// ---------------------------------------------------------------------------------------------------------




