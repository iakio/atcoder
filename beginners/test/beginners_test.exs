defmodule BeginnersTest do
  use ExUnit.Case
  doctest Beginners
  doctest Product
  doctest ShiftOnly
  doctest Coins
  doctest SomeSomes
  doctest CardGameForTwo

  test "greets the world" do
    assert Beginners.hello() == :world
  end
end
