defmodule KagamiMochi do
  def main() do
    n = IO.read(:line)  |> String.trim() |> String.to_integer
    a = Enum.map(1..n, fn _ -> IO.read(:line) |> String.trim() |> String.to_integer end)
    IO.puts(solve(a))
  end

  @doc """
    ### Example
    iex> KagamiMochi.solve([4, 8, 8, 6])
    3

    iex> KagamiMochi.solve([15, 15, 15])
    1

    iex> KagamiMochi.solve([50 ,30 ,50 ,100 ,50 ,80 ,30])
    4

  """
  def solve(ls) do
    Enum.uniq(ls) |> Enum.count()
  end

end
