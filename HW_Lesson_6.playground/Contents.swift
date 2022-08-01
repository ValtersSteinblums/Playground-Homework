import UIKit

/*
 Exercise 1
 Create enum CalculationType as String, where will be: addition, subtraction, multiplication, division with String value
 */

enum CalculationType: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
}

/*
 Exercise 1.1
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 
 Then use switch case to calculate and return Int result
 
 var result = numberOne
 
 switch calculationType {
 case .addition: result += numberTwo
 .....
 }
 print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 
 return result
 */

func calculateResult(firstNumber numberOne: Int ,andSecondNumber numberTwo: Int, withCalculationType calculationType: CalculationType) -> Int {
    var result = numberOne
    
    switch calculationType {
    case .addition: result += numberTwo
    case .subtraction: result -= numberTwo
    case .multiplication: result *= numberTwo
    case .division:
        guard numberTwo > 0 else {
            print("It's not allowed to divide with 0")
            return result
        }
        result /= numberTwo
    }
    
    print("Result: \(calculationType.rawValue) of \(numberOne) and \(numberTwo) = \(result)")
    
    return result
}

/*
 Exercise 1.2
 Declare two numbers.
 Call func 4 times for all calculateResult
 */
let firstNumber = 8
let secondNumber = 0

calculateResult(firstNumber: firstNumber, andSecondNumber: secondNumber, withCalculationType: .addition)
calculateResult(firstNumber: firstNumber, andSecondNumber: secondNumber, withCalculationType: .subtraction)
calculateResult(firstNumber: firstNumber, andSecondNumber: secondNumber, withCalculationType: .multiplication)
calculateResult(firstNumber: firstNumber, andSecondNumber: secondNumber, withCalculationType: .division)

/*
 Exercise 2.1
 Make example of struct Car with the name audiQ7
 Make a copy of audiQ7 and name it audiTT.
 Provide the correct name for audiTT
 
 Than run getSpecs() for audiQ7 and audiTT
 */

struct Car {
    var model: String?
    var year: Int?
    var color: String?
    
    func getSpecs() {
        print("Model: \(model ?? "Not available"), Year: \(year ?? 0), color: \(color ?? "Not available")")
    }
}

let audiQ7 = Car(model: "Audi Q7", year: 2022, color: "Black")
var audiTT = audiQ7

audiTT.model = "Audi TT"

audiQ7.getSpecs()
audiTT.getSpecs()
