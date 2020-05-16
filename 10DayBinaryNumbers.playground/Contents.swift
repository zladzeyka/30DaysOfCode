import UIKit

/*
 Task
Given a base-10 integer,n , convert it to binary (base-2). Then find and print the base-10 integer denoting the maximum number of consecutive 1's in n's binary representation.
 */
let n = 5
var count = 0
var counter = n
var maxNumber = 0

while (counter > 0) {
    if (counter % 2 == 1) {
        count += 1
        if (count >= maxNumber) {
            maxNumber = count
        }
    } else {
        count = 0
    }
    counter = Int (Double(counter)/Double(2))
}

print(maxNumber)

