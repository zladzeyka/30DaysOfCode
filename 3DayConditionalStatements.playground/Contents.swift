import UIKit
//Given an integer,N, perform the following conditional actions:
//If N is odd, print Weird
//If N is even and in the inclusive range of 2 to 5, print Not Weird
//If N is even and in the inclusive range of 6 to 20, print Weird
//If N is even and greater than 20 , print Not Weird
// 1< = N <= 100
let N = 2
let weird = "Weird"
let notWeird = "Not Weird"

if (N % 2 != 0){
    print(weird)
} else {
    switch N {
    case 2...5 :
        print(notWeird)
    case 6...20 :
        print(weird)
    default:
        if N > 20 {
            print(notWeird)
        }
    }
    
}
