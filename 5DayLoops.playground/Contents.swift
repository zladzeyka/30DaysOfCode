import UIKit

//Task
//Given an integer, n, print its first 10  multiples. Each multiple n*i  (where 1<= i <= 10 ) should be printed on a new line in the form: n x i = result.
var n = 2
for i in 1...10 {
    let res = i * n
    print(String(format: "%d x %d = %d", n,i,res))
}
