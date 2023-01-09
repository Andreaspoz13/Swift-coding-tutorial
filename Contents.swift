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

//FUNCTIONS part 1

//functions are basicaly commands you call to call a bunch of code that is located inside the function
func substractNumbers() {
    let a = 5
    let b = 10                      //this is a function
    let finalResult = b - a
    print(finalResult)
}
substractNumbers() // this basically runs the specific lines of code inside the function
//please note that you cannot declare variables that are not inside the function
//this also applies to loops. I also forgot to mention that methods and functions are the same thing!

//Classes part 1
//A Class is like a blueprint of an object. more like a template you should call it!
class WebsiteInfo {
    var name:String = ""
    var author:String = ""
    var comments:Int = 0        //this is our class also known as a little template for us to use!
    
    func addComment() {
        comments += 1
    }
    func addFiveComments() {
        for addFiveComments in 1...5 {
            addComment()
        }
    }
}

let firstPost = WebsiteInfo()
firstPost.name = "Some random title"            //we then use the template and create an actual thing                                               //with it
firstPost.author = "Andreas Katsigiannis"
firstPost.comments = 0
firstPost.addComment()
print(firstPost.comments)

let secondPost = WebsiteInfo()
secondPost.name = "How to get infinite money!"
secondPost.author = "Rikkos Mappouros"
secondPost.comments = 10
secondPost.addFiveComments() //here i created a new method that adds 5 comments
print(secondPost.comments)

func printPost() {
    print(secondPost.name)
    print(secondPost.author)
    print("comments -->")
    print(secondPost.comments)
}
printPost()  //right here I created a function that prints out every info the post has to offer!

//CLASSES part 2

class Car {
    var topSpeed:Int = 200
    func drive() {
        print("driving at \(topSpeed)")
    }
}
class FlyingCar {
    var topspeed:Int = 250
    
    func fly() {
        print("flying at \(topspeed)")
    }
    func drive() {
        print("driving at \(topspeed)")
    }
}

let myRide = Car()
myRide.drive()
print(myRide.topSpeed)

let myFuturisticDrive = FlyingCar()
myFuturisticDrive.drive()
myFuturisticDrive.fly()
//you've probably noticed already but both cars have similar components.
//in this part we will learn how to use components from a parent class on a child class/subclass

class Car_2 { //this is our parent class
    var topSpeed:Int = 200
    func drive() {
        print("Driving at \(topSpeed)")
    }
}
let myRide2 = Car_2()
myRide2.drive()
myRide2.topSpeed

class MyFuturisticRide: Car_2 { //by using the : symbo we can define our parent class and use stuff form                                //that class
    override func drive() { //using override allows us to override stuff from the parent class and use them                     //in our subclass
        print("driving at \(topSpeed + 100)")
    }
    func fly() {
        print("flying at \(topSpeed + 50)")
    }
    
}
let myFuturisticRide2 = MyFuturisticRide()
myFuturisticDrive.drive()
myFuturisticDrive.fly()
print(myFuturisticDrive.topspeed)

//now we can easily use functions and variables from our parent class in our subclass
// you can also use "super.*yourparentclass's something" to call a function from the parentclass

//UIKit
//UIKit is a framework proided officially by Apple. it provides many things that make coding with Swift and
//generally Apple platforms alot more easier!
//To learn more about it check it out at developer.apple.com!

//Initializers part 1
class RandomPerson {
    var name:String = ""
    var age:Int = 0
    
    init() {
        //You can set up your object here
        name = "Tim"
        age = 60
        // we just customized our randomPerson object!
    }
}
let person = RandomPerson() //by using () you are actually calling an initializer
person.name
person.age

//Optionals
class myPost {
    var name:String? //by using ? we tell the program that we dont have a value assigned to the variable
    var author:String?
    var comments:Int = 20
}
let post = myPost()
post.name //this shows us .nil wich means it doesnt have any value assigned to it!
post.author //same with the author
post.comments //however we actually know how many comments we have in this variable(no nil)

post.name = "testing"
//Testing for nil
if post.name != nil { //testing if nil is not there
    //Optional has value
    print(post.name! + " hello there!") //the ! forces the system to accept the value
}

if post.name == nil {
    //Contains no value
    //do nothing
}
//Arrays(my words)
//Array is a collection of data ordered by indexes
var animals = ["cat", "dog", "parrot"] //this is an array
print(animals[0], animals[1], animals[2]) //this prints out our animals
//arrays start with zero so cat is number 0 and dog is 1
//let's use a for loop
for animalCounter in 0...2 {
    print("loop " + animals[animalCounter]) //this uses the animalCounter with the array to print out the                                                                                animals
}
var emptyArray = [String]() //this creates an empty array that should store only string values
//you cant remove items from an array like this -->
// animals -= ["cat"]
//instead we have some commands you can use for an array
animals.remove(at: 1) //this removes the dog (index 1)
animals.append("owl") //this adds a new item in the array
//you can also use this which does the same thing!
animals += ["iguana"] //this is equal to the append command
print(animals) //prints out the variable that stores the array
animals[1] = "cat better lol" //this changes the value of the index 1 with this string
print(animals.count) //this counts the number of indexes right now it is 4
print(animals.capacity) //this shows how much storage the array has
animals.distance(from: 2, to: 4) //shows the distance between two indexes

//Dictionaries
//Declare a new dictionary
var myCarKey = [String:String]() //declaring it
myCarKey["Ohio 923"] = "Mazda 3"
myCarKey["Florida 696"] = "orange lamborghini"
myCarKey["California 816"] = "Blue BMW"

//Retrieve data from a dictionary
myCarKey["Ohio 923"] //without the ()

//Update it's properties
myCarKey["Ohio 923"] = "Black Mercedes"

//printing it's properties
print(myCarKey["Ohio 923"])

//remove one
myCarKey["Florida 696"] = nil //nil is basically an optional aka empty variable as seen in previous lessons

//Itarate over it
for (license, car) in myCarKey {
    
    print("\(car) has a license of \(license)") //this should iterate over all the car keys!
}










//Arrays(ChatGPT impression)
// Create an array of integers
var numbers = [1, 2, 3, 4, 5]

// Access an element of the array using its index
var firstNumber = numbers[0]  // firstNumber will be 1
var thirdNumber = numbers[2]  // thirdNumber will be 3

// Modify an element of the array using its index
numbers[4] = 6

// Add a new element to the end of the array
numbers.append(7)

// Use a for-in loop to iterate over the array
for number in numbers {
    print("The number is: \(number)")
}

// Get the number of elements in the array
let count = numbers.count  // count will be 6

// Check if the array is empty
if numbers.isEmpty {
    print("The array is empty")
} else {
    print("The array is not empty")
}

//Here is another example of an array
let names = ["Alice", "Bob", "Charlie"]

// Print the first element of the array
print(names[0])  // Output: "Alice"

// Print the number of elements in the array
print(names.count)  // Output: 3

// Iterate over the elements of the array
for name in names {
    print(name)
}

