import UIKit

func phoneFriend(conversation: () -> Void) {
    print("Calling 555-1234...")
    conversation()
}
phoneFriend {
    print("Hello!")
    print("A foreign prince wants to give you $5 million.")
    print("What are your bank details?")
}

func holdClass(name: String, lesson: () -> Void) {
    print("Welcome to \(name)!")
    lesson()
    print("Make sure your homework is done by next week.")
}
holdClass(name: "Philosophy 101", lesson:) {
    print("All we are is dust in the wind, dude.")
}


func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}




func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}


func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 60, using: generateNumber)
print(newRolls)
