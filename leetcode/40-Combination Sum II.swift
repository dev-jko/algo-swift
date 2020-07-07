class Solution {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        let candidates = candidates.sorted()
        var result = [[Int]]()
        var picked = [Int]()

        func recur(_ index: Int, _ sum: Int, _ picked: inout [Int]) {
            guard sum < target else {
                if sum == target { result.append(picked) }
                return
            }
            for i in index..<candidates.count {
                guard i == index || candidates[i] != candidates[i - 1] else { continue }
                picked.append(candidates[i])
                recur(i + 1, sum + candidates[i], &picked)
                picked.removeLast()
            }
        }

        recur(0, 0, &picked)
        return result
    }
}