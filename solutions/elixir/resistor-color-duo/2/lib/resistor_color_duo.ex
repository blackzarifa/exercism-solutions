defmodule ResistorColorDuo do
  @doc """
  Calculate a resistance value from two colors
  """

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
    white: 9,
  }
  
  @spec value(colors :: [atom]) :: integer
  def value(colors) do
    [head, mid | _] = colors
    n1 = @color_map[head]
    n2 = @color_map[mid]
    Integer.undigits([n1, n2])
  end
end
