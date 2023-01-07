//
//  chatGPT.swift
//  
//
//  Created by Andreas Pozotos on 07/01/2023.
//

import Foundation



// Declare a constant and a variable
let constant = "This is a constant"
var variable = "This is a variable"

// Use string interpolation to print the values of the constant and variable
print("The value of the constant is: \(constant)")
print("The value of the variable is: \(variable)")

// Change the value of the variable
variable = "The value of the variable has been changed"

// Print the new value of the variable
print("The new value of the variable is: \(variable)")

// Declare an array and a dictionary
let array = [1, 2, 3]
let dictionary = ["key1": "value1", "key2": "value2"]

// Use a for-in loop to iterate over the array
for number in array {
    print("The number is: \(number)")
}

// Use a for-in loop to iterate over the dictionary
for (key, value) in dictionary {
    print("The key is: \(key), and the value is: \(value)")
}

// Declare a function that takes two arguments and returns their sum
func add(x: Int, y: Int) -> Int {
    return x + y
}

// Call the function and print the result
let result = add(x: 1, y: 2)
print("The result is: \(result)")

