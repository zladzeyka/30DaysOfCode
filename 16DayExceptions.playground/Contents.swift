import Foundation
import UIKit

/*
 * Define an ErrorType
 */
enum StringToIntTypecastingError: Error {
    case BadString
}

/*
 * If typecasting is not possible, throw exception, otherwise return the Integer value
 */
func stringToInt(inputString: String) throws -> Int {
    // Write your code here
    guard let result = Int(inputString) else {
        throw StringToIntTypecastingError.BadString
    }
    return result
}

/*
 * Read the input
 */
let inputString = "35"
//"Hallo , playground"

do {
    try print(stringToInt(inputString: inputString))
} catch StringToIntTypecastingError.BadString {
    print("Bad String")
}
