import UIKit
import Foundation

enum IndexError: Error {
    case indexOutOfBound
}

class Stock {
    var fruit: [String] = ["Apple", "Banana", "Orange"]
    func accessStock(index: Int) throws {
        let countFruit = fruit.count
        if index > countFruit {
            throw IndexError.indexOutOfBound
        }
        if index < 0 {
            throw IndexError.indexOutOfBound
        }
        print("Fruit is : \(fruit[index])")
    }
}

do {
    let stock = Stock()
    try stock.accessStock(index: 4)
}catch IndexError.indexOutOfBound{
    print("Array is out of bounds")
}
