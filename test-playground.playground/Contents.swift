
// Temperatures are always expressed with floating point numbers ranging from -273 to 5526.

// Swift 5.1
// Swift 5.1
// Use print("messages...") to debug your solution
import Foundation
//
//func closestToZero(_ ts: [Double]) -> Double {
//    guard !ts.isEmpty else {return 0}
//    var array = ts
//    array.append(0)
//    let sortedArray = array.sorted()
//    let zeroIndex = sortedArray.firstIndex(of: 0)!
//    // mark
//    guard sortedArray.count >= 3 else {return sortedArray.first ?? 0}
//    let firstNumber = sortedArray[zeroIndex - 1]
//    let secondNumber = sortedArray[zeroIndex + 1]
//
//    if firstNumber == -secondNumber{
//        return firstNumber > secondNumber ?  firstNumber  :   secondNumber
//    }
//
//    let resultArray = [firstNumber,secondNumber].sorted()
//
//    var lastResultNumber: [Double] = []
//
//    for result in resultArray {
//        if result < 0 {
//            lastResultNumber.append(result * -1)
//        } else {
//            lastResultNumber.append(result)
//        }
//    }
//
//    let finalResult = lastResultNumber.sorted().first ?? 0
//    if !resultArray.contains(finalResult){return finalResult * -1}
//
//
//    return finalResult
//}
//
//func generateArray(of number: Int) -> [Double]{
//    var array: [Double] = []
//    for _ in 0...number{
//        array.append(Double.random(in: -20...20))
//    }
//    return array
//}
//let array = generateArray(of: 1)
//
//
//let start = CFAbsoluteTimeGetCurrent()
//// run your work
//print(closestToZero(array))      // -1.7
//
//
//let diff = CFAbsoluteTimeGetCurrent() - start
//print("Took \(diff) seconds")
//
//
//
//
//
//
//
//
//func recuerseveFunc(_ value: UInt) -> UInt{
//    if value == 0{
//        return 1
//    }
//    print(value)
//    return value * recuerseveFunc(value - 1)
//}
//
////print(recuerseveFunc(3))
//
//
//func binarySearch(searchValue: Int, array: [Int]) -> Bool{
//    let sortedArray = array.sorted()
//    var leftIndex = 0
//    var rightIndex = sortedArray.count - 1
//
//    while rightIndex >= leftIndex {
//        let middelIndex = (rightIndex + leftIndex) / 2
//        let middleValue = sortedArray[middelIndex]
//        print(middleValue)
//
//        if middleValue == searchValue {
//            return true
//        }
//
//        if middleValue > searchValue {
//            rightIndex = middelIndex - 1
//        }
//
//        if middleValue < searchValue {
//            leftIndex = middelIndex + 1
//        }
//    }
//    return false
//}
//
//func generateIntArray(of number: Int) -> [Int]{
//    var array: [Int] = []
//    for _ in 0...number{
//        array.append(Int.random(in: -20...20))
//    }
//    return array
//}
//let intArray = generateIntArray(of: 40)
//
//print(binarySearch(searchValue: 10, array: intArray))
//
//let toBeFiltered = ["star0", "star2", "star1", "star0", "star3", "star4"]
//let theFilter = ["star1", "star3"]
//
//let arrayOfSet = Array(Set(toBeFiltered).intersection(Set(theFilter)))
//let arrayOfSet1 = Array(Set(toBeFiltered).symmetricDifference(Set(theFilter)))
//let arrayOfSet2 = Array(Set(toBeFiltered).subtracting(Set(theFilter)))
//let arrayOfSet3 = Array(Set(toBeFiltered).union(Set(theFilter)))
//
//print(arrayOfSet)
//print(arrayOfSet1)
//print(arrayOfSet2)
//print(arrayOfSet3)
//func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
//    var oldCheaker = abs(x1 - x2)
//    var counter = 0
//    var x1 = x1
//    var x2 = x2
//
//    while x1 + v1 != x2 + v2 {
//        counter += 1
//         if abs(x1 - x2) > oldCheaker {
//           return "NO"
//        }
//        if counter > 3 && abs(x1 - x2) == oldCheaker{
//            return "NO"
//        }
//        oldCheaker = abs(x1 - x2)
//        x1 += v1
//        x2 += v2
//    }
//    return "YES"
//}
//
//print(kangaroo(x1: 43, v1: 3, x2: 70, v2: 2))

