for x <- 1..10, rem(x, 3) == 0 || rem(x, 5) == 0, reduce: 0 do
  acc -> acc + x
end
