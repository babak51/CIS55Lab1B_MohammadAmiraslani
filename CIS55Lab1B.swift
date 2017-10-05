import UIKit
let numberOfDays: Int = 32
var dailyPayArray: [Int] = []; var totalPayArray: [Int] = []
var totalPay: Int =  0;
for n in (0...numberOfDays-1){
    let daysPay: Int = Int(truncating: NSDecimalNumber(decimal: pow(2, n)))
    totalPay += daysPay
    dailyPayArray.append(daysPay); totalPayArray.append(totalPay);
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency; formatter.formatWidth = 20
    let outputFormat = NSString(format:"| day %-3d | %@ | %@ |", n + 1, formatter.string(from: Double(dailyPayArray[n])/100.0 as NSNumber)!, formatter.string(from: Double(totalPayArray[n])/100.0 as NSNumber)!)
    print("\(outputFormat)")
}
