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
    Enum.sort(ls, :desc)
      |> each_some(0)
  end

  def each_some([], some), do: some
  def each_some([ax], some), do: ax + some
  def each_some([ax, bx | tail], some), do: each_some(tail, some + ax - bx)

end
