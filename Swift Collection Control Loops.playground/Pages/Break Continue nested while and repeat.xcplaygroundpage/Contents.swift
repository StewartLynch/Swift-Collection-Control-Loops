/*:
 [< Previous](@previous)           [Home](Introduction)
 
 ## Break, Continue, nested, while and repeat
 Using the forEach method is distinct from a for-in loop in two important ways:
 You cannot use a break or continue statement to exit the current call of the body closure or skip subsequent calls.
 Using the break/return statement in the body closure will exit only from the current call to body, not from any outer scope, and won’t skip subsequent calls.
 Break stops execution in a loop immediately and continues directly after the loop
 continue only exits the current iteration of the loop – it will jump back to the top of the loop and resumes up from there for next iteration
 
 */
import Foundation

let numbers = Array(0...100)

/*
 Using the forEach method is distinct from a for-in loop in two important ways:
 You cannot use a break or continue statement to exit the current call of the body closure or skip subsequent calls.
 Using the break/return statement in the body closure will exit only from the current call to body, not from any outer scope, and won’t skip subsequent calls.
 */

code(for: "All even numbers in numbers that are < 10") {
    for number in numbers {
        guard number < 10 else {
            break
        }
        guard number % 2 == 0 else {
            continue
        }
        print(number)
    }
}

code(for: "forEach alternative") {
    // Cannot accomplish with forEach.  Instead we can use filter
    numbers.filter {$0 < 10}.filter { $0 % 2 == 0}.forEach { print($0)}
}

code(for: "Nested Loops") {
    // 5 rows and 3 columns, pint out (1,1), (1,2), 1,3) .... (5,1), (5,2), (5,3) but skip row 2
    for row in 1...5 {
        //        guard row != 2 else {
        //            continue
        //        }
        for column in 1...3 {
            guard row != 2 else {
                break
            }
            print("row: \(row), column: \(column)")
        }
    }
    
}

code(for: "While Loop") {
    // While - may never run
    var counter = 11
    while counter <= 10 {
        print(counter)
        counter += 1
    }
}

code(for: "Repeat While Loop") {
    // Will always run at least once
    var counter = 11
    repeat {
        print(counter)
        counter += 1
    } while counter <= 10
}

/*:
 
 [< Previous](@previous)           [Home](Introduction)
 */
