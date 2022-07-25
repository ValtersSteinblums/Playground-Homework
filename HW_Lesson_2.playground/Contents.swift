import UIKit
/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */
var firstVariable: Float = 3.14
var secondVariable: Float = 42.0
var sumOfVariables: Double
sumOfVariables = Double(firstVariable + secondVariable)
print(sumOfVariables)
print(sumOfVariables.rounded())


/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */
var numberOne = 15
var numberTwo = 13
let result = numberOne / numberTwo
let reminder = numberOne % numberTwo

print("When dividing \(numberOne) by \(numberTwo), the result is \(result), the remainder is \(reminder)")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */
var qty = 6
var price = 1000
var totalSum = qty * price

if qty < 5 {
    print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
} else if qty >= 5 && qty < 10 {
    price = 900
    print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
} else if qty >= 10 {
    price = 850
    print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
}

/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */
let userInputAge: String = "33eff"

//Throws err:
//var userInputAgeAsInt = Int(userInputAge)!
//print(userInputAgeAsInt)

if let userInputAge = Int(userInputAge) {
    print("Age is: \(userInputAge)")
} else {
    print("Age \(userInputAge) can't be converted to Int")
}

/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */
// DOB
let birthMonth = 7
let birthDay = 28
let birthYear = 1993

let totalYearsFromBirth = 2022 - birthYear
let totalMonthsFromBirth = (totalYearsFromBirth * 12) - birthMonth
let totalDaysFromBirth = (Double(totalYearsFromBirth) * 365.25) - Double(birthDay)

print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthsFromBirth), total days: \(totalDaysFromBirth) have passed")

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
switch birthMonth {
case 1...3:
    print("I was born in the 1st quarter")
case 4...6:
    print("I was born in the 2st quarter")
case 7...9:
    print("I was born in the 3rd quarter")
case 10...12:
    print("I was born in the 4th quarter")
default:
    break
}
