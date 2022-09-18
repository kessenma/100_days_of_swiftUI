import UIKit


//Your input is this:
//
//let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
//Your job is to:
//
//Filter out any numbers that are even ✅
//Sort the array in ascending order ✅
//Map them to strings in the format “7 is a lucky number” ✅
//Print the resulting array, one item per line ✅

//So, your output should be as follows:
//7 is a lucky number
//15 is a lucky number
//21 is a lucky number
//31 is a lucky number
//33 is a lucky number
//49 is a lucky number

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

func filterOutEven() {
    var result = luckyNumbers.filter { $0 % 2 != 0 }
    result.sort()
    for result in result {
        print("\(result) is a lucky number.")
    }
}
filterOutEven()



//var names = ["Jemima", "Peter", "David", "Kelly", "Isabella"]
//names.sort()
//print(names)
//
//var cleanRoom = { (name: String) in
//    print("I'm cleaning the \(name).")
//}
//cleanRoom("kitchen")

//func forEach(_ body: (Self.Element) throws -> Void) rethrows

//let numberWords = ["one", "two", "three"]
//for word in numberWords {
//    print(word)
//}
// Prints "one"
// Prints "two"
// Prints "three"

//numberWords.forEach { word in
//    print(word)
//}
// Same as above
