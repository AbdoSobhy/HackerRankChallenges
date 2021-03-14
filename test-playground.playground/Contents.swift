//
//  playground
//
//  Created by Abdelrahman Sobhy on 1/3/21.
//  Copyright © 2021 Abdelrahman Sobhy. All rights reserved.
//
// Temperatures are always expressed with floating point numbers ranging from -273 to 5526.

// Swift 5.1
// Swift 5.1
// Use print("messages...") to debug your solution
import Foundation

//func calculateClosestTo0 (arr: [Double]) -> Double {
//        guard !arr.isEmpty else {return 0}
//    var closest = 0.0
//    for i in 0..<arr.count {
//        if (closest == 0) {
//            print("position 1 ==> \(closest) = \(arr[i])")
//            closest = arr[i]
//        } else if (arr[i] > 0 && arr[i] <= closest) {
//            print("position 2 ==> \(closest) = \(arr[i])")
//            closest = arr[i]
//        } else if (arr[i] < 0 && -arr[i] < abs(closest)) {
//            print("position 3 ==> \(closest) = \(arr[i])")
//            closest = arr[i]
//        }
//    }
//    return closest
//}
//
////
//
//func generateArray(of number: Int) -> [Double]{
//    var array: [Double] = []
//    for _ in 0...number{
//        array.append(Double.random(in: -20...20))
//    }
//    return array
//}
//let array = generateArray(of: 5)
//
//let start = CFAbsoluteTimeGetCurrent()
//// run your work
//print(calculateClosestTo0(arr: [1,2,3,0,6,99,0.5,-0.25]))
//let diff = CFAbsoluteTimeGetCurrent() - start
//print("Took \(diff) seconds")


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

//func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
//    let homeRange = s...t
//    let applePoints = apples.map({$0 + a})
//    let orangePoints = oranges.map({$0 + b})
//    print(applePoints.filter({homeRange.contains($0)}).count)
//    print(orangePoints.filter({homeRange.contains($0)}).count)
//}
//
//countApplesAndOranges(s: 7, t: 10, a: 4, b: 12, apples: [2,3,-4], oranges: [3,-2,-4])

//func getTotalX(a: [Int], b: [Int]) -> Int {
//    // Limit the number of items we need to check.
//    guard let maxA = a.max(), let minB = b.min(), minB >= maxA else { return 0 }
//    let items = Array(maxA...minB)
//    return items.filter { (item) -> Bool in
//        let modA = a.map { item % $0 }.reduce(0, +)
//        let modB = b.map { $0 % item }.reduce(0, +)
//        // filter the items that meet both requirements
//        return (modA + modB) == 0
//    }.count
//}
//
//print(getTotalX(a: [2,6], b: [24,36]))

//func breakingRecords(scores: [Int]) -> [Int] {
//    var min = scores[0]
//    var max = scores[0]
//    var minC = 0
//    var maxC = 0
//    for i in 1..<scores.count{
//        if scores[i] < min{
//            min = scores[i]
//            minC += 1
//        }
//        else if scores[i] > max{
//            max = scores[i]
//            maxC += 1
//
//        }
//    }
//
//    return [maxC,minC]
//
//
//}
//
//print(breakingRecords(scores: [10, 5, 20, 20, 4, 5, 2, 25, 1]))

//func birthday(s: [Int], d: Int, m: Int) -> Int {
//    var possibilities = 0
//    for i in 0 ... s.count - m {
//        let miniSum = s[i ..< i + m].reduce(0, +)
//        if miniSum == d {
//            possibilities += 1
//        }
//    }
//    return possibilities
//}
//
//print(birthday(s: [1, 2, 1, 3, 2], d: 3, m: 2))

//func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
//    var result = 0
//    for i in 0...n - 2 {
//        for j in i + 1 ... n - 1 {
//            if ((ar[i] + ar[j]) % k) == 0 {
//                result += 1
//            }
//        }
//    }
//
//    return result
//}
//
//print(divisibleSumPairs(n: 6, k: 3, ar: [1, 3, 2, 6, 1, 2]))


//func migratoryBirds(arr: [Int]) -> Int {
//    var result = 0
//    var mostValue = 0
//    var dic = [Int: Int]()
//    for id in arr {
//        if dic[id] ?? 0 > 0{
//            dic[id]! += 1
//        } else {
//            dic[id] = 1
//        }
//    }
//    print(dic)
//    for (key,value) in dic {
//        if value > mostValue {
//            mostValue = value
//            result = key
//        }
//    }
//    return result
//}
//
//print(migratoryBirds(arr: [2,2,1,1,3]))


//func dayOfProgrammer(year: Int) -> String {
//    var dc = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31
//    if (year % 4 == 0 && year < 1919) || (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) {
//        dc += 1
//    }
//
//    if year == 1918 {
//        dc -= 13
//    }
//    return "\(256 - dc).09.\(year)"
//}
//
//print(dayOfProgrammer(year: 2021))

//func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
//    let actualPaidForAnna = (bill.reduce(0, {($0 + $1)}) - bill[k]) / 2
//    if actualPaidForAnna == b {
//        print("Bon Appetit")
//    } else {
//        print(b - actualPaidForAnna)
//    }
//}
//bonAppetit(bill: [2,4,6], k: 2, b: 6)


//func sockMerchant(n: Int, ar: [Int]) -> Int {
//    return Dictionary(grouping: ar, by: {$0}).map({ $1.count / 2 }).reduce(0, +)
//
//}
//
//print(sockMerchant(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20]))

//func pageCount(n: Int, p: Int) -> Int {
//    let fromBegain = Int(p/2)
//    let fromLast = (n/2) - fromBegain
//    return min(fromBegain, fromLast)
//}
//print(pageCount(n: 6, p: 5))
