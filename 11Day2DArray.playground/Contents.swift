import UIKit
//Calculate the hourglass sum for every hourglass in Array, then print the maximum hourglass sum.
let arr = [
    [-1, -1, 0, -9, -2, -2],
    [-2, -1, -6, -8, -2, -5],
    [-1, -1, -1, -2, -3, -4],
    [-1, -9, -2, -4, -4, -5],
    [-7, -3, -3, -2, -9, -9],
    [-1, -3, -1, -2, -4, -5]
]
guard arr.count == 6 else { fatalError("Bad input") }

 func hourglassSum(arr: [[Int]]) -> Int {
     let row = arr.count
     let col = arr.count
    var maxSum = -63
    for i in 0..<row - 2 {
        for j in 0..<col - 2 {
            let sum = arr[i][j] + arr[i][j + 1] + arr[i][j + 2]
                + arr[i + 1][j + 1]
                + arr[i + 2][j] + arr[i + 2][j + 1] + arr[i + 2][j + 2]
            if sum > maxSum {
                maxSum = sum
            }
        }
    }
    return maxSum
}

let result = hourglassSum(arr:arr)
print(result)
