func totalBirdCount(_ birdsPerDay: [Int]) -> Int {
  var total = 0
  for birds in birdsPerDay {
    total += birds
  }
  return total
}

func birdsInWeek(_ birdsPerDay: [Int], weekNumber: Int) -> Int {
  let start = weekNumber*7 - 7
  let slice = birdsPerDay[start..<start+7]
  return totalBirdCount(Array(slice))
}

func fixBirdCountLog(_ birdsPerDay: [Int]) -> [Int] {
  var cpy = birdsPerDay
  for i in stride(from:0, to: cpy.count, by: 2) {
    cpy[i] += 1
  }
  return cpy
}
