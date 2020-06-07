
class NumArray {

    private var sums: [Int] = [0]

    init(_ nums: [Int]) {
        for n in nums {
            sums.append(sums.last! + n)
        }
    }

    func sumRange(_ i: Int, _ j: Int) -> Int {
        return sums[j + 1] - sums[i]
    }
}