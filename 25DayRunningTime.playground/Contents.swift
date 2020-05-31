import UIKit

func isPrime(n: Int) -> Bool {
    for i in 2 ... Int(ceil(sqrt(Double(n)))) {
        if n % i == 0 {
            return false
        }
    }
    return true
}

let T = 1
    //Int(readLine()!)!

for _ in 0 ..< T {
    let n = Int(readLine()!)!

    if (n > 2 && isPrime(n: n)) || (n == 2) {
        print("Prime")
    } else {
        print("Not prime")
    }
}
