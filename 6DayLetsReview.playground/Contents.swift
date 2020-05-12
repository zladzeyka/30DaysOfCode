//Task
//Given a string, string, of length N that is indexed from 0 to N-1, print its even-indexed and odd-indexed characters as  space-separated strings on a single line (see the Sample below for more detail).
//Note:  is considered to be an even index.
//Sample Input:
//2
//Hacker
//Rank
//Sample Output:
//Hce akr
//Rn ak

import UIKit

let str = "Hacker"

func printEvenAndOdd(string: String) {
    // This prints inputString to stderr for debugging:
    fputs("string: " + string + "\n", stderr)
    
    // Print the even-indexed characters
    // Write your code here
    let strArray = Array(string)
    var evenChars = ""
    var oddChars = ""
    for index in 0...strArray.count-1 {
        if index % 2 == 0 {
    // Collect even-indexed characters
            evenChars.append(strArray[index])
        } else {
    // Collect odd-indexed characters
            oddChars.append(strArray[index])
        }
    }
    print(evenChars,oddChars)
}

let res: () = printEvenAndOdd(string: str)
