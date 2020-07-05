class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var setArr: [Set<Character>?] = [nil, nil, nil]
        for i in 0..<9 {
            setArr[0] = []
            setArr[1] = []
            for j in 0..<9 {
                guard !setArr[0]!.contains(board[i][j]),
                    !setArr[1]!.contains(board[j][i]) else { return false }
                if board[i][j] != "." { setArr[0]!.insert(board[i][j]) }
                if board[j][i] != "." { setArr[1]!.insert(board[j][i]) }
            }
        }

        for i in 0..<9 {
            if i % 3 == 0 {
                setArr[0] = []
                setArr[1] = []
                setArr[2] = []
            }
            for j in 0..<9 {
                guard board[i][j] != "." else { continue }
                guard !setArr[j / 3]!.contains(board[i][j]) else { return false }
                setArr[j / 3]!.insert(board[i][j])
            }
        }

        return true
    }
}