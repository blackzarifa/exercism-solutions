func timeToPrepare(drinks: [String]) -> Double {
  var time = 0.0
  for drink in drinks {
    switch drink {
    case "beer", "soda", "water":
      time += 0.5
    case "shot":
      time += 1.0
    case "mixed drink":
      time += 1.5
    case "fancy drink":
      time += 2.5
    case "frozen drink":
      time += 3.0
    default:
      time += 0.0
    }
  }
  return time
}

func makeWedges(needed: Int, limes: [String]) -> Int {
  var remaining = needed
  var cutLimes = 0
  
  for lime in limes {
    if remaining <= 0 { return cutLimes }
    switch lime {
    case "small":
      remaining -= 6
    case "medium":
      remaining -= 8
    case "large":
      remaining -= 10
    default:
      continue
    }
    cutLimes += 1
  }
  return cutLimes
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
  var ordersAfterShift = remainingOrders
  var timeLeft = Double(minutesLeft)

  for order in remainingOrders {
    if timeLeft <= 0.0 { return ordersAfterShift }
    timeLeft -= timeToPrepare(drinks: order)
    ordersAfterShift.remove(at: 0)
  }
  return ordersAfterShift
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
  beer: (first: String, last: String, total: Int)?, 
  soda: (first: String, last: String, total: Int)?
) {
  var beerFirst: String?
  var beerLast: String?
  var beerCount = 0
  
  var sodaFirst: String?
  var sodaLast: String?
  var sodaCount = 0
  
  for (drink, time) in orders {
    if drink == "beer" {
      if beerFirst == nil { beerFirst = time }
      beerLast = time
      beerCount += 1
    } else if drink == "soda" {
      if sodaFirst == nil { sodaFirst = time }
      sodaLast = time
      sodaCount += 1
    }
  }
  
  let beerResult: (first: String, last: String, total: Int)?
  if let first = beerFirst, let last = beerLast {
    beerResult = (first: first, last: last, total: beerCount)
  } else {
    beerResult = nil
  }
  
  let sodaResult: (first: String, last: String, total: Int)?
  if let first = sodaFirst, let last = sodaLast {
    sodaResult = (first: first, last: last, total: sodaCount)
  } else {
    sodaResult = nil
  }
  
  return (beer: beerResult, soda: sodaResult)
}