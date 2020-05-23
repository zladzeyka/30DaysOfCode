import Foundation
import UIKit

// Defining enum for throwing error
// throw RangeError.NotInRange... is used to throw the error
enum RangeError: Error {
    case NotInRange(String)
}

// Start of class Calculator
class Calculator {
    // Start of function power
    func power(n: Int, p: Int) throws -> Int {
        // Add your code here
        guard n >= 0 && p >= 0 else {
            let strError = "n and p should be non-negative"
            throw RangeError.NotInRange(strError)
        }
        let result = Int(pow(Double(n), Double(p)))
        return result
    } // End of function power
} // End of class Calculator

let myCalculator = Calculator()
let t = Int(readLine()!)!

for _ in 0..<t {
    let np = readLine()!.components(separatedBy: " ").map { Int($0)! }
    let n = np[0]
    let p = np[1]

    do {
        let ans = try myCalculator.power(n: n, p: p)
        print(ans)
    } catch let RangeError.NotInRange(errorMsg) {
        print(errorMsg)
    }
}
