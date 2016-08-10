//Getting Started With Swift: WWDC 2016 - Session 404

//Calling Generic Functions: Filter and map methods

import UIKit

func filter<Element>(_ source:[Element], _ includeElement: (Element) -> Bool) -> [Element] {
    var result: [Element] = []
    for element in source {
        if includeElement(element) {
            result.append(element)
        }
    }
    return result
}

let numbers = [1, 4, 25,50]
let names = ["Dan", "William", "Yolande", "Jean", "Rob"]

let evenNumbers = filter(numbers) { $0 % 2 == 0 }
let dotNotationEvenNumbers = numbers.filter { $0 % 2 == 0 }
let shortNames = filter(names) {name in name.characters.count < 5}
let dotNotationShortNames = names.filter  {name in name.characters.count < 5}
print (shortNames, evenNumbers,dotNotationShortNames,dotNotationEvenNumbers)

//
//

let capitalizedShortNames = shortNames.map { name in name.uppercased() }
print(capitalizedShortNames)


//Protocols and Extensions

protocol Player {
    func takeTurn()
}

struct HumanPlayer: Player {
    var name: String
    var score: Int
    func takeTurn() { }
}

extension HumanPlayer: CustomStringConvertible {
    var description: String {
        return "Human player \(name) has a score of \(score)"
    }
}
let player = HumanPlayer(name: "Lynn", score: 0)
print (player)

enum Alignment {
    case left(padding: Double), right(padding: Double), center
}

let textAlignment = Alignment.left(padding: 42.7)

switch textAlignment {
case.left(let padding):
    print("Left with \(padding) pixels of padding")
case.right(let padding):
    print("Right with \(padding) pixels of padding")
case.center:
    print("center")
    
}
//: [Next](@next)
