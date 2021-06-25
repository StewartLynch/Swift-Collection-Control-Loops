/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 ## Looping over Dictionaries
 Iterate over dictionary items

 */
import Foundation

let countriesDict = ["Canada" : "🇨🇦", "United States": "🇺🇸", "France": "🇫🇷","Germany": "🇩🇪","Poland": "🇵🇱","Sweden": "🇸🇪","Denmark": "🇩🇰","Finland": "🇫🇮"]

code(for: "For .. in loop") {
    for(country, flag) in countriesDict {
        print(country, flag)
    }
}

code(for: "forEach loop") {
    countriesDict.forEach { (country, flag) in
        print(country, flag)
    }
}

code(for: "forEach loop shorthand") {
    countriesDict.forEach { print($0.key, $0.value) }
}

code(for: "for...in enumerated()") {
    for country in countriesDict.enumerated() {
        print(country.element.key, country.element.value)
    }
}

code(for: "for...in enumerated() - No Index") {
    for(_, country) in countriesDict.enumerated() {
        print(country.key, country.value)
    }
}

code(for: "forEach enumerated") {
//    countriesDict.enumerated().forEach { country in
//        print(country.element.key, country.element.value)
//    }
    countriesDict.enumerated().forEach {print($0.element.key, $0.element.value) }
}

code(for: "enumerated forEach - No Index") {
//    countriesDict.enumerated().forEach { _, country in
//        print(country.key, country.value)
//    }
    countriesDict.enumerated().forEach {
        print($1.key, $1.value)
    }
}




/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
