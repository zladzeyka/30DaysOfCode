import UIKit

let arr = [1, 2, 3]
var array = arr
let n = 3
var swaps = 0
for _ in 0...n - 1 {
    for j in 0...n - 2 {
        if array[j] > array[j + 1] {
            array.swapAt(j, j + 1)
            swaps += 1
        }
    }
    if swaps == 0 {
        break
    }
}

print("Array is sorted in \(swaps) swaps.")
print("First Element: \(array.first ?? 0)")
print("Last Element: \(array.last ?? 0)")

