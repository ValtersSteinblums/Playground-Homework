import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */
let period = 5
let depositAmount: Double = 500_000
let rate = 0.015

var profitPerAnnum: Double = 0
var profit: Double = 0

for _ in 1...period {
    profitPerAnnum = Double(depositAmount) * rate
    profit += profitPerAnnum
}

let deposit = Double(depositAmount) + profit
print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")


/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */
let intArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var evenArray: [Int] = []

for number in intArray {
    if number % 2 == 0 {
        evenArray.append(number)
    }
}

print("My even numbers are: \(evenArray)")

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */
var counter = 0

while true {
    counter += 1
    let randomNumber = Int.random(in: 1...5)
    
    if randomNumber == 5 {
        break
    }
}

print("Number 5 will be after \(counter) shuffles")

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

var numberOfDays = 0
var electricPost = 10

let dayClimb = 2
let nightSlide = 1

while electricPost != 0 {
    numberOfDays += 1
    
    electricPost = electricPost - dayClimb
    
    if electricPost == 0 {
        print("The bug will spend \(numberOfDays) days to reach the top of the post!")
        break
    } else {
        electricPost = electricPost + nightSlide
    }
}
