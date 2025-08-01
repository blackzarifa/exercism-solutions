defmodule HighSchoolSweetheart do
  def first_letter(name), do: name |> String.trim() |> String.at(0)

  def initial(name), do: (name |> first_letter |> String.upcase()) <> "."

  def initials(full_name) do
    [first, last] = String.split(full_name)
    initial(first) <> " " <> initial(last)
  end

  def pair(full_name1, full_name2) do
    # ❤-------------------❤
    # |  X. X.  +  X. X.  |
    # ❤-------------------❤
    box = "❤-------------------❤\n"
    box = box <> "|  #{initials(full_name1)}  +  #{initials(full_name2)}  |\n"
    box <> "❤-------------------❤\n"
  end
end
