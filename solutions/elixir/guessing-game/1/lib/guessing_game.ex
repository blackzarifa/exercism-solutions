defmodule GuessingGame do
  def compare(secret_number, guess \\ :no_guess) do
    cond do
      guess === :no_guess -> "Make a guess"
      secret_number === guess -> "Correct"
      guess === secret_number - 1 || guess === secret_number + 1 ->
        "So close"
      secret_number < guess -> "Too high"
      secret_number > guess -> "Too low"
    end
  end
end
