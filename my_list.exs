defmodule MyList do
  def mapsum([], _), do: 0
  def mapsum([h|t],func), do: func.(h) + mapsum(t, func)

  def max(list), do: _max(list, 0)

  defp _max([], current_max), do: current_max
  defp _max([h|t], current_max) when h <= current_max, do: _max(t, current_max)
  defp _max([h|t], _), do: _max(t, h)


  def caesar([], _), do: []
  def caesar([char|t], n), do: [handle_caesar_letter(char, n) | caesar(t, n)]

  defp _handle_caesar_letter(char, offset) when (char + offset) <= ?z, do: char + offset
  defp _handle_caesar_letter(char, offset) do
    amount_over_z = rem((char + offset), ?z + 1)
    handle_caesar_letter(?a, amount_over_z)
  end
end
