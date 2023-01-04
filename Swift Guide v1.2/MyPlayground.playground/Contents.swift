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

