import UIKit

//Write a Person class with an instance variable, age , and a constructor that takes an integer, initialAge , as a parameter. The constructor must assign  to  after confirming the argument passed as  is not negative; if a negative argument is passed as , the constructor should set  to  and print Age is not valid, setting age to 0.. In addition, you must write the following instance methods:
//yearPasses() should increase the  instance variable by .
//amIOld() should perform the following conditional actions:
//If age < 13, print You are young..
//If  age >= 13 and < 18 , print You are a teenager..
//Otherwise, print You are old..
//To help you learn by example and complete this challenge, much of the code is provided for you, but you'll be writing everything in the future. The code that creates each instance of your Person class is in the main method. Don't worry if you don't understand it all quite yet!
//Note: Do not remove or alter the stub code in the editor.


class Person {
    var age: Int = 0

    init(initialAge: Int) {
        // Add some more code to run some checks on initialAge
        if (initialAge < 0) {
            age = 0
            print ("Age is not valid, setting age to 0.")
        } else {
            age = initialAge
        }

    }

    func amIOld() {
        // Do some computations in here and print out the correct statement to the console
        if (age < 13){
            print ("You are young.")
        } else if (age >= 13 && age < 18){
            print ("You are a teenager.")
        } else {
            print ("You are old.")
        }
    }

    func yearPasses() {
        // Increment the age of the person in here
        age += 1
    }
}
  var person = Person(initialAge: 6)
  person
