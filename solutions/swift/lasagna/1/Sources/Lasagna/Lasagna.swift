let expectedMinutesInOven: Int = 40

func remainingMinutesInOven(elapsedMinutes m: Int) -> Int {
  expectedMinutesInOven - m
}

func preparationTimeInMinutes(layers: Int)-> Int {
  2*layers
}

func totalTimeInMinutes(layers: Int, elapsedMinutes: Int) -> Int {
  elapsedMinutes + preparationTimeInMinutes(layers: layers)
}
