import Foundation

let direction = [1: (0, 1), 2: (0, -1), 3: (-1, 0), 4: (1, 0)]

class Dice {
    var x: Int
    var y: Int
    var value: [[Int]] = [[0, 0, 0], [0, 0, 0], [0, 0, 0], [0, 0, 0]]
    var col = 1
    var top: Int {
        let i = (col + 2) % 4
        return value[i][1]
    }

    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }

    func turn(_ d: Int) {
        switch(d) {
            case 1: // 동
                let i = (col + 2) % 4
                let temp = value[i][1]
                value[i][1] = value[col].remove(at: 0)
                value[col].append(temp)
            case 2: // 서
                let i = (col + 2) % 4
                let temp = value[i][1]
                value[i][1] = value[col].popLast()!
                value[col].insert(temp, at: 0)
            case 3: // 북
                let temp = col > 0 ? col - 1 : 3
                value[temp][0] = value[col][0]
                value[temp][2] = value[col][2]
                col = temp
            case 4: // 남
                let temp = col < 3 ? col + 1 : 0
                value[temp][0] = value[col][0]
                value[temp][2] = value[col][2]
                col = temp
            default: return
        }
    }

    func move(_ d: Int, _ board: inout [[Int]]) -> Int? {
        let (nx, ny) = (x + direction[d]!.0, y + direction[d]!.1)
        guard nx >= 0 && nx < board.count && ny >= 0 && ny < board[0].count else { return nil }
        self.x = nx
        self.y = ny
        turn(d)
        if board[x][y] == 0 {
            board[x][y] = value[col][1]
        } else {
            value[col][1] = board[x][y]
            board[x][y] = 0
        }
        return self.top
    }
}

let read = { readLine()!.components(separatedBy: " ").map { Int($0)! } }

let input: [Int] = read()
var board: [[Int]] = (1...input[0]).lazy.map{ _ in read() }.reduce(into: []){ (arrs, arr) in arrs.append(arr) }
let move: [Int] = read()

let dice = Dice(x: input[2], y: input[3])
for d in move {
    if let r = dice.move(d, &board) { print(r) }
}

