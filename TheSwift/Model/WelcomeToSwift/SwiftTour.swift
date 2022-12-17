//
//  SwiftTour.swift
//  TheSwift
//
//  Created by Steve on 2022/12/18.
//

import Foundation

struct SwiftTour: Hashable {
    let title: String
    let description: String
}

extension SwiftTour {
    static let list = [
        SwiftTour(title: "Simple Values", description: "Use let to make a constant and var to make a variable. The value of a constant doesn’t need to be known at compile time, but you must assign it a value exactly once."),
        SwiftTour(title: "Control Flow", description: "Use if and switch to make conditionals, and use for-in, while, and repeat-while to make loops.  Parentheses around the condition or loop variable are optional."),
        SwiftTour(title: "Functions and Closures", description: "Use func to declare a function. Call a function by following its name with a list of arguments in parentheses. Use -> to separate the parameter names and types from the function’s return type."),
        SwiftTour(title: "Objects and Classes", description: "Use class followed by the class’s name to create a class. A property declaration in a class is written the same way as a constant or variable declaration, except that it’s in the context of a class."),
        SwiftTour(title: "Enumerations and Structures", description: "Use enum to create an enumeration. Like classes and all other named types, enumerations can have methods associated with them."),
        SwiftTour(title: "Concurrency", description: "Use async to mark a function that runs asynchronously. You mark a call to an asynchronous function by writing await in front of it."),
        SwiftTour(title: "Protocols and Extensions", description: "Use protocol to declare a protocol. Classes, enumerations, and structures can all adopt protocols."),
        SwiftTour(title: "Error Handling", description: "You represent errors using any type that adopts the Error protocol. Use throw to throw an error and throws to mark a function that can throw an error."),
        SwiftTour(title: "Generics", description: "Write a name inside angle brackets to make a generic function or type. You can make generic forms of functions and methods, as well as classes, enumerations, and structures.")
    ]
}
