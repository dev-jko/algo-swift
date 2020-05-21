class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var result = 0
        for i in 1..<prices.count {
            if prices[i] > prices[i - 1] { result += prices[i] - prices[i - 1] }
        }
        return result
    }
}

let sol: ([Int]) -> () = {
    let s = Solution().maxProfit
    return { nums in print(s(nums)) }
}()
sol([7,1,5,3,6,4])
sol([1,2,3,4,5])
sol([7,6,4,3,1])