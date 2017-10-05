import UIKit
let numberOfDays: Int = 32
var dailyPayArray: [Int] = []; var totalPayArray: [Int] = []
var total: Int =  0; var nextDaysPay: Int = 1
for n in (0...numberOfDays-1){
    total += nextDaysPay
    dailyPayArray.append(nextDaysPay); totalPayArray.append(total);
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency; formatter.formatWidth = 20
    let outputFormat = NSString(format:"| day %-3d | %@ | %@ |", n + 1, formatter.string(from: Double(dailyPayArray[n])/100.0 as NSNumber)!, formatter.string(from: Double(totalPayArray[n])/100.0 as NSNumber)!)
    print("\(outputFormat)")
    nextDaysPay *= 2
}
