import UIKit


// .....  I gave up and cheated for this one... got my solution here: https://www.hackingwithswift.com/forums/100-days-of-swiftui/help-with-checkpoint-4/10463


//The challenge is this: write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches:
//
//1. You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
//2. If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
//3. You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
//4. If you can’t find the square root, throw a “no root” error.

//------------------------------------------------------

//here are some hints:

//1. This is a problem you should “brute force” – create a loop with multiplications inside, looking for the integer you were passed in.
//2. The square root of 10,000 – the largest number I want you to handle – is 100, so your loop should stop there.
//3. If you reach the end of your loop without finding a match, throw the “no root” error.
//4. You can define different out of bounds errors for “less than 1” and “greater than 10,000” if you want, but it’s not really necessary – just having one is fine.

enum numberError: Error {
    case outOfBounds, noRoot
}

func checkSquareRoot(_ number: Int) throws -> Int {
    if number < 1 || number > 10_000 {
        throw numberError.outOfBounds
    }

    var root = 0 // initializes a variable to store and return the result of the loop.

    for i in 1...100 {
        if number == i * i {
            root = i // assignes the value of i to root
            break
        }
    }

    if root == 0 { // if root hasn't received a new value, throws an error.
        throw numberError.noRoot
    }

    return root
}

let input = 100

do {
    let result = try checkSquareRoot(input)
    print("Square root of \(input) is \(result).")
} catch numberError.outOfBounds {
    print("\(input) is out of bounds")
} catch numberError.noRoot {
    print("\(input) is not a perfect square root.")
} catch {
    print("Error.")
}



//func printSqrtTables(for number: Int, end: Int) {
//    for i in 1...end {
//        print("\(i) * \(number) is \(i * number)")
//    }
//}
//
//printSqrtTables(for: 1, end: 100)
