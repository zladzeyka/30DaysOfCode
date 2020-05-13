import UIKit

/*Task
Given an array,A , of N integers, print A's elements in reverse order as a single line of space-separated numbers.
*/
var arr = [1, 4, 3 ,2]
var strReversed = ""

for el in arr.reversed(){
    strReversed.append("\(el) ")
}
strReversed.removeLast()
print(strReversed)