//func diagonalDifference(arr: [[Int]]) -> Int {
//    // Write your code here
//    var firstCross = 0
//    var secondCross = 0
//    var secondIndex = 0
//    var maxArrayCount = 0
//    for i in 0..<arr.count{
//        for j in 0..<arr[i].count{
//            if arr[i].count > maxArrayCount{
//                maxArrayCount = arr[i].count
//            }
//        }
//    }
//
//    let newArray = arr.filter({$0.count == maxArrayCount})
//
//    for i in 0..<newArray.count{
//        for j in 0..<newArray[i].count{
//            if j == secondIndex {
//                firstCross += newArray[i][secondIndex]
//                secondCross += newArray[i][(newArray[i].count - 1) - secondIndex]
//            }
//        }
//        secondIndex += 1
//    }
//    return abs(firstCross - secondCross)
//}
//
////  1  2  3
////  4  5  6
////  9  8  9
//
//print(diagonalDifference(arr: [[3],[11,2,4], [4,5,6], [10,8,-12]]))


//func staircase(n: Int) -> Void {
//    var str = ""
//    for i in (0..<n) {
//        var curentString = ""
//        for j in (0..<n).reversed(){
//            if j <= i {
//                curentString.append("#")
//            }else {
//            curentString.append(" ")
//            }
//        }
//        str.append("\(curentString)\n")
//    }
//    print(str)
//}
//
//print(staircase(n: 6))

//func plusMinus(arr: [Int]) -> Void {
//    var string = ""
//    let plusCount = Double(arr.filter({$0 > 0}).count)
//    let minusCount = Double(arr.filter({$0 < 0}).count)
//    let zeroCount = Double(arr.filter({$0 == 0}).count)
//
//    let plusString = String(format: "%.6f", plusCount / Double(arr.count))
//    let minusString = String(format: "%.6f", minusCount / Double(arr.count))
//    let zeroString = String(format: "%.6f", zeroCount / Double(arr.count))
//
//    string.append(plusString + "\n" + minusString + "\n" + zeroString)
//    print(string)
//}
//
//plusMinus(arr: [-4, 3, -9, 0, 4, 1])


//func miniMaxSum(arr: [Int]) -> Void {
//    var str = ""
//    if arr.dropFirst().allSatisfy({ $0 == arr.first }){
//        let result = arr.reduce(0, +) - (arr.first ?? 0)
//        str.append(String(result) + " " + String(result))
//    }else {
//        let minSum = arr.filter({arr.max()! > $0}).reduce(0, {$0 + $1})
//        let maxSum = arr.filter({arr.min()! < $0}).reduce(0, {$0 + $1})
//        str.append(String(minSum) + " " + String(maxSum))
//    }
//
//    print(str)
//}
//
//miniMaxSum(arr: [5,5,5,5,5])

//func birthdayCakeCandles(candles: [Int]) -> Int {
//    // Write your code here
//    guard let max = candles.max() else {return 0}
//    return candles.filter({$0 == max}).count
//}


//func timeConversion(s: String) -> String {
//”
//    let df = DateFormatter()
//    df.dateFormat = "hh:mm:ssa"
//
//    let date = df.date(from: s)
//    df.dateFormat = "HH:mm:ss"
//
//    let time24 = df.string(from: date!)
//    return time24
//
//}
//print(timeConversion(s: "07:05:45PM"))

//func decryptPassword(s: String) -> String {
//    // Write your code here
//    guard !s.isEmpty && (s.range(of: "[^a-zA-Z1-9]", options: .regularExpression) != nil) else{ return s }
//    let arrayOfChar = Array(s).filter({$0 != "*"})
//    var arragedArray = [Character]()
//    var str = ""
//
//    for i in 0..<arrayOfChar.count{
//        if arrayOfChar.indices.contains(i+1){
//            if arrayOfChar[i].isUppercase && arrayOfChar[i+1].isLowercase{
//                arragedArray.append(contentsOf: [arrayOfChar[i+1], arrayOfChar[i]])
//            }
//        }
//        if arrayOfChar[i].isNumber {
//            arragedArray.append("0")
//            arragedArray.insert(arrayOfChar[i], at: 0)
//        } else {
//        }
//    }
//
//
//    for char in arragedArray {
//        str.append(char)
//    }
//
//    return str
//}
//
//print(decryptPassword(s: "51Pa*0Lp*0e"))  //    aP1pL5e

//func gradingStudents(grades: [Int]) -> [Int] {
//    // Write your code here
//
//    var roundedArray = [Int]()
//    let roundedGarde = { (grade: Int) -> Int in
//        for i in grade...100 {
//            if i % 5 == 0 {
//                return i
//            }
//        }
//        return grade
//    }
//
//    grades.map { (grade) in
//        if roundedGarde(grade) < 40 {
//            roundedArray.append(grade)
//        }else {
//            if roundedGarde(grade) - grade < 3 {
//                roundedArray.append(roundedGarde(grade))
//            } else {
//                roundedArray.append(grade)
//            }
//        }
//
//    }
//
//    return roundedArray
//}
//
//print(gradingStudents(grades: [73,67,38,33]))


