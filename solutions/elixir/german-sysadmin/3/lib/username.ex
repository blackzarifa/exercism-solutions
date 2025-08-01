defmodule Username do
  # ä becomes ae
  # ö becomes oe
  # ü becomes ue
  # ß becomes ss
  
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
