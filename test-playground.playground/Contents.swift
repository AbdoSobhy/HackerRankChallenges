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

//func countingValleys(steps: Int, path: String) -> Int {
//    var valleys = 0
//    var level = 0
//
//    for step in path{
//        if step == "D"{
//            level -= 1
//        }
//        if step == "U" {
//            if level == -1{
//                valleys += 1
//            }
//            level += 1
//        }
//    }
//    return valleys
//}
//
//print(countingValleys(steps: 8, path: "UDDDUDUU"))

//func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
//    var bigSum = -1
//    for i in 0..<keyboards.count{
//        for j in 0..<drives.count{
//            if keyboards[i] + drives[j] <= b && keyboards[i] + drives[j] > bigSum {
//                bigSum = keyboards[i] + drives[j]
//            }
//        }
//    }
//
//    return bigSum
//}
//
//print(getMoneySpent(keyboards: [40,50,60], drives: [5,8,12], b: 60))

//
//func catAndMouse(x: Int, y: Int, z: Int) -> String {
//    var result = ""
//    if abs(x - z) > abs(y - z){
//        result = "Cat B"
//    }else if abs(x - z) < abs(y - z){
//        result = "Cat A"
//    }else {
//        result = "Mouse C"
//    }
//return result
//}
//
//catAndMouse(x: 1, y: 3, z: 2)

//func formingMagicSquare(s: [[Int]]) -> Int {
//
//    var array: [Int] = []
//    for row in s {
//        for value in row {
//            array.append(value)
//        }
//    }
//    var costs: [Int] = [0,0,0,0,0,0,0,0]
//    let options: [[Int]] = [
//        [4,9,2,3,5,7,8,1,6],
//        [4,3,8,9,5,1,2,7,6],
//        [2,9,4,7,5,3,6,1,8],
//        [2,7,6,9,5,1,4,3,8],
//        [8,1,6,3,5,7,4,9,2],
//        [8,3,4,1,5,9,6,7,2],
//        [6,7,2,1,5,9,8,3,4],
//        [6,1,8,7,5,3,2,9,4]
//    ]
//    print(array)
//    for i in 0..<8 {
//        for j  in 0...8 {
//            costs[i] += abs(options[i][j] - array[j])
//            print(costs)
//
//        }
//
//    }
//    return costs.min()!
//}
//formingMagicSquare(s: [[5, 3, 4], [1, 5, 8], [6, 4, 2]])

//func pickingNumbers(a: [Int]) -> Int {
//    var res = 0
//    var dict = [Int:Int]()
//    for int in a {
//        dict[int] = dict[int] == nil ? 1 : dict[int]! + 1
//    }
//    let keys = Array(dict.sorted { $0.key < $1.key }.map { $0.key })
//    let values = Array(dict.sorted { $0.key < $1.key }.map { $0.value })
//    var prev = keys[0]
//    res = max(res, values[0])
//    for i in 1..<keys.count {
//        res = max(res, values[i])
//        let curr = keys[i]
//        if abs(prev - curr) <= 1 {
//            res = max(res, values[i - 1] + values[i])
//        }
//        prev = keys[i]
//    }
//    return res
//}
//
//print(pickingNumbers(a: [4,6,5,3,3,1])) // ->  3


//func binarySearch(searchValue: Int, values:[Int]) -> Bool{
//    let sorteArray = values.sorted()
//    var leftIndex = 0
//    var rightIndex = sorteArray.count - 1
//
//    while rightIndex >= leftIndex {
//
//        let middleIndex = (leftIndex + rightIndex) / 2
//
//        let middleValue = sorteArray[middleIndex]
//
//        if middleValue == searchValue {
//            return true
//        }
//        if middleValue > searchValue {
//            rightIndex = middleIndex - 1
//        }
//        if middleValue < searchValue {
//            leftIndex = middleIndex + 1
//        }
//    }
//
//
//    return false
//}
//
//print(binarySearch(searchValue: 5, values: [1,2,5,4,3,6,7,8,4,5,6,9,99,88,77,66,55,44,33]))

//func climbingLeaderboard(ranked: [Int], player: [Int]) -> [Int] {
//    // Write your code here
//    var resultRank = [Int]()
//    for element in player {
//        var ranked = ranked
//        ranked.append(element)
//        resultRank.append(rank(for: element, array: ranked))
//    }
//    return resultRank
//}
//
//
//func rank(for number: Int, array: [Int]) -> Int{
//    let setOfArray = Set(array).sorted(by: >)
//    return (setOfArray.firstIndex(of: number) ?? 0) + 1
//}
//
//print(climbingLeaderboard(ranked: [100, 90, 90, 80, 75, 60], player: [50, 65, 77, 90, 102]))



//func task(){
//    print(1)
//    DispatchQueue.main.async {
//        print(2)
//    }
//    print(3)
//}
//
//task()

//func hurdleRace(k: Int, height: [Int]) -> Int {
//    if let max = height.max(), max > k { return max - k } else {return 0}
//}
//print(hurdleRace(k: 7, height: [2,5,4,5,2]))


//func utopianTree(n: Int) -> Int {
//    var result = 1
//    var isSummer = true
//
//    guard n > 0 else { return result }
//    for _ in 1...n {
//        isSummer ? (result += result) :  (result += 1)
//        isSummer = !isSummer
//    }
//    return result
//}
//
//print(utopianTree(n: 4))


//func angryProfessor(k: Int, a: [Int]) -> String {
//    let arrivedStudent = a.filter({$0 <= 0 }).count
//    return arrivedStudent >= k ? "NO" : "YES"
//}
//
//print(angryProfessor(k: 2, a: [0 ,-1, 2, 1]))


//func beautifulDays(i: Int, j: Int, k: Int) -> Int {
//    var result = 0
//    for number in i...j {
//        let reversedNum: Int = Int(String("\(number)".reversed())) ?? 0
//        if abs(number - reversedNum) % k == 0 {
//            result += 1
//        }
//    }
//    
//    return result
//}
//
//print(beautifulDays(i: 1, j: 2000000, k: 23047885))

//
//func viralAdvertising(n: Int) -> Int {
//    var result = 0
//    var recepiants = 5
//    for _ in 1...n {
//        result += Int(recepiants / 2)
//        recepiants = Int(recepiants / 2) * 3
//    }
//    return result
//}
//
//print(viralAdvertising(n: 5))

//func saveThePrisoner(n: Int, m: Int, s: Int) -> Int {
//    var m = m
//    if m % n != 0 {
//        return (m - (Int(m / n) * n)) + s - 1
//    } else {
//        return s - 1 == 0 ? n : s - 1
//    }
//}

//print(saveThePrisoner(n: 7, m: 200, s: 3))
//print(saveThePrisoner(n: 5, m: 2, s: 1))

//func circularArrayRotation(a: [Int], k: Int, queries: [Int]) -> [Int] {
//    var array = a
//    var queriesValue: [Int] = []
//    let arrayCount = array.count
//    let k = k - ( Int(k / arrayCount) * arrayCount )
//    if k != 0 {
//        for _ in 1...k {
//            let lastElement = array.removeLast()
//            array.insert(lastElement, at: 0)
//        }
//    }
//    queries.forEach({ queriesValue.append(array[$0])})
//    return queriesValue
//}

//func circularArrayRotation(a: [Int], k: Int, queries: [Int]) -> [Int] {
//    let m = a.count - (k % a.count)
//    var result:[Int] = []
//
//    queries.map{ result.append( a[($0 + m) % a.count ])}
//    return result
//}
//
//print(circularArrayRotation(a: [3,4,5], k: 66958, queries: [1,2]))
