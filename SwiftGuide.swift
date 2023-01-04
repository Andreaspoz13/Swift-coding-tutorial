//Welcome to this little nice Guide
//This guide is constantly updated when I have some free time so go and check it out.
//It explains everything about Swift.
//It's still not finished but it gets constant updates
//This is the start of the file

import UIKit

var str:String = "Hello, playground"

var a = 20
var b = 555

print(a + b)
let constant = 10 //constants cant change value
                    //once assigned
var c = 100
print(a * b * c)
print(" that's how you use variables(for now)")

var f:String = "this is a string"
var e:Int = 10 //this is an int that stores a number
var float:Float = 10.1 // this one stores decimals
var double:Double = 10.33 // this stores BIG decimals
var isItTrue:Bool = true //this stores values of true or false

print(Int(float)) // converts float to int
print(Int(double)) //converts double to int
print(Float(double))// converts "double" to a float
print(round(double)) //rounds this number
print(Int(round(float))) //rounds up and converts the float to Int with no decimals

//IF...ELSE STATEMENTS
let constantA = 5
let constantB = 10
let constantC = 8

if constantA > 6 {
    print("a is bigger than 6")
}
else{
    print("a is not bigger than 6") // decides which shall be printed // prints this if the other
                                                                      // contitions are not true
}

if constantA == 5 {
    print("a is equil(=) to 5")
}
else if constantA != 5 {                //else if runs if the other condition is not true
    print("a is not equil(!=) to 5")
}
else{
    print("no condition is true!") // else runs if none conditions are true!
}
let greetingForNow:String = "That's all about if statements!"
print(greetingForNow) // this prints the variable "greetingForNow"

//LOOPS part 1

for index in 1...5 {
    print("this will repeat 5 times") // repats print 5 times!
}
print(index) //this will not get recognised as a function. (its not included in the for in loop!).

for example_2 in 1...5 {
    print("nice example here!") // prints out his 5 times as said
}

for index in 1...5 {
    var sum:Int = 10
    sum += index
    //sum = sum + index // line 65 and 66 basically do the same thing
                        // += is equal to: variable2 + variable3
                        // cant use function/var outside of for loop if only in for loop
    print(sum) // --> basically adds 5 to sum and prints this result!
}

//LOOPS part 2


var whileCounter = 5

while whileCounter > 0 {  //if the condition is met it's going to loop like a for loop the code in the                        //{}
    print("hello")
    whileCounter -= 1   // this is equal to varExample = varExample -1
    //this will decrement the value of whileCounter so it won't loop the while loop forever and crash
    
}

var repeatCounter = 0
repeat {
    print("hello Mr. repeat-loop!")
    repeatCounter -= 1
}while repeatCounter > 0
// this instead runs the command in the repeat loop once and then checks the while condition after
// this is why the print command runs only once and then stops. Try it yourself with another number!
