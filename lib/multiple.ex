defmodule Multiple do
  @moduledoc """
  Documentation for `Multiple`.
  """
  def createRange(begin, final) do
    Enum.to_list(begin..final)
  end

  def verifyMultipleOf(number, multiple) do
    rem(number, multiple) == 0
  end

  def createListOfMultiples(list, filterFn) do
    Enum.filter(list, filterFn)
  end

  def sum(list) do
    Enum.reduce(list, fn n, acc -> n + acc end)
  end
end
