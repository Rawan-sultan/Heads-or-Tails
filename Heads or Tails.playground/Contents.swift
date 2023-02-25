import UIKit
// #1
func tossCoin() -> String {
    print("Tossing a Coin!")
    let flipp = ["Heads", "Tails"]
    let result = (flipp.randomElement()!)
    print(result)
    return result
}
tossCoin()

print("################")

// #2
func tossMultipleCoins(number: Int) ->Double  {
    var heads = 0.0
    for _ in 1...number {
        if tossCoin() == "Heads" {
            heads += 1
        }
    }
    let ratio = (heads / Double(number)) * 100
    return ratio
}
print("ratio is \(tossMultipleCoins(number: 8))")
