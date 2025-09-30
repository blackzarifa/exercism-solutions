func getName(_ item: (name: String, amount: Int)) -> String {
  item.name
}

func createToy(name: String, amount: Int) -> (name: String, amount: Int) {
  (name: name, amount: amount)
}

func updateQuantity(_ items: [(name: String, amount: Int)], toy: String, amount: Int) -> [(name: String, amount: Int)] {
  var newItems = [(name: String, amount: Int)]()
  for (name, internalAmount) in items {
    newItems.append((name: name, amount: name == toy ? amount : internalAmount))
  }
  return newItems
}

func addCategory(_ items: [(name: String, amount: Int)], category: String) -> [(name: String, amount: Int, category: String)] {
  var newItems = [(name: String, amount: Int, category: String)]()
  for (name, amount) in items {
    newItems.append((name: name, amount: amount, category: category))
  }
  return newItems
}
