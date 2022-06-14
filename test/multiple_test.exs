defmodule MultipleTest do
  use ExUnit.Case
  import Multiple
  doctest Multiple

  test "shoud create a list from 1 to 10" do
    assert createRange(1, 10) == Enum.to_list(1..10)
  end

  test "shoud sum only the multiples of 3 or 5" do
    assert createRange(1, 10)
           |> createListOfMultiples(fn n ->
             verifyMultipleOf(n, 3) ||
               verifyMultipleOf(n, 5)
           end)
           |> sum() == 33
  end
end
