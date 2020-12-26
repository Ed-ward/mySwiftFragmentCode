import UIKit

/// metod 1
func converter(text:String, start:Date, finish:Date) -> Double {
    let calendar = Calendar.current
    let nanosecond = calendar.dateComponents([.nanosecond], from: start, to: finish).nanosecond!
//    print(text + String(Double(nanosecond) / 1000000) + " ms")
    return Double(nanosecond) / 1000000
}

func metodOne() -> Double {
    let data = Array(1...1000)
    let start = Date()
    let max = data.last!
    var result = [Int]()
    var pages = [Int:Bool]()
    data.forEach { pages[$0] = true }
    (1...max).forEach { index in
        if pages[index] == nil { result.append(index) }
    }
    let finish = Date()
    return converter(text: "metod One: ", start: start, finish: finish)
}

func metodTwo() -> Double {
    var data = Array(1...1000)
    let start = Date()
    var array = [Int]()
    data.sort()
    for i in 1...data.max()! {
        if i != data.first { array.append(i) }
        else { data.removeFirst() }
    }
    let finish = Date()
    return converter(text: "metod Two: ", start: start, finish: finish)
}


var result = [Double]()
(1...10).forEach({_ in result.append(metodTwo())})
var sum:Double = 0
result.forEach({sum += $0})

print(sum / 10)


//for _ in min...data.count {
//    if data.isEmpty {break}
//    if min == data.first! {data.removeFirst(); continue}
//    (min...data.first! - 1).forEach({array.append($0)})
//    min = data.first! + 1
//    data.removeFirst()
//}
