defmodule BeginnersTest do
  use ExUnit.Case
  doctest Beginners
  doctest Product
  doctest ShiftOnly
  doctest Coins
  doctest SomeSomes
  doctest CardGameForTwo
  doctest KagamiMochi

  test "greets the world" do
    assert Beginners.hello() == :world
  end
end
