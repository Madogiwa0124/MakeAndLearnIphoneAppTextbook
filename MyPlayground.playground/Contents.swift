import UIKit

var str = "Hello, playground"
var score:Int = 100
var text:String = "my string"
"\(score)pt"

text = "1000"

if Int(text) == 1000 {
  "1000pt"
} else {
  "else pt"
}

switch Int(text) {
case 1000:
  "1000 pt!!!"
default:
  "aaauhoaaa"
}

while score < 110 {
  score += 1
}

// test
for i in 0..<5 {
  print(i)
}

var array:[Int] = [1, 2, 3, 4, 5]
var array2 = Array(repeating: 3, count: 5)

for val in array {
  print(val)
}


func calcTax(price:Double) -> (Double, Double) {
  let tax = price * 0.08
  let includeingTax = price * 1.08
  return (tax, includeingTax)
}

calcTax(price: 1000)


func testGuard(testValue:Int?) {
  guard let temp = testValue else { return }
  print(temp + 300)
}

testGuard(testValue: nil)
testGuard(testValue: 100)

class PriceCalculator {
  var price:Double = 0
  var taxRate:Double = 0.08

  func calcTax() -> Double {
    return price * taxRate
  }

  func calcTaxIncludedPrice() -> Double {
    return price + calcTax()
  }
}

let price = PriceCalculator()
price.price = 1000
price.taxRate = 0.05
price.calcTax()


let switch1 = UISwitch();

switch1.isOn = true;


class MySwitch: UISwitch {
  required init?(coder aDecoder: NSCoder) {
    fatalError()
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
    self.onTintColor = UIColor.red
  }
}

var switch2 = MySwitch()
switch2.isOn = true
