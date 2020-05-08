import UIKit

var str = "Hello, playground"
// Complete the solve function below.
func solveOperators(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {
    let tip = meal_cost * Double(tip_percent)/Double(100)
    let tax = meal_cost * Double(tax_percent)/Double(100)
    let totalCost = meal_cost + tip + tax
    let result = Int(round(totalCost))
    print(result)
}

let resSolveOperators = solveOperators(meal_cost: 12.00, tip_percent: 20, tax_percent: 8)
