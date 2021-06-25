/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 ## Looping with Ranges
 A half-open interval from a lower bound up to, but not including, an upper bound


 */
import Foundation
let range = (0..<10)
let closedRange = (0...10)


code(for: "For...in closed Range") {
//    for number in 0...10 {
//        print(number)
//    }
    for number in closedRange {
        print(number)
    }
}

code(for: "forEach Range") {
    (0..<10).forEach { number in
        print(number)
    }
}

code(for: "forEach Range shorthand") {
//    (0..<10).forEach { print($0) }
    range.forEach{ print($0)}
}

code(for: "Closed Range Reversed") {
    for number in closedRange.reversed() {
        print(number)
    }
}

code(for: "Closed Range Reversed using forEach and shorthand") {
    closedRange.reversed().forEach { print($0)}
}

code(for: "Range Stride by 2") {
    let strideNumbers = stride(from: 0, to: 10, by: 2)
    strideNumbers.forEach { print($0)}
}


code(for: "Closed Range Stride by 2") {
    let strideNumbers = stride(from: 0, through: 10, by: 2)
    strideNumbers.forEach { print($0)}
}

/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
