class BirdCount
  def self.last_week
    [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @birds_per_day = birds_per_day
  end

  def yesterday
    @birds_per_day[-2]
  end

  def total
    sum = 0
    @birds_per_day.each do |birds|
      sum += birds
    end
    return sum
  end

  def busy_days
    num_busy_days = 0
    @birds_per_day.each do |birds|
      num_busy_days += 1 if birds >= 5
    end
    return num_busy_days
  end

  def day_without_birds?
    @birds_per_day.each do |birds|
      return true if birds == 0
    end
    return false
  end
end
