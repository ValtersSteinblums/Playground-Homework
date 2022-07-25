import UIKit

/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */
let myTeam = "Boys"
let resultsOfGames = [
    "Brooklyn Nets" : ["109:99", "99:89"],
    "Dallas Mavericks" : ["87:93", "104:97"],
    "Washington Wizards" : ["117:112", "107:122"]
]

for (key, value) in resultsOfGames {
    for separateValue in 0...value.count - 1 {
        print("\(myTeam) against \(key) scored - \(value[separateValue])")
    }
}

/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */
let wallet = [5, 10, 20, 50, 100, 200, 500]
var total = 0

func calculateCashSum(wallet: [Int]) -> Int {
    for cash in wallet {
        total += cash
    }
    return total
}

print("Total cash in wallet: \(calculateCashSum(wallet: wallet))")

/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */
func isEvenNumber(number: Int) -> Bool {
    if number % 2 == 0 {
        return true
    }
    return false
}

print("Is the number even: \(isEvenNumber(number: 4))")
print("Is the number even: \(isEvenNumber(number: 3))")

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */
func createArray(from: Int, to: Int) -> [Int] {
    var newArray: [Int] = []
    
    for arrayElement in from...to {
        newArray.append(arrayElement)
    }
    return newArray
}

var array = createArray(from: 1, to: 100)
print("The created array: \(array)")

/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */
for number in array {
    if let numberToCheck = array.firstIndex(of: number) {
        if isEvenNumber(number: array[numberToCheck]) {
            array.remove(at: numberToCheck)
        }
    }
}

print("The created array, even numbers removed: \(array)")
