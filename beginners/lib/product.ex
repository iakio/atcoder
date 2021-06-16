defmodule Product do
  def main() do
    [a, b] = IO.read(:line) |> String.split() |> Enum.map(&String.to_integer/1)
    IO.puts(solve(a, b))
  end

  @doc """
    ### Example
    iex> Product.solve(3, 4)
    "Even"

    iex> Product.solve(1, 21)
    "Odd"
  """
  def solve(a, b) do
    case rem(a * b, 2) do
      0 -> "Even"
      1 -> "Odd"
    end
  end
end
