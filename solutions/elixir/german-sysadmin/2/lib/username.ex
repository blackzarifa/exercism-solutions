defmodule Username do
  # ä becomes ae
  # ö becomes oe
  # ü becomes ue
  # ß becomes ss
  
  def sanitize([]), do: []
  def sanitize([h | t]) when h === ?_, do: [h | sanitize(t)]
  def sanitize([h | t]) when h in ?a..?z, do: [h | sanitize(t)]
  def sanitize([h | t]) when h === ?ä, do: ~c"ae" ++ sanitize(t)
  def sanitize([h | t]) when h === ?ö, do: ~c"oe" ++ sanitize(t)
  def sanitize([h | t]) when h === ?ü, do: ~c"ue" ++ sanitize(t)
  def sanitize([h | t]) when h === ?ß, do: ~c"ss" ++ sanitize(t)
  def sanitize([_ | t]), do: sanitize(t)

  def sanitize(username) do
    Enum.flat_map(username, fn char ->
      case char do
        c when c in ?a..?z -> [c]
        ?_ -> ~c"_"
        ?ä -> ~c"ae"
        ?ö -> ~c"oe"
        ?ü -> ~c"ue"
        ?ß -> ~c"ss"
        _ -> []
      end
    end)
  end
  
end
