fb = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end

buzzit = fn n -> fb.(rem(n,3), rem(n,5), n) end

IO.puts buzzit.(10)
IO.puts buzzit.(11)
IO.puts buzzit.(12)
IO.puts buzzit.(13)
IO.puts buzzit.(14)
IO.puts buzzit.(15)
IO.puts buzzit.(16)
IO.puts buzzit.(17)
