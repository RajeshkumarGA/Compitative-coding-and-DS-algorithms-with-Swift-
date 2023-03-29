import UIKit

// MARK: Question
/* Given a value V, if we want to make a change for V cents, and we have an infinite supply of each of
C = { C1, C2, .., Cm} valued coins, what is the minimum number of coins to make the change? If it’s not
possible to make a change, print -1.
 
 Examples:

 Input: coins[] = {25, 10, 5}, V = 30
 Output: Minimum 2 coins required We can use one coin of 25 cents and one of 5 cents

 Input: coins[] = {9, 6, 5, 1}, V = 11
 Output: Minimum 2 coins required We can use one coin of 6 cents and 1 coin of 5 cents
 */

// dynamic programming approach to solve the problem:

func minCoins(_ coins: [Int], _ V: Int) -> Int {
    // create an array to store the minimum number of coins needed to make each value from 0 to V
    var dp = Array(repeating: Int.max, count: V + 1)
    // the minimum number of coins needed to make a value of 0 is 0
    dp[0] = 0
    
    // loop through all the coins
    for coin in coins {
        // loop through all the possible values we can make with this coin
        for i in coin...V {
            // if it's possible to make the value i with the coin,
            // update the minimum number of coins needed to make the value i
            if dp[i - coin] != Int.max {
                dp[i] = min(dp[i], dp[i - coin] + 1)
            }
        }
    }
    
    // return the minimum number of coins needed to make the value V
    return dp[V] == Int.max ? -1 : dp[V]
}

let coins = [1, 5, 10, 25]
let V = 57
let result = minCoins(coins, V)
print(result) // output: 5
