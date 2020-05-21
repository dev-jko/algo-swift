class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var (temp, result) = (Int.max, 0)
        for price in prices {
            if temp < price { temp = price }
            else { result = max(price - temp, result) }
        }
        return result
    }
}