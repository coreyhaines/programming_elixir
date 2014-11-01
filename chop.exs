defmodule Chop do
  def guess(answer, lower..higher), do: guess(answer, lower..higher, (lower + div(higher-lower,2)))

  defp guess(answer, _.._, current_guess) when answer == current_guess do
    IO.puts "Is it #{current_guess}"
    answer
  end
  defp guess(answer, lower.._, current_guess) when answer < current_guess do
    IO.puts "Is it #{current_guess}"
    midpoint = lower + div(current_guess - lower,2)
    guess(answer, lower..current_guess, midpoint)
  end
  defp guess(answer, _..higher, current_guess) when answer > current_guess do
    IO.puts "Is it #{current_guess}"
    midpoint = current_guess + div(higher - current_guess,2)
    guess(answer, current_guess..higher, midpoint)
  end
end
