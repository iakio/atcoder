defmodule CardGameForTwo do
  def main() do
    _n = IO.read(:line)
    a = IO.read(:line) |> String.split() |> Enum.map(&String.to_integer/1)
    IO.puts(solve(a))
  end

  @doc """
    ### Example
    iex> CardGameForTwo.solve([3, 1])
    2

    iex> CardGameForTwo.solve([2, 7, 4])
    5

    iex> CardGameForTwo.solve([20, 18, 2, 18])
    18

  """
  def solve(ls) do
    [a, b] = Enum.sort(ls, :desc)
      |> each_some(0, 0)
    a - b
  end

  def each_some([], a, b), do: [a, b]
  def each_some([ax], a, b), do: [a + ax, b]
  def each_some([ax, bx | tail], a, b), do: each_some(tail, a + ax, b + bx)

end
