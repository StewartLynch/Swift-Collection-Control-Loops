/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 ## Looping over arrays
Different ways of looping over arrays in Swift

*/
import Foundation
let countries = ["Canada", "United States", "France", "Germany", "Poland", "Sweden", "Denmark", "Finland"]

code(for: "For .. in loop") {
    for country in countries {
        print(country)
    }
}

code(for: "forEach loop") {
    countries.forEach { country in
        print(country)
    }
}

code(for: "Shorhand forEach Loop") {
    countries.forEach {print($0)}
}

code(for: "Index Based Looping") {
    for index in 0..<countries.count {
        print(index, countries[index])
    }
}

code(for: "Enumerated Index Looping") {
    for (index, country) in countries.enumerated() {
        print(index, country)
    }
}

code(for: "Enumerated forEach Looping") {
    countries.enumerated().forEach { index, country in
        print(index, country)
    }
}

code(for: "Shorthand Enumerated forEach Looping") {
    countries.enumerated().forEach { print($0, $1) }
}

/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
