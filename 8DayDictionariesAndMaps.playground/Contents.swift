import UIKit

/*Task
Given n names and phone numbers, assemble a phone book that maps friends' names to their respective phone numbers. You will then be given an unknown number of names to query your phone book for. For each name queried, print the associated entry from your phone book on a new line in the form name=phoneNumber; if an entry for name is not found, print Not found instead.
Note: Your phone book should be a Dictionary/Map/HashMap data structure.
*/
let n = Int(readLine()!)!

var phoneBook = [String: String]()

for _ in 0...n - 1 {
    // read contacts into phone book
    let currentLine = readLine()!.split(separator: " ")
    phoneBook[String(currentLine[0])] = String(currentLine[1])
}

var queryName = readLine()
while queryName != nil {
    if phoneBook[queryName!] != nil {
        print("\(queryName!)=\(phoneBook[queryName!]!)")
    } else {
        print("Not found")
    }
    queryName = readLine()
}
