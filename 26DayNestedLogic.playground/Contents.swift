import UIKit

//Your local library needs your help! Given the expected and actual return dates for a library book, create a program that calculates the fine (if any). The fee structure is as follows:
//1.If the book is returned on or before the expected return date, no fine will be charged (i.e.:fine = 0) .
//2.If the book is returned after the expected return day but still within the same calendar month and year as the expected return date,fine = 15 Hackos x (the number of days late) .
//3.If the book is returned after the expected return month but still within the same calendar year as the expected return date, the fine = 500 Hackos x (the number of months late) .
//4.If the book is returned after the calendar year in which it was expected, there is a fixed fine of 10 000 Hackos
//
//1 <= D <= 31
//1 <= M <= 12
//1 <= Y <= 3000

//Sample input
//9 6 2015
//6 6 2015

//Print a single integer denoting the library fine for the book received as input.

struct LibraryDate {
    let day: Int
    let month: Int
    let year: Int
}

let inputActual = readLine()?.split(separator: " ").map{Int($0)}
let inputDue = readLine()?.split(separator: " ").map{Int($0)}

let actualDate = LibraryDate(day: inputActual?[0] ?? 0, month: inputActual?[1] ?? 1, year: inputActual?[2] ?? 1)
let dueDate = LibraryDate(day: inputDue?[0] ?? 0, month: inputDue?[1] ?? 1, year: inputDue?[2] ?? 1)

var fine: Int = 0

if actualDate.year == dueDate.year {
    if actualDate.month > dueDate.month {
        fine = (actualDate.month - dueDate.month) * 500
    } else if actualDate.month == dueDate.month, actualDate.day > dueDate.day {
        fine = (actualDate.day - dueDate.day) * 15
    }
} else if actualDate.year > dueDate.year {
    fine = 10000
}

print(fine)
