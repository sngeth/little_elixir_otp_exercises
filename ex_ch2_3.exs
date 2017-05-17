# Transform [1,[[2],3]] to [9,4, 1] with and without the pipe operator

IO.inspect List.flatten([1,[[2],3]]) |> Enum.map(&(&1 * &1)) |> Enum.reverse

IO.inspect Enum.reverse(Enum.map(List.flatten([1,[[2],3]]), &(&1 * &1)))
