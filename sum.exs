defmodule Sum do
  def of(0), do: 0
  def of(n) when is_number(n), do: n + of(n-1)

  def of([]), do: 0
  def of([h|t]), do: h + of(t)
end
