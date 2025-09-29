func getCard(at index: Int, from stack: [Int]) -> Int {
  stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
  guard index < stack.count else { return stack }
  var cards = stack
  cards[index] = newCard
  return cards
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
  var cards = stack
  cards.append(newCard)
  return cards
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
  guard stack.indices.contains(index) else { return stack }
  var cards = stack
  cards.remove(at: index)
  return cards
}

func insert(_ newCard: Int, at index: Int, from stack: [Int]) -> [Int] {
  guard index <= stack.count else { return stack }
  var cards = stack
  cards.insert(newCard, at: index)
  return cards
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  stack.count == size
}
