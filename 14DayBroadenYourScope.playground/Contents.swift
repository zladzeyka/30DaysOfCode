import UIKit
import Foundation

class Difference: NSObject {
    private var elements = [Int]()
    var maximumDifference: Int
    // Write your code here
    init(numbers: [Int]) {
        self.elements = numbers
        self.maximumDifference = 0
    }
    
    func computeDifference() {
        guard elements.count >= 1, elements.count <= 100 else { return }
        elements.sort{$0 < $1}
        maximumDifference = elements.last! - elements.first!
    }
}
let a : [Int] = []
let d = Difference(numbers: a)

d.computeDifference()

print(d.maximumDifference)
