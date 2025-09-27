func dailyRateFrom(hourlyRate: Int) -> Double {
  Double(hourlyRate)*8.0
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let monthlyRate = dailyRateFrom(hourlyRate: hourlyRate) * 22.0
  return (monthlyRate * discountPercentage(discount)).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let discountedDaily = dailyRateFrom(hourlyRate: hourlyRate) * discountPercentage(discount)
  let budgetPerDaily = budget / discountedDaily
  return budgetPerDaily.rounded(.down)
}

func discountPercentage(_ discount: Double) -> Double {
  1.0 - discount*0.01
}