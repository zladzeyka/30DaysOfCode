import UIKit

// Complete the factorial function below.
func factorial(n: Int) -> Int {
    if n <= 1 {
        return 1
    } else {
        return n * factorial(n: n-1)
    }

}
 let factRes = factorial(n: 12)
