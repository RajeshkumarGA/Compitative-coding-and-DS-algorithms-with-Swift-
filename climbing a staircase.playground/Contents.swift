import UIKit

// MARK: Question
/* You are climbing a staircase. It takes n steps to reach the top.
 Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top? */

// MARK: Solution
/* The idea is to use dynamic programming to build up the solution incrementally. We first handle the base cases where n is 1 or 2, 
in which case the answer is simply n.
 
 For larger values of n, we use an array dp to store the number of distinct ways to reach each step up to n. We start by setting dp[1] to 1 
(since there's only one way to reach the first step) and dp[2] to 2 (since there are two ways to reach the second step: 1+1 or 2).

 Then, we use a loop to compute dp[i] for each step i from 3 up to n, using the recurrence relation dp[i] = dp[i-1] + dp[i-2]. 
This formula says that the number of ways to reach step i is equal to the sum of the number of ways to reach the two previous steps, 
since we can either take a single step from step i-1 or two steps from step i-2.

 Finally, we return dp[n], which gives the total number of distinct ways to climb to the top of the staircase. */


func climbStairs(_ n: Int) -> Int {
    if n <= 2 {
        return n
    }
    
    var dp = [Int](repeating: 0, count: n+1)
    dp[1] = 1
    dp[2] = 2
    
    for i in 3...n {
        dp[i] = dp[i-1] + dp[i-2]
    }
    
    return dp[n]
}
climbStairs(5)
