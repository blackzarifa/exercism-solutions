module Chess
  RANKS = 1..8
  FILES = "A".."H"

  def self.valid_square?(rank, file)
    RANKS.include?(rank) and FILES.include?(file)
  end

  def self.nickname(first_name, last_name)
    (first_name[0, 2] + last_name[last_name.size - 2..]).upcase
  end

  def self.move_message(first_name, last_name, square)
    nickname = self.nickname(first_name, last_name)
    if self.valid_square?(square[1].to_i, square[0])
      return "#{nickname} moved to #{square}"
    end
    "#{nickname} attempted to move to #{square}, but that is not a valid square"
  end
end
