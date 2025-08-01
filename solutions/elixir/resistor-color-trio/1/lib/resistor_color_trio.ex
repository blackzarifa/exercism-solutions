defmodule ResistorColorTrio do
  @color_map %{
    black: 0,
    brown: 1,
    red: 2,
    orange: 3,
    yellow: 4,
    green: 5,
    blue: 6,
    violet: 7,
    grey: 8,
    white: 9
  }

  @units [{:gigaohms, 9}, {:megaohms, 6}, {:kiloohms, 3}, {:ohms, 0}]

  def label([c1, c2, c3 | _]) do
    n1 = @color_map[c1]
    n2 = @color_map[c2]
    zeros = @color_map[c3]

    raw = Integer.undigits([n1, n2]) * pow_10(zeros)
    pick_unit(raw)
  end

  defp pick_unit(value) do
    {unit, exp} = Enum.find(@units, fn {_, exp} -> 
      value >= pow_10(exp)|| exp === 0
    end)

    result = div(value, pow_10(exp))
    {result, unit}
  end

  defp pow_10(exp), do: Integer.pow(10, exp)

end
