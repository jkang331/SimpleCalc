//
//  main.swift
//  SimpleCalc
//
//  Created by Jennifer Kang
//  Copyright © 2016 Jennifer Kang. All rights reserved.
//

import Foundation

// Basic Mathematic Operations
//  - handles negative values
//  - doesn't handle doubles
func simple(){
    print("Enter an expression separated by returns:")
    let num1 = Int.init(readLine(stripNewline: true)!)!
    let op = readLine(stripNewline: true)!
    let num2 = Int.init(readLine(stripNewline: true)!)!
    var total: Int = 0
    var computedCorrectly = true
    
    switch op {
    case "+":
        total = num1 + num2
    case "-":
        total = num1 - num2
    case "*","x":
        total = num1 * num2
    case "/":
        total = num1 / num2
    case "%":
        total = num1 % num2
    default:
        computedCorrectly = false
        print("operator does not compute")
    }
    
    if computedCorrectly {
        print("Result: \(total)")
    }
}

// Multi-operand Operations
// - handles negative values (only for count and avg)
// - handles doubles (only for count and avg)
func multi() {
    print("Enter multi-operand operations: count, avg, fact" )
    let input = readLine(stripNewline: true)
    let components = input?.componentsSeparatedByString(" ")
    let numComponents = Int((components?.count)! - 1)
    
    switch components![numComponents] {
    case "count":
        print("Number of input: \(numComponents)")
    case "avg":
        var total: Double = 0.0
        for index in 0...(numComponents - 1) {
            total = total + Double(components![index])!
        }
        total = total / Double(numComponents)
        print("Average of the input: \(total)")
    case "fact":
        if (numComponents != 1) {
            print("Sorry there should only be one input. Please try again.")
            return
        }
        var product = 1
        let firstInput = Int(components![0])
        if (firstInput == nil || firstInput! <= 0) {
            print("Sorry the value inputed was invalid please try again.")
            return
        }
        for index in 1...firstInput! {
            product = product * index
        }
        print("Factorial of \(firstInput!): \(product)")
    default:
        print("Not able to recognize input. Please try again.")
    }
    
}

// Start of the main function
print("This is SimpleCalc.")
var menu: String = "\nMenu: \n\tTo compute a simple expression, input \"simple.\" \n\tTo compute a multi-operand, input \"multi.\" \n\tTo exit, input \"exit.\""

print(menu)
var nextOperation = readLine(stripNewline: true)!

while (nextOperation != "exit"){
    switch nextOperation {
    case "simple":
        simple()
    case "multi":
        multi()
    default:
        print("Sorry incorrect command.  Please try again.")
    }
    
    print(menu)
    nextOperation = readLine(stripNewline: true)!
}


