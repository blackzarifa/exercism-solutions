let monthsInFiveYears : Double = 12 * 5

func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  let monthlyPayment = price / monthsInFiveYears
  
  if monthlyPayment <= monthlyBudget {
    return "Yes! I'm getting a \(vehicle)"
  }
  
  if monthlyPayment >= monthlyBudget * 1.1 {
    return "Darn! No \(vehicle) for me"
  }

  return "I'll have to be frugal if I want a \(vehicle)"
}

func licenseType(numberOfWheels wheels: Int) -> String {
  switch wheels {
  case 18:
    return "You will need a commercial trucking license for your vehicle"
  case 2, 3:
    return "You will need a motorcycle license for your vehicle"
  case 4, 6:
    return "You will need an automobile license for your vehicle"
  default:
    return "We do not issue licenses for those types of vehicles"
  }
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
  let percentage : Double
  if yearsOld < 3 {
    percentage = 0.8
  } else if yearsOld < 10 {
    percentage = 0.7
  } else {
    percentage = 0.5
  }
  return Int((Double(originalPrice) * percentage).rounded())
}
