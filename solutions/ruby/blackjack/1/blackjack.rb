module Blackjack
  def self.parse_card(card)
    case card
    when "ace" then 11
    when "two" then 2
    when "three" then 3
    when "four" then 4
    when "five" then 5
    when "six" then 6
    when "seven" then 7
    when "eight" then 8
    when "nine" then 9
    when "ten", "jack", "queen", "king" then 10
    else 0
    end
  end

  def self.card_range(card1, card2)
    val = parse_card(card1) + parse_card(card2)
    case val
    when 4..11 then "low"
    when 12..16 then "mid"
    when 17..20 then "high"
    when 21 then "blackjack"
    else raise "Invalid score range"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    return "P" if card1 == "ace" and card2 == "ace"

    dealer_val = parse_card(dealer_card)
    player_range = card_range(card1, card2)
    
    case player_range
    when "blackjack" then dealer_val < 10 ? "W" : "S"
    when "high" then "S"
    when "mid" then dealer_val >= 7 ? "H" : "S"
    when "low" then "H"
    else raise "Invalid value"
    end
  end
end
