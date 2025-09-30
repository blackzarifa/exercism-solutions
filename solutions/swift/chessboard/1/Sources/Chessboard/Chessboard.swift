let ranks = 1...8
let files = "A"..."H"

func isValidSquare(rank: Int, file: String) -> Bool {
  ranks.contains(rank) && files.contains(file)
}

func getRow(_ board : [String], rank: Int) -> [String] {
  let numFiles = ranks.count
  let start = (rank-1) * numFiles
  return Array(board[start..<start+numFiles])
}
