import Foundation
import UIKit
extension NSRegularExpression {
    func matches(_ string: String) -> Bool {
        let range = NSRange(location: 0, length: string.utf16.count)
        return firstMatch(in: string, options: [], range: range) != nil
    }
}

let regex = try? NSRegularExpression(pattern: "[a-z]@gmail.com")
var gmailUsers = [String]()

guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for _ in 1...N {
    guard let firstNameEmailIDTemp = readLine() else { fatalError("Bad input") }
    let firstNameEmailID = firstNameEmailIDTemp.split(separator: " ").map { String($0) }

    let firstName = firstNameEmailID[0]
    let emailID = firstNameEmailID[1]

    if regex?.matches(emailID) ?? false {
        gmailUsers.append(firstName)
    }
}

gmailUsers.sort()
gmailUsers.forEach { print($0) }
