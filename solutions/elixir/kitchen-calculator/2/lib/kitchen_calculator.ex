defmodule KitchenCalculator do

  def get_volume({_, volume}), do: volume

  def to_milliliter({unit, vol}) do
    cond do
      unit === :cup -> {:milliliter, vol * 240}
      unit === :fluid_ounce -> {:milliliter, vol * 30}
      unit === :teaspoon -> {:milliliter, vol * 5}
      unit === :tablespoon -> {:milliliter, vol * 15}
      true -> {:milliliter, vol}
    end
  end

  def from_milliliter(volume_pair, unit) do
    vol = get_volume(volume_pair)
    cond do
      unit === :cup -> {:cup, vol / 240}
      unit === :fluid_ounce -> {:fluid_ounce, vol / 30}
      unit === :teaspoon -> {:teaspoon, vol / 5}
      unit === :tablespoon -> {:tablespoon, vol / 15}
      true -> {:milliliter, vol}
    end
  end

  def convert(volume_pair, unit) do
    volume_pair |> to_milliliter() |> from_milliliter(unit)
  end
  
end
