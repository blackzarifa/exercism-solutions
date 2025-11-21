class AssemblyLine
  CARS_PER_SPEED = 221
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    total = CARS_PER_SPEED * @speed
    if @speed < 5
        return total * 1.0
    elsif @speed < 9
        return total * 0.9
    elsif @speed < 10
        return total * 0.8
    end
    total * 0.77
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end
