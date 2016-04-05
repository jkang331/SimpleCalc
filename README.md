# SimpleCalc
INFO 498B - Project 2

Requirements:
 - Create a console calculator program
    - user can enter a number; hit return
    - user can enter an operation (add, sub, mul, div, mod), then return
    - user can enter a number; hit return
    - program calculates result

 - Add a few new (multi-operand) operations
    - "count": count the number of input (10 4 25 17 5 count => 5)
    - "average": average all the inputs (2 4 6 8 10 avg => 6, the above can take any number of inputs)
    - "fact": calculate factorial (5 fact => 120, can only take one input)

Extra credit:
 - discover how to support negative and decimal numbers (1pt)
 - discover how to support command-line arguments and take all input that way (1pt)
    - $ calc 2 4 6 8 10 avg => 6



To Run on the Command Line:
 - navigate to main.swift
 - "swiftc main.swift -o calc"
 - "./calc" to run


Notes: 
 - Basic Mathematic Operations
    - handles negative values
    - doesn't handle doubles
 - Multi-operand operations
    - handles negative values (only for count and avg)
    - handles doubles (only for count and avg)