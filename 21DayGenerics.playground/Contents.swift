import UIKit

struct Printer<T> {
    /**
    *    Name: printArray
    *    Print each element of the generic array on a new line. Do not return anything.
    *    @param array A generic array
    **/
    
    // Write your code here
    func printArray(array:Array<T>)  {
        for element in array {
            print(element)
        }
    }
}


var intArray = [1,4,5,6,6]

var stringArray = ["a","b","c"]


Printer<Int>().printArray(array: intArray)
Printer<String>().printArray(array: stringArray)
