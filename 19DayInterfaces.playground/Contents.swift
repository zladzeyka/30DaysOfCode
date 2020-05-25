import UIKit
protocol AdvancedArithmetic {
    func divisorSum(n: Int) -> Int
}

class Calculator: AdvancedArithmetic {
    func divisorSum(n: Int) -> Int {
        var sum = 0
        for i in 1 ... n {
            if n % i == 0 {
                sum += i
            }
        }
        return sum
    }
}

let n = 6
let myCalculator = Calculator()
let sum = myCalculator.divisorSum(n: n)

print("I implemented: " + String(describing: AdvancedArithmetic.self)
)
print(sum)
