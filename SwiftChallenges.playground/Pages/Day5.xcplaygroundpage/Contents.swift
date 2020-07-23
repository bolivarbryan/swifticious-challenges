import Foundation

/*
 Write a solution for finding the lest amount of changes you need for making an array of ones an zeroes itermitents:
 - example 1: [1, 1, 0] = 1, here you only need to change the first item to make it itermitent
 - example 2: [1, 1, 0, 0] = 2, here you need to change the first and fourth items to make this array itermitent
 - example 3: [1, 1, 1, 0] = 1, here you need to change the second item to make this array itermitent
 - example 4: [0, 1, 0] = 0, no changes are needed here
 */

//String(decimal, radix: 2)

func countPairs(arr: [Int]) -> Int {
    let arr = [10, 7, 2, 8 , 3]
    let sortedArray = arr
        .sorted()
        
    //var current = arr[0]
    //var next = arr[1..<arr.count]

    var pairs: Array<(Int, Int)> = []

    for i in 0..<sortedArray.count{
        for j in i..<sortedArray.count{
            pairs.append((arr[i], arr[j]))
        }
    }

    pairs = pairs
        .filter({ (x, y) -> Bool in
            x != y
        })

    var count = 0
    var newArrayOfPairs: [String] = []
    for pair in pairs {
        var x = String(pair.0, radix: 2)
        var y = String(pair.1, radix: 2)
        
        while x.count != y.count {
            if x.count > y.count {
                y.insert("0", at: y.startIndex)
            } else {
                x.insert("0", at: x.startIndex)
            }
        }
        
        let xMapped = x.map { "\($0)"}
        let yMapped = y.map { "\($0)"}
        var newValue: [String] = []
        
        for i in 0..<xMapped.count {
            if xMapped[i] != yMapped[i] {
                newValue.append("0")
            } else {
                newValue.append(xMapped[i])
            }
        }
        
        print(newValue,xMapped, yMapped, pair)
        newArrayOfPairs.append(newValue.joined())
    }

    let result = newArrayOfPairs
        .filter({ (value) -> Bool in
            
            if let number = Int(value, radix: 2) {
                if number == 0 { return false }
                
                print(number, number % 2)
                return number % 2 == 0
            }
        
            return false
    })
    
    
    count = result
                .compactMap { Int($0, radix: 2) }
                .filter { $0 != 0}
                .count

    return count
}

countPairs(arr: [10, 7, 2, 8, 3])
print("---")
countPairs(arr: [1, 1, 2, 1, 3])
