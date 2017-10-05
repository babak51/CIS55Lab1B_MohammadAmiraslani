import UIKit
let numberOfDays: Int = 32     // number of days
var dailyPayArray: [Int] = []  // empty array which would keep daily pay
var totalPayArray: [Int] = []  // empty array which would keep total pay
var total: Int =  0; var nextDaysPay: Int = 1
for n in (1...numberOfDays){
    dailyPayArray.append(nextDaysPay)
    total += nextDaysPay
    totalPayArray.append(total)
    let outputFormat = NSString(format:"| day %3d | %12.2f | %12.2f |", n, Double(dailyPayArray[n-1])/100.0, Double(totalPayArray[n-1])/100.0)
    print("\(outputFormat)")
    nextDaysPay *= 2
}
