import UIKit

func changeString(change: Double) -> Int {
    let changeString = Int(change)
    return changeString
}

func makeChangeAsString(fromAmount: Double, withCost: Double) -> String {
    var dollars: Int = 0
    var quarters: Int = 0
    var dimes: Int = 0
    var nickels: Int = 0
    var pennies: Int = 0
    
    let change = fromAmount - withCost
    print(change)
    
    while change > 0 {
        
        if change > 1 {
            let dollarChange = change.truncatingRemainder(dividingBy: 1)
            print(dollarChange)
            dollars = changeString(change: dollarChange)
            
            if dollarChange > 0.25 {
                let quarterChange = dollarChange.truncatingRemainder(dividingBy: 4)
                print(quarterChange)
                quarters = changeString(change: quarterChange)
                
                if quarterChange > 0.10 {
                    let dimeChange = quarterChange.truncatingRemainder(dividingBy: 10)
                    print(dimeChange)
                    dimes = changeString(change: dimeChange)
                    
                    if dimeChange > 0.05 {
                        let nickelChange = dimeChange.truncatingRemainder(dividingBy: 25)
                        print(nickelChange)
                        nickels = changeString(change: nickelChange)
                        
                        if nickelChange > 0.01 {
                            let pennyChange = dimeChange.truncatingRemainder(dividingBy: 100)
                            print(pennyChange)
                            pennies = changeString(change: pennyChange)
                            
                        }
                    }
                }
            }
        }
    }
        
        
        if change == 0 {
            let printOut = "You have no change."
            return printOut
        } else {
            let printOut = "Your change is $\(change). That is \(dollars) dollars, \(quarters) quarters, \(dimes) dimes, \(nickels) nickels, and \(pennies) pennies."
            return printOut
    }

// I know this does work, though I did have it working better, so close though!
    
    makeChangeAsString(fromAmount: 5.00, withCost: 2.32)
    makeChangeAsString(fromAmount: 5, withCost: 5)















// Test Cases
//makeChangeAsString(fromAmount: 10.00, withCost: 2.38) // returns "Your change is $7.62. That is 7 dollars, 2 quarters, 1 dime, 0 nickels and 2 pennies."
//makeChangeAsString(fromAmount: 5.00, withCost: 2.15)  // returns "Your change is $2.85. That is 2 dollars, 3 quarters, 1 dime, 0 nickels and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 2.38)  // returns "You didn't pay enough! You still owe $1.38. That is 1 dollar, 1 quarter, 1 dime, 0 nickels and 3 pennies."
//makeChangeAsString(fromAmount: 10.00, withCost: 8.00) // returns "Your change is $2.0. That is 2 dollars, 0 quarters, 0 dimes, 0 nickels and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 0.50)  // returns "Your change is $0.5. That is 0 dollars, 2 quarters, 0 dimes, 0 nickels and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 0.80)  // returns "Your change is $0.2. That is 0 dollars, 0 quarters, 2 dimes, 0 nickels and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 0.95)  // returns "Your change is $0.05. That is 0 dollars, 0 quarters, 0 dimes, 1 nickel and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 0.96)  // returns "Your change is $0.04. That is 0 dollars, 0 quarters, 0 dimes, 0 nickels and 4 pennies."
