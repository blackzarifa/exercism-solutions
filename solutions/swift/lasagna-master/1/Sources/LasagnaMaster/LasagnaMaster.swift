func remainingMinutesInOven(
  elapsedMinutes: Int, expectedMinutesInOven: Int = 40
) -> Int {
  expectedMinutesInOven - elapsedMinutes
}

func preparationTimeInMinutes(layers: String...) -> Int { layers.count * 2 }

func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
  var res = (noodles: 0, sauce: 0.0)
  for layer in layers {
    if layer == "noodles" { res.noodles += 3 }
    if layer == "sauce" { res.sauce += 0.2 }
  }
  return res
}

func toOz(_ tuple: inout (noodles: Int, sauce: Double)) {
  tuple.sauce *= 33.814
}

func redWine(layers: String...) -> Bool {
  let mozzarellaCount = layers.filter({$0 == "mozzarella"}).count
  let ricottaCount = layers.filter({$0 == "ricotta"}).count
  let bechamelCount = layers.filter({$0 == "béchamel"}).count
  let sauceCount = layers.filter({$0 == "sauce"}).count
  let meatCount = layers.filter({$0 == "meat"}).count

  let whiteLayersCount = mozzarellaCount + ricottaCount + bechamelCount
  let redLayersCount = sauceCount + meatCount

  if redLayersCount >= whiteLayersCount {
    return true
  }
  return false
}