import UIKit

class Person: NSObject {
    var firstName: String
    var lastName: String
    var id: Int
    init(firstName: String, lastName: String, id: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.id = id
    }
}

// Class Student
class Student: Person {
    var testScores: [Int]

    /*
     *   Initializer
     *
     *   Parameters:
     *   firstName - A string denoting the Person's first name.
     *   lastName - A string denoting the Person's last name.
     *   id - An integer denoting the Person's ID number.
     *   scores - An array of integers denoting the Person's test scores.
     */
    // Write your initializer here
    init(firstName: String, lastName: String, id: Int, scores: [Int]) {
        self.testScores = scores
        super.init(firstName: firstName, lastName: lastName, id: id)
    }

    /*
     *   Method Name: calculate
     *   Return: A character denoting the grade.
     */
    // Write your method here
    func calculate() -> Character {
        var sum = 0
        for el in testScores {
            sum += el
        }
        let mediumGrade = Int(Double(sum) / Double(testScores.count))
        if mediumGrade >= 90, mediumGrade <= 100 {
            return "O"
        } else if mediumGrade >= 80, mediumGrade < 90 {
            return "E"
        } else if mediumGrade >= 70, mediumGrade < 80 {
            return "A"
        } else if mediumGrade >= 55, mediumGrade < 70 {
            return "P"
        } else if mediumGrade >= 40, mediumGrade < 55 {
            return "D"
        } else {
            return "T"
        }
    }
} // End of class Student
