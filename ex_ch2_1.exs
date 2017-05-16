# Implement sum/1. This function should take in a list of numbers and return the sum of the list

defmodule MySum do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)
end

IO.inspect MySum.sum([1,2,3,4,5]) # 15
