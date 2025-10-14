typealias ChangeClosure = @Sendable (
  (String, String, String)
) -> (String, String, String)

let flip: ChangeClosure = { tuple in
  (tuple.1, tuple.0, tuple.2) 
}

let rotate: ChangeClosure = { tuple in
  (tuple.1, tuple.2, tuple.0) 
}

func makeShuffle(
  flipper: @escaping ((String, String, String)) -> (String, String, String),
  rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> ([UInt8], (String, String, String)) -> (String, String, String) {
  return { (id: [UInt8], wires: (String, String, String)) in
    var current = wires
    for bit in id.reversed() { 
      current = bit == 0 ? flipper(current) : rotator(current)
    }
    return current
  }
}
